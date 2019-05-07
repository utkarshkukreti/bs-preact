(* A type for any value *)
type any

external any : 'a -> any = "%identity"

(* A type for JS's `undefined` *)

type undefined

external undefined : undefined = "#undefined"

(* A DOM Element *)
type element

(* A Preact Virtual Node *)
type vnode

(* A component of 'props is simply a function from 'props to vnode *)
type 'props component = 'props -> vnode

module Internal = struct
  external createElement : string -> 'a Js.t -> vnode array -> vnode = ""
    [@@bs.module "preact"]

  external createComponentElement
    :  'a Js.t component
    -> 'a Js.t
    -> vnode
    = "createElement"
    [@@bs.module "preact"]

  external fragment : vnode array -> vnode = "%identity"

  external setDisplayName : 'a component -> string -> unit = "displayName" [@@bs.set]
end

(* Functions to create `any array option` from given values. *)
(* Values of this type are accepted by several functions below. *)

let _0 = Some [||]

let _1 a = Some [| any a |]

let _2 a b = Some [| any a; any b |]

let _3 a b c = Some [| any a; any b; any c |]

let _4 a b c d = Some [| any a; any b; any c; any d |]

let _5 a b c d e = Some [| any a; any b; any c; any d; any e |]

let _6 a b c d e f = Some [| any a; any b; any c; any d; any e; any f |]

let _7 a b c d e f g = Some [| any a; any b; any c; any d; any e; any f; any g |]

(* Context *)
module Context = struct
  type 'a t

  external make : 'a -> 'a t = "createContext" [@@bs.module "preact"]

  let provide (context : 'a t) (value : 'a) vnode =
    Internal.createElement (Obj.magic context)##_Provider [%bs.obj { value }] [| vnode |]
end

(* Ref *)
module Ref = struct
  type 'a t

  external read : 'a t -> 'a = "current" [@@bs.get]

  external write : 'a t -> 'a -> unit = "current" [@@bs.set]
end

(* Hooks *)

(* State *)
external useStateLazy
  :  (unit -> 'a)
  -> undefined
  -> 'a * (('a -> 'a) -> unit)
  = "useState"
  [@@bs.module "preact/hooks"]

let useState state undefined =
  let state, modifyState = useStateLazy (fun () -> state) undefined in
  state, fun state -> modifyState (fun _ -> state)

(* Reducer *)
external useReducer
  :  ('state -> 'action -> 'state)
  -> 'state
  -> undefined
  -> 'state * ('action -> unit)
  = ""
  [@@bs.module "preact/hooks"]

external useReducerLazy
  :  ('state -> 'action -> 'state)
  -> 'a
  -> ('a -> 'state)
  -> undefined
  -> 'state * ('action -> unit)
  = ""
  [@@bs.module "preact/hooks"]

(* Effect *)
external useEffect
  :  (unit -> (unit -> unit) option)
  -> any array option
  -> undefined
  -> unit
  = "useEffect"
  [@@bs.module "preact/hooks"]

(* Layout Effect *)
external useLayoutEffect
  :  (unit -> (unit -> unit) option)
  -> any array option
  -> undefined
  -> unit
  = "useLayoutEffect"
  [@@bs.module "preact/hooks"]

(* Callback *)
type ('a, 'b) callback = 'a -> 'b

external useCallback
  :  ('a, 'b) callback
  -> any array option
  -> undefined
  -> ('a, 'b) callback
  = ""
  [@@bs.module "preact/hooks"]

(* Memo *)
external useMemo : (unit -> 'a) -> any array option -> undefined -> 'a = ""
  [@@bs.module "preact/hooks"]

(* Context *)
external useContext : 'a Context.t -> undefined -> 'a = "" [@@bs.module "preact/hooks"]

(* Ref *)
external useRef : 'a -> undefined -> 'a Ref.t = "" [@@bs.module "preact/hooks"]

(* Prop *)
type prop =
  | Property of string * any
  | Style of string * string
  | Class of string

(* Prop Constructors *)
let property name value = Property (name, any value)

let on name (value : Preact_Event.Event.t -> unit) = Property ("on" ^ name, any value)

let style name value = Style (name, value)

let class' name = Class name

let data name value = Property ("data-" ^ name, any value)

let aria name value = Property ("aria-" ^ name, any value)

(* Create Empty Node *)
external null : vnode = "#null"

(* Create Element Node *)
let element name props children =
  let props' = Js.Dict.empty () in
  let style = Js.Dict.empty () in
  let hasStyle = ref false in
  let class' = ref "" in
  let () =
    Belt.List.forEach props (function
        | Property (name, value) -> Js.Dict.set props' name value
        | Style (name, value) ->
          let () = hasStyle := true in
          Js.Dict.set style name value
        | Class name -> class' := if !class' = "" then name else !class' ^ " " ^ name)
  in
  let () = if !hasStyle then Js.Dict.set props' "style" (any style) else () in
  let () = if !class' = "" then () else Js.Dict.set props' "class" (any !class') in
  let children = Belt.List.toArray children in
  Internal.createElement name (Obj.magic props') children

(* Create Text Node *)
external string : string -> vnode = "%identity"

external int : int -> vnode = "%identity"

external float : float -> vnode = "%identity"

(* Create Fragment *)
let fragment list = Internal.fragment (Belt.List.toArray list)

(* Create Component *)
let component name fn =
  let fn x = fn x##___ in
  let () = Internal.setDisplayName fn name in
  fun props -> Internal.createComponentElement fn [%bs.obj { ___ = props }]

(* Render *)
external render : vnode -> element -> unit = "" [@@bs.module "preact"]

(* Utility *)
external find : string -> element option = "querySelector"
  [@@bs.val] [@@bs.scope "document"] [@@bs.return nullable]
