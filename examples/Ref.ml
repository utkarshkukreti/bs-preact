module P = Preact

module Ref = struct
  let make =
   fun [@preact.component "Ref"] () ->
    let[@hook] show, setShow = P.useState true in
    let[@hook] inputRef = P.useRef None in
    let focus () =
      match P.Ref.read inputRef with
      | Some el ->
        Webapi.Dom.(
          (match Element.asHtmlElement el with
          | Some el -> HtmlElement.focus el
          | None -> ()))
      | None -> ()
    in
    P.div
      []
      [ P.button [ P.onClick (fun _ -> setShow (not show)) ] [ P.string "Toggle" ]
      ; P.button [ P.onClick (fun _ -> focus ()) ] [ P.string "Focus" ]
      ; (if show then P.input [ P.ref (P.Ref.write inputRef) ] [] else P.null)
      ]
end

let main = Ref.make ()

let () =
  match P.find "main" with
  | Some element -> P.render main element
  | None -> Js.Console.error "<main> not found!"
