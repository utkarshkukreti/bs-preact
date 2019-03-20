module Preact = struct
  type undefined

  let undefined : undefined = Obj.magic ()

  let useState _ _ = Obj.magic ()

  let useReducer _ _ _ = Obj.magic ()

  let component _ _ = Obj.magic ()
end

let _foo =
 fun [@preact.component "Foo"] _ ->
  let[@hook] _count, _setCount = Preact.useState () in
  ()

let useThing =
 fun [@preact.hook] _ ->
  let[@hook] count, _setCount = Preact.useState () in
  let () = Js.log "in useThing!" in
  let[@hook] value, _dispatch = Preact.useReducer () () in
  count, value

let _foo =
 fun [@preact.component "Foo"] _ ->
  let[@hook] _count, _setCount = Preact.useState () in
  let[@hook] _value, _dispatch = Preact.useReducer () () in
  let[@hook] _, _ = useThing () in
  ()

(* These should produce errors. *)

(* let _foo _ =
  let[@hook] _ = () in
  () *)

(* let _foo =
 fun [@preact.component "Foo"] _ ->
  let[@hook] _count, _setCount =
    if true then Preact.useState () else Preact.useState ()
  in
  () *)

(* let _foo =
 fun [@preact.component "Foo"] _ ->
  if true
  then (
    let[@hook] _count, _setCount = Preact.useState () in
    ())
  else () *)

(* let _foo =
 fun [@preact.component "Foo"] _ ->
  let[@hook] () = () in
  () *)

(* let _foo =
 fun [@preact.component "Foo"] _ ->
  let[@hook] _count, _setCount = Preact.useState 0 in
  let[@hook] () = () in
  () *)

(* let _foo =
 fun [@preact.component "Foo"] _ ->
  let _ =
   fun () ->
    let[@hook] () = () in
    ()
  in
  () *)
