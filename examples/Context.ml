module P = Preact

module Theme = struct
  type t =
    | Red
    | Green
    | Blue

  let toString = function
    | Red -> "Red"
    | Green -> "Green"
    | Blue -> "Blue"
end

let theme = P.Context.make Theme.Red

module Hello = struct
  let make =
   fun [@preact.component "Hello"] () ->
    let[@hook] theme = P.useContext theme in
    P.div [ P.style "color" (Theme.toString theme) ] [ P.string (Theme.toString theme) ]
end

let main =
  P.div
    []
    [ Hello.make ()
    ; P.Context.provide theme Green (P.div [] [ Hello.make (); Hello.make () ])
    ; P.Context.provide theme Blue (Hello.make ())
    ]

let () =
  match P.find "main" with
  | Some element -> P.render main element
  | None -> Js.Console.error "<main> not found!"
