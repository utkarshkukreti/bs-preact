module P = Preact

module WindowSize = struct
  type t =
    { width : float
    ; height : float
    }

  external innerWidth : float = "" [@@bs.val] [@@bs.scope "window"]

  external innerHeight : float = "" [@@bs.val] [@@bs.scope "window"]

  external addEventListener : string -> (unit -> unit) -> unit = ""
    [@@bs.val] [@@bs.scope "window"]

  external removeEventListener : string -> (unit -> unit) -> unit = ""
    [@@bs.val] [@@bs.scope "window"]

  let use =
   fun [@preact.hook] () ->
    let[@hook] size, setSize = P.useState { width = innerWidth; height = innerHeight } in
    let[@hook] () =
      P.useEffect
        (fun () ->
          let handler () = setSize { width = innerWidth; height = innerHeight } in
          let () = addEventListener "resize" handler in
          Some (fun () -> removeEventListener "resize" handler))
        None
    in
    size
end

module Demo = struct
  let make =
   fun [@preact.component "Demo"] () ->
    let[@hook] windowSize = WindowSize.use () in
    P.div [] [ P.float windowSize.width; P.string " "; P.float windowSize.height ]
end

let () =
  match P.find "main" with
  | Some element -> P.render (Demo.make ()) element
  | None -> Js.Console.error "<main> not found!"
