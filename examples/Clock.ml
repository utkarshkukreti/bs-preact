module P = Preact

module Clock = struct
  let make =
   fun [@preact.component "Clock"] () ->
    let[@hook] isRunning, setIsRunning = P.useState true in
    let[@hook] now, setNow = P.useState (Js.Date.make ()) in
    let[@hook] () = AnimationFrame_.use (isRunning, fun _ -> setNow (Js.Date.make ())) in
    let f n = P.string ((if n < 10.0 then "0" else "") ^ Js.Float.toString n) in
    P.h2
      [ P.style "text-align" "center" ]
      [ f (Js.Date.getHours now)
      ; P.string ":"
      ; f (Js.Date.getMinutes now)
      ; P.string ":"
      ; f (Js.Date.getSeconds now)
      ; P.div
          []
          [ P.button
              [ P.onClick (fun _ -> setIsRunning (not isRunning)) ]
              [ P.string (if isRunning then "Stop" else "Start") ]
          ]
      ]
end

let () =
  match P.find "main" with
  | Some element -> P.render (Clock.make ()) element
  | None -> Js.Console.error "<main> not found!"
