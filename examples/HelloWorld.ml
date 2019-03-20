let main = Preact.h1 [] [ Preact.string "Hello, world!" ]

let () =
  match Preact.find "main" with
  | Some element -> Preact.render main element
  | None -> Js.Console.error "<main> not found!"
