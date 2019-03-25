module P = Preact;

let main = P.h1([P.id("hello")], [P.string("Hello, world!")]);

switch (P.find("main")) {
| Some(element) => P.render(main, element)
| None => Js.Console.error("<main> not found!")
};
