module P = Preact

module Counter = struct
  let make =
   fun [@preact.component "Counter"] initial ->
    let[@hook] count, setCount = P.useState initial in
    P.button [ P.onClick (fun _ -> setCount (count + 1)) ] [ P.int count ]
end

module Toggle = struct
  let make =
   fun [@preact.component "Toggle"] f ->
    let[@hook] show, setShow = P.useState true in
    P.div
      []
      [ P.button [ P.onClick (fun _ -> setShow (not show)) ] [ P.string "Toggle" ]
      ; P.string " "
      ; (if show then f () else P.null)
      ]
end

let main =
  P.div
    []
    [ Toggle.make (fun () -> Counter.make (-3))
    ; Toggle.make (fun () -> Counter.make 0)
    ; Toggle.make (fun () -> Counter.make 3)
    ]

let () =
  match P.find "main" with
  | Some element -> P.render main element
  | None -> Js.Console.error "<main> not found!"
