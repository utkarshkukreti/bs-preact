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
