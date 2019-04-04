type mode =
  | History
  | Hash

module Url = struct
  type t = { path : string list }

  let fromString string =
    let path =
      string
      |> Js.String.split "/"
      |. Belt.Array.keep (fun x -> x <> "")
      |. Belt.List.fromArray
    in
    let path =
      match path with
      | "#" :: rest -> rest
      | _ -> path
    in
    { path }

  let toString mode url =
    (match mode with
    | Hash -> "#"
    | History -> "")
    ^ "/"
    ^ Js.Array.joinWith "/" (Belt.List.toArray url.path)

  let use mode (_ : Preact_Core.undefined) =
    let get () =
      Webapi.Dom.(
        match mode with
        | History -> location |> Location.pathname
        | Hash -> location |> Location.hash |> Js.String.sliceToEnd ~from:1)
      |> fromString
    in
    let url, setUrl = Preact_Core.useState (get ()) Preact_Core.undefined in
    let () =
      Preact_Core.useEffect
        (fun () ->
          let f _ =
            let url' = get () in
            if url = url' then () else setUrl url'
          in
          let () =
            Webapi.Dom.window |> Webapi.Dom.Window.addEventListener "popstate" f
          in
          Some
            (fun () ->
              Webapi.Dom.window |> Webapi.Dom.Window.removeEventListener "popstate" f))
        None
        Preact_Core.undefined
    in
    url

  let dispatch () =
    Webapi.Dom.window
    |> Webapi.Dom.Window.dispatchEvent (Webapi.Dom.Event.make "popstate")
    |> ignore

  let push mode t =
    let () =
      Webapi.Dom.(history |> History.pushState (Obj.magic ()) "" (t |> toString mode))
    in
    dispatch ()

  let replace mode t =
    let () =
      Webapi.Dom.(history |> History.replaceState (Obj.magic ()) "" (t |> toString mode))
    in
    dispatch ()
end

module Parser = struct
  type 'a state =
    { url : Url.t
    ; value : 'a
    }

  type ('a, 'b) t = Parser of ('a state -> 'b state list)

  let root value = Parser (fun state -> [ { state with value } ])

  let string =
    Parser
      (fun state ->
        match state.url.path with
        | first :: rest -> [ { url = { path = rest }; value = state.value first } ]
        | [] -> [])

  let int =
    Parser
      (fun state ->
        match state.url.path with
        | first :: rest ->
          (try
             [ { url = { path = rest }; value = state.value (int_of_string first) } ]
           with
          | _ -> [])
        | _ -> [])

  let s string =
    Parser
      (fun state ->
        match state.url.path with
        | first :: rest when first == string -> [ { state with url = { path = rest } } ]
        | _ -> [])

  let ( </> ) (Parser a) (Parser b) =
    Parser (fun state -> Belt.List.map (a state) b |. Belt.List.flatten)

  let oneOf parsers =
    Parser
      (fun state ->
        parsers |. Belt.List.map (fun (Parser p) -> p state) |. Belt.List.flatten)

  let map value (Parser p) =
    Parser
      (fun state ->
        p { state with value }
        |. Belt.List.map (fun state' -> { state' with value = state.value state'.value })
        )

  let parse (Parser p) url =
    let state = { url; value = (fun x -> x) } in
    let rec get = function
      | { url = { path = [] }; value } :: _ -> Some value
      | _ :: rest -> get rest
      | _ -> None
    in
    get (p state)
end

module Builder = struct
  let root = Url.{ path = [] }

  let ( </> ) url segment = Url.{ path = url.path @ [ segment ] }

  let int = Js.Int.toString
end

module type Spec = sig
  type t

  val mode : mode

  val build : t -> Url.t
end

module Make (S : Spec) = struct
  let build = S.build

  let link t props children =
    Preact_Html.a
      (Preact_Html.href (t |> build |> Url.toString S.mode) :: props)
      children
end
