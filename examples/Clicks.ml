module P = Preact

module Clicks = struct
  type action = Clicked of int * int

  let reducer state = function
    | Clicked (x, y) -> (x, y) :: state

  let make =
   fun [@preact.component "Clicks"] () ->
    let[@hook] state, dispatch = P.useReducer reducer [] in
    P.div
      [ P.style "width" "calc(100vw - 2rem)"
      ; P.style "height" "calc(100vh - 7rem)"
      ; P.style "padding" "1rem"
      ; P.style "background" "#ffc"
      ; P.style "overflow" "scroll"
      ; P.onClick (fun event ->
            dispatch P.Event.Mouse.(Clicked (clientX event, clientY event)))
      ]
      [ P.h1 [] [ P.string "Click Anywhere!" ]
      ; P.div
          []
          [ P.ul
              []
              (state |. Belt.List.map (fun (x, y) -> P.li [] [ P.string {j|$x * $y|j} ]))
          ]
      ]
end

let main = P.div [] [ Clicks.make () ]

let () =
  match P.find "main" with
  | Some element -> P.render main element
  | None -> Js.Console.error "<main> not found!"
