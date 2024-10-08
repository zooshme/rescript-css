// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Length$Css from "./Length.res.mjs";

function all(value) {
  return {
          padding: Length$Css.toString(value)
        };
}

function each(top, right, bottom, left) {
  return {
          paddingTop: Length$Css.toString(top),
          paddingRight: Length$Css.toString(right),
          paddingBottom: Length$Css.toString(bottom),
          paddingLeft: Length$Css.toString(left)
        };
}

function xy(x, y) {
  return {
          paddingTop: Length$Css.toString(y),
          paddingRight: Length$Css.toString(x),
          paddingBottom: Length$Css.toString(y),
          paddingLeft: Length$Css.toString(x)
        };
}

function top(value) {
  return {
          paddingTop: Length$Css.toString(value)
        };
}

function bottom(value) {
  return {
          paddingBottom: Length$Css.toString(value)
        };
}

function left(value) {
  return {
          paddingLeft: Length$Css.toString(value)
        };
}

function right(value) {
  return {
          paddingRight: Length$Css.toString(value)
        };
}

var Length;

export {
  Length ,
  all ,
  each ,
  xy ,
  top ,
  bottom ,
  left ,
  right ,
}
/* No side effect */
