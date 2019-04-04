module P = Preact

module RouterRaw = struct
  let make =
   fun [@preact.component "RouterRaw"] () ->
    let[@hook] url = P.Router.Url.use () in
    let push string _ =
      P.Router.Url.push P.Router.Hash (P.Router.Url.fromString string)
    in
    let replace string _ =
      P.Router.Url.replace P.Router.Hash (P.Router.Url.fromString string)
    in
    P.div
      [ P.style "text-align" "center" ]
      [ P.button [ P.onClick (push "/foo") ] [ P.string "PUSH /foo" ]
      ; P.button [ P.onClick (push "/bar") ] [ P.string "PUSH /bar" ]
      ; P.button [ P.onClick (replace "/foo") ] [ P.string "REPLACE /foo" ]
      ; P.button [ P.onClick (replace "/bar") ] [ P.string "REPLACE /bar" ]
      ; P.h3 [] [ P.string (P.Router.Url.toString P.Router.Hash url) ]
      ]
end

let main = RouterRaw.make ()

let () =
  match P.find "main" with
  | Some element -> P.render main element
  | None -> Js.Console.error "<main> not found!"
