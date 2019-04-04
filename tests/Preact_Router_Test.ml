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
              let t2 a b = a, b in
              let t3 a b c = a, b, c in
              go "" (root ()) (Some ());
              go "foo" (root ()) None;
              go "foo" (s "foo" |> map ()) (Some ());
              go "foo" string (Some "foo");
              let a = s "foo" </> s "bar" </> s "123" |> map () in
              let b = s "foo" </> string </> string |> map t2 in
              let c = s "foo" </> string </> int |> map t2 in
              let d = string </> s "bar" </> string |> map t2 in
              let e = string </> s "bar" </> int |> map t2 in
              let f = string </> string </> int |> map t3 in
              go "foo/bar/123" a (Some ());
              go "foo/bar/123" b (Some ("bar", "123"));
              go "foo/bar/123" c (Some ("bar", 123));
              go "foo/bar/123" d (Some ("foo", "123"));
              go "foo/bar/123" e (Some ("foo", 123));
              go "foo/bar/123" f (Some ("foo", "bar", 123));
              go "foo/bar/baz" a None;
              go "foo/bar/baz" b (Some ("bar", "baz"));
              go "foo/bar/baz" c None;
              go "foo/bar/baz" d (Some ("foo", "baz"));
              go "foo/bar/baz" e None;
              go "foo/bar/baz" f None)))
