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
              go "//foo/bar//baz/" { R.Url.path = [ "foo"; "bar"; "baz" ] })))
