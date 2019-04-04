open Jest
open Expect
module R = Preact.Router

let () =
  describe "Preact.Router" (fun () ->
      describe "Url" (fun () ->
          describe "fromString" (fun () ->
              let go string url =
                test
                  ("\"" ^ string ^ "\"")
                  (fun () -> expect (R.Url.fromString string) |> toEqual url)
              in
              go "" { R.Url.path = [] };
              go "foo" { R.Url.path = [ "foo" ] };
              go "//foo/" { R.Url.path = [ "foo" ] };
              go "//foo/bar//baz/" { R.Url.path = [ "foo"; "bar"; "baz" ] }));
      describe "Parser" (fun () ->
          describe "parse" (fun () ->
              let open R.Parser in
              let go string parser parsed =
                test
                  ("\"" ^ string ^ "\"")
                  (fun () ->
                    expect (R.Parser.parse parser (R.Url.fromString string))
                    |> toEqual parsed)
              in
              go "" (root ()) (Some ());
              go "foo" (root ()) None;
              go "foo" (s "foo" |> map ()) (Some ());
              go "foo" string (Some "foo");
              go "foo/bar" (s "foo" </> s "bar" |> map ()) (Some ());
              go "foo/bar" (s "foo" </> string) (Some "bar");
              go "foo/bar" (string </> s "bar") (Some "foo");
              go
                "foo/bar"
                (string </> string |> map (fun a b -> a, b))
                (Some ("foo", "bar"));
              go "foo/bar/baz" (s "foo" </> s "bar" |> map ()) None;
              go "foo/bar/baz" (s "foo" </> string) None;
              go "foo/bar/baz" (string </> s "bar") None;
              go "foo/bar/baz" (string </> string |> map (fun a b -> a, b)) None)))
