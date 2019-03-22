# bs-preact

> An opinionated Preact v10 binding for (OCaml | ReasonML) + BuckleScript with
> compile time enforcement of the ["Rules of Hooks"](https://reactjs.org/docs/hooks-rules.html).

## Overview

The "Hello, World!" of bs-preact looks like this:

```ocaml
let main = Preact.h1 [] [ Preact.string "Hello, world!" ]

let () =
  match Preact.find "main" with
  | Some element -> Preact.render main element
  | None -> Js.Console.error "<main> not found!"
```

We first define `main` to be an `h1` element with the text `Hello, World!`.

We then select the first `<main>` element in the page and render the value
`main` into it.

---

Components are defined using a syntax extension `[@preact.component
"DisplayNameOfComponent"]` applied to `fun`s of one argument:

```ocaml
module P = Preact

module Counter = struct
  let make =
   fun [@preact.component "Counter"] initial ->
    P.div [] [P.int initial]
end
```

Components are initialized using simple function calls:

```ocaml
let main = Counter.make 0
```

Hooks are invoked using a `[@hook]` annotation on `let` expressions:

```ocaml
let make =
 fun [@preact.component "Counter"] initial ->
  let[@hook] count, setCount = P.useState initial in
  P.div [] [P.int initial]
```

Here's a full example of a Counter with two buttons, one to increment and one to
decrement the value ([full source](examples/Counter.ml)):

```ocaml
module Counter = struct
  let make =
   fun [@preact.component "Counter"] initial ->
    let[@hook] count, setCount = P.useState initial in
    P.div
      []
      [ P.button [ P.onClick (fun _ -> setCount (count - 1)) ] [ P.string "-" ]
      ; P.string " "
      ; P.int count
      ; P.string " "
      ; P.button [ P.onClick (fun _ -> setCount (count + 1)) ] [ P.string "+" ]
      ]
end
```

## Quick Start

    $ git clone https://github.com/utkarshkukreti/bs-preact-starter
    $ cd bs-preact-starter
    $ yarn install
    $ yarn build

This will build `/src/Main.ml` into the `/dist/` directory which you can run by
opening `/index.html` in your browser.

Feel free to copy code from [examples](/examples) into `src/Main.ml` and
recompile.

## How are the Rules of Hooks enforced at compile time?

bs-preact uses an OCaml syntax extension to enforce them.

This requires annotating components with `fun [@preact.component]`,
custom hooks with `fun [@preact.hook]`, and every use of a hook with
`let[@hook]`.

For `[@preact.hook]`, the syntax extension appends a dummy argument to the
function, the value of which must be of type `Preact.undefined` (represented as
plain `undefined` in JS).

For both `[@preact.hook]` and `[@preact.component]`, the syntax extension
traverses the top level `let` expressions and rewrites `let[@hook]`
expressions, appending the `undefined` value to the function call on the right.

If you call a hook without `let[@hook]`, you will get a type check error due to
a missing argument.

After all this is done, the syntax extension traverses the whole program and
checks whether any of these annotations were not processed and throws an error
if it finds any because it means the annotation was incorrectly used.

Here's a short snippet of a custom hook that wraps `useReducer` and dispatches
any action twice (full example [here](examples/HelloCustomHooks.ml)):

```ocaml
let useDoubleReducer =
 fun [@preact.hook] (reducer, initialValue) ->
  let[@hook] state, dispatch = P.useReducer reducer initialValue in
  let dispatchTwice action =
    let () = dispatch action in
    dispatch action
  in
  state, dispatchTwice

let make =
 fun [@preact.component "HelloCustomHooks"] () ->
  let reducer state action = state + action in
  let[@hook] state, dispatch = useDoubleReducer (reducer, 0) in
  P.button [ P.onClick (fun _ -> dispatch 2) ] [ P.int state ]
```

For more examples, check out the files under [/examples](examples).
A live demo of all the examples is available
[here](https://bs-preact.netlify.com).

## License

MIT
