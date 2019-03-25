module P = Preact

let useDoubleReducer =
 fun [@preact.hook] (reducer, initialValue) ->
  let[@hook] state, dispatch = P.useReducer reducer initialValue in
  let dispatchTwice action =
    let () = dispatch action in
    dispatch action
  in
  state, dispatchTwice

let make =
 fun [@preact.component "CustomHooks"] () ->
  let reducer state action = state + action in
  let[@hook] state, dispatch = useDoubleReducer (reducer, 0) in
  P.button [ P.onClick (fun _ -> dispatch 1) ] [ P.int state ]

let main = make ()

let () =
  match P.find "main" with
  | Some element -> P.render main element
  | None -> Js.Console.error "<main> not found!"
