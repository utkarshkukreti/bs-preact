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

  let s string =
    Parser
      (fun state ->
        match state.url.path with
        | first :: rest when first == string -> [ { state with url = { path = rest } } ]
        | _ -> [])

  let ( </> ) (Parser a) (Parser b) =
    Parser (fun state -> Belt.List.map (a state) b |. Belt.List.flatten)

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
