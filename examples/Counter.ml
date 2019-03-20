module P = Preact

module Counter = struct
  let make =
   fun [@preact.component "Counter"] initial ->
    let[@hook] count, setCount = P.useState initial in
    P.div
      []
      [ P.button [ P.onClick (fun _ -> setCount (count - 1)) ] [ P.string "-" ]
      ; P.string " "
      ; P.int count
      ; P.string " "
      ; P.button [ P.onClick (fun _ -> setCount (count + 1)) ] [ P.string "+" ]
      ]
end

let main = P.div [] [ Counter.make (-3); Counter.make 0; Counter.make 3 ]

let () =
  match P.find "main" with
  | Some element -> P.render main element
  | None -> Js.Console.error "<main> not found!"
