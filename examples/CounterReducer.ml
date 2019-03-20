module P = Preact

module Counter = struct
  type action =
    | Increment
    | Decrement

  let reducer state = function
    | Increment -> state + 1
    | Decrement -> state - 1

  let make =
   fun [@preact.component "Counter"] initial ->
    let[@hook] count, dispatch = P.useReducer reducer initial in
    P.div
      []
      [ P.button [ P.onClick (fun _ -> dispatch Decrement) ] [ P.string "-" ]
      ; P.string " "
      ; P.int count
      ; P.string " "
      ; P.button [ P.onClick (fun _ -> dispatch Increment) ] [ P.string "+" ]
      ]
end

let main = P.div [] [ Counter.make (-3); Counter.make 0; Counter.make 3 ]

let () =
  match P.find "main" with
  | Some element -> P.render main element
  | None -> Js.Console.error "<main> not found!"
