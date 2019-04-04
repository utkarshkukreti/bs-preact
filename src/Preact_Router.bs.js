// Generated by BUCKLESCRIPT VERSION 4.0.18, PLEASE EDIT WITH CARE

import * as Curry from "bs-platform/lib/es6/curry.js";
import * as Belt_List from "bs-platform/lib/es6/belt_List.js";
import * as Belt_Array from "bs-platform/lib/es6/belt_Array.js";
import * as Caml_option from "bs-platform/lib/es6/caml_option.js";

function fromString(string) {
  var path = Belt_List.fromArray(Belt_Array.keep(string.split("/"), (function (x) {
              return x !== "";
            })));
  return /* record */[/* path */path];
}

var Url = /* module */[/* fromString */fromString];

function root(value) {
  return /* Parser */[(function (state) {
              return /* :: */[
                      /* record */[
                        /* url */state[/* url */0],
                        /* value */value
                      ],
                      /* [] */0
                    ];
            })];
}

var string = /* Parser */[(function (state) {
      var match = state[/* url */0][/* path */0];
      if (match) {
        return /* :: */[
                /* record */[
                  /* url : record */[/* path */match[1]],
                  /* value */Curry._1(state[/* value */1], match[0])
                ],
                /* [] */0
              ];
      } else {
        return /* [] */0;
      }
    })];

function s(string) {
  return /* Parser */[(function (state) {
              var match = state[/* url */0][/* path */0];
              if (match && match[0] === string) {
                return /* :: */[
                        /* record */[
                          /* url : record */[/* path */match[1]],
                          /* value */state[/* value */1]
                        ],
                        /* [] */0
                      ];
              } else {
                return /* [] */0;
              }
            })];
}

function $less$slash$great(param, param$1) {
  var b = param$1[0];
  var a = param[0];
  return /* Parser */[(function (state) {
              return Belt_List.flatten(Belt_List.map(Curry._1(a, state), b));
            })];
}

function map(value, param) {
  var p = param[0];
  return /* Parser */[(function (state) {
              return Belt_List.map(Curry._1(p, /* record */[
                              /* url */state[/* url */0],
                              /* value */value
                            ]), (function (state$prime) {
                            return /* record */[
                                    /* url */state$prime[/* url */0],
                                    /* value */Curry._1(state[/* value */1], state$prime[/* value */1])
                                  ];
                          }));
            })];
}

function parse(param, url) {
  var state_001 = function (x) {
    return x;
  };
  var state = /* record */[
    /* url */url,
    state_001
  ];
  var _param = Curry._1(param[0], state);
  while(true) {
    var param$1 = _param;
    if (param$1) {
      var match = param$1[0];
      if (match[/* url */0][/* path */0]) {
        _param = param$1[1];
        continue ;
      } else {
        return Caml_option.some(match[/* value */1]);
      }
    } else {
      return undefined;
    }
  };
}

var Parser = /* module */[
  /* root */root,
  /* string */string,
  /* s */s,
  /* </> */$less$slash$great,
  /* map */map,
  /* parse */parse
];

export {
  Url ,
  Parser ,
  
}
/* No side effect */
