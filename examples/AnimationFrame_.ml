module P = Preact

let use =
 fun [@preact.hook] (enabled, func) ->
  let[@hook] () =
    P.useEffect
      (fun () ->
        let id = ref None in
        let rec loop t =
          let () = func t in
          let () = id := Some (Webapi.requestCancellableAnimationFrame loop) in
          ()
        in
        let () =
          if enabled
          then id := Some (Webapi.requestCancellableAnimationFrame loop)
          else ()
        in
        Some
          (fun () ->
            match !id with
            | Some id -> Webapi.cancelAnimationFrame id
            | None -> ()))
      (P._1 enabled)
  in
  ()
