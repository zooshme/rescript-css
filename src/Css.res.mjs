// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Text$Css from "./Text.res.mjs";
import * as Length$Css from "./Length.res.mjs";
import * as Margin$Css from "./Margin.res.mjs";
import * as Core__Array from "@rescript/core/src/Core__Array.res.mjs";
import * as Display$Css from "./Display.res.mjs";
import * as Padding$Css from "./Padding.res.mjs";

var empty = {};

function merge(styles) {
  return Core__Array.reduce(styles, empty, (function (acc, style) {
                return Object.assign({}, acc, style);
              }));
}

var borderBox = {
  boxSizing: "border-box"
};

var flex = {
  display: "flex",
  alignItems: "center",
  justifyContent: "space-between"
};

function width(value) {
  return {
          width: Length$Css.toString(value)
        };
}

var widthAuto = {
  width: "auto"
};

var fullWidth = merge([
      {
        width: "100%"
      },
      borderBox
    ]);

function minWidth(value) {
  return {
          minWidth: Length$Css.toString(value)
        };
}

function maxWidth(value) {
  return {
          maxWidth: Length$Css.toString(value)
        };
}

function height(value) {
  return {
          height: Length$Css.toString(value)
        };
}

var heightAuto = {
  height: "auto"
};

var fullHeight = merge([
      {
        height: "100%"
      },
      borderBox
    ]);

function maxHeight(value) {
  return {
          maxHeight: Length$Css.toString(value)
        };
}

function minHeight(value) {
  return {
          minHeight: Length$Css.toString(value)
        };
}

function gap(value) {
  return {
          gap: Length$Css.toString(value)
        };
}

var page = merge([
      Padding$Css.xy(Length$Css.md, Length$Css.none),
      Display$Css.css("block")
    ]);

var container = merge([
      Padding$Css.xy(Length$Css.md, Length$Css.none),
      Display$Css.css("block"),
      maxWidth(Length$Css.container),
      Margin$Css.xy("Auto", Length$Css.none)
    ]);

var logo = merge([
      Text$Css.Font.css("heading"),
      Text$Css.Size.css("sm"),
      Text$Css.Weight.css("bold")
    ]);

var navLink = merge([
      Text$Css.Font.css("body"),
      Text$Css.Size.css("sm"),
      Text$Css.Weight.css("medium")
    ]);

var label = merge([
      Text$Css.Font.css("body"),
      Text$Css.Size.css("sm"),
      Text$Css.Weight.css("medium")
    ]);

var h1 = merge([
      Text$Css.Font.css("heading"),
      Text$Css.Size.css("xxl"),
      Text$Css.Weight.css("bold")
    ]);

var h2 = merge([
      Text$Css.Font.css("heading"),
      Text$Css.Size.css("xl"),
      Text$Css.Weight.css("bold")
    ]);

var h3 = merge([
      Text$Css.Font.css("heading"),
      Text$Css.Size.css("lg"),
      Text$Css.Weight.css("bold")
    ]);

var h4 = merge([
      Text$Css.Font.css("heading"),
      Text$Css.Size.css("md"),
      Text$Css.Weight.css("bold")
    ]);

var h5 = merge([
      Text$Css.Font.css("heading"),
      Text$Css.Size.css("sm"),
      Text$Css.Weight.css("bold")
    ]);

var h6 = merge([
      Text$Css.Font.css("heading"),
      Text$Css.Size.css("xs"),
      Text$Css.Weight.css("bold")
    ]);

var button = merge([
      Text$Css.Font.css("body"),
      Text$Css.Size.css("md"),
      Text$Css.Weight.css("medium")
    ]);

var p = merge([
      Text$Css.Font.css("body"),
      Text$Css.Size.css("sm"),
      Text$Css.Weight.css("regular")
    ]);

var pL = merge([
      Text$Css.Font.css("body"),
      Text$Css.Size.css("md"),
      Text$Css.Weight.css("regular")
    ]);

export {
  empty ,
  merge ,
  borderBox ,
  flex ,
  width ,
  widthAuto ,
  fullWidth ,
  minWidth ,
  maxWidth ,
  height ,
  heightAuto ,
  fullHeight ,
  maxHeight ,
  minHeight ,
  gap ,
  page ,
  container ,
  logo ,
  navLink ,
  label ,
  h1 ,
  h2 ,
  h3 ,
  h4 ,
  h5 ,
  h6 ,
  button ,
  p ,
  pL ,
}
/* fullWidth Not a pure module */
