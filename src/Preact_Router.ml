module Url = struct
  type t = { path : string list }

  let fromString string =
    let path =
      string
      |> Js.String.split "/"
      |. Belt.Array.keep (fun x -> x <> "")
      |. Belt.List.fromArray
    in
    { path }

  let toString url = "/" ^ Js.Array.joinWith "/" (Belt.List.toArray url.path)
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
