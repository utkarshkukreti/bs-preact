module P = Preact;

let useDoubleReducer =
  [@preact.hook]
  (
    ((reducer, initialValue)) => {
      let [@hook] (state, dispatch) = P.useReducer(reducer, initialValue);
      let dispatchTwice = action => {
        dispatch(action);
        dispatch(action);
      };
      (state, dispatchTwice);
    }
  );

let make =
  [@preact.component "CustomHooks"]
  (
    () => {
      let reducer = (state, action) => state + action;
      let [@hook] (state, dispatch) = useDoubleReducer((reducer, 0));
      P.button([P.onClick(_ => dispatch(1))], [P.int(state)]);
    }
  );

let main = make();
switch (P.find("main")) {
| Some(element) => P.render(main, element)
| None => Js.Console.error("<main> not found!")
};
