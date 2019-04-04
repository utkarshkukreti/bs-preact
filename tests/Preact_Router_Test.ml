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
              let a = s "foo" </> s "bar" |> map () in
              let b = s "foo" </> string in
              let c = string </> s "bar" in
              let d = string </> string |> map (fun a b -> a, b) in
              go "foo/bar" a (Some ());
              go "foo/bar" b (Some "bar");
              go "foo/bar" c (Some "foo");
              go "foo/bar" d (Some ("foo", "bar"));
              go "foo/bar/baz" a None;
              go "foo/bar/baz" b None;
              go "foo/bar/baz" c None;
              go "foo/bar/baz" d None)))
