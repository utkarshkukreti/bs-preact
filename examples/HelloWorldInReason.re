let main = Preact.h1([], [Preact.string("Hello, world!")]);

switch (Preact.find("main")) {
| Some(element) => Preact.render(main, element)
| None => Js.Console.error("<main> not found!")
};
