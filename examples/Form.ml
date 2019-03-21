module P = Preact

module Form = struct
  let make =
   fun [@preact.component "Form"] () ->
    let[@hook] name, setName = P.useState "" in
    let[@hook] agreeToTerms, setAgreeToTerms = P.useState false in
    let isValid = name <> "" && agreeToTerms in
    P.div
      []
      [ P.div
          []
          [ P.span [] [ P.string "Name: " ]
          ; P.input [ P.value name; P.onInputValue setName ] []
          ]
      ; P.div
          []
          [ P.span [] [ P.string "Agree To Terms?: " ]
          ; P.input
              [ P.type' "checkbox"; P.checked agreeToTerms; P.onCheck setAgreeToTerms ]
              []
          ]
      ; P.button [ P.disabled (not isValid) ] [ P.string "Submit" ]
      ; P.pre
          []
          [ P.string
              ([%bs.obj { name; agreeToTerms }]
              |. Js.Json.stringifyAny
              |. Belt.Option.getWithDefault "")
          ]
      ]
end

let main = Form.make ()

let () =
  match P.find "main" with
  | Some element -> P.render main element
  | None -> Js.Console.error "<main> not found!"
