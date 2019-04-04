module P = Preact

module Router = struct
  type t =
    | Home
    | Posts
    | Post of int

  let toString = function
    | Home -> "Home"
    | Posts -> "Posts"
    | Post id -> "(Post " ^ Js.Int.toString id ^ ")"

  include P.Router.Make (struct
    type nonrec t = t

    let mode = P.Router.Hash

    let parse =
      P.Router.Parser.(
        parse
          (oneOf
             [ root Home
             ; s "posts" |> map Posts
             ; s "posts" </> int |> map (fun id -> Post id)
             ]))

    let build =
      P.Router.Builder.(
        function
        | Home -> root
        | Posts -> root </> "posts"
        | Post id -> root </> "posts" </> int id)
  end)
end

module Router_ = struct
  let make =
   fun [@preact.component "Router"] () ->
    let[@hook] route = Router.use () in
    let push t _ = Router.push t in
    let replace t _ = Router.replace t in
    P.div
      [ P.style "text-align" "center" ]
      [ P.button [ P.onClick (push Router.Home) ] [ P.string "PUSH Home" ]
      ; P.button [ P.onClick (push Router.Posts) ] [ P.string "PUSH Posts" ]
      ; P.button [ P.onClick (push (Router.Post 123)) ] [ P.string "PUSH Post 123" ]
      ; P.button [ P.onClick (push (Router.Post 456)) ] [ P.string "PUSH Post 456" ]
      ; P.br [] []
      ; P.button [ P.onClick (replace Router.Home) ] [ P.string "REPLACE Home" ]
      ; P.button [ P.onClick (replace Router.Posts) ] [ P.string "REPLACE Posts" ]
      ; P.button [ P.onClick (replace (Router.Post 123)) ] [ P.string "REPLACE Post 123" ]
      ; P.button [ P.onClick (replace (Router.Post 456)) ] [ P.string "REPLACE Post 456" ]
      ; P.br [] []
      ; Router.link Router.Home [] [ P.string "LINK Home" ]
      ; P.string " "
      ; Router.link Router.Posts [] [ P.string "LINK Posts" ]
      ; P.string " "
      ; Router.link (Router.Post 123) [] [ P.string "LINK Post 123" ]
      ; P.string " "
      ; Router.link (Router.Post 456) [] [ P.string "LINK Post 456" ]
      ; P.h3
          []
          [ P.string
              (match route with
              | Some route -> "Some " ^ Router.toString route
              | None -> "None")
          ]
      ]
end

let main = Router_.make ()

let () =
  match P.find "main" with
  | Some element -> P.render main element
  | None -> Js.Console.error "<main> not found!"
