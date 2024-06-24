module AlignItems = {
  type t = @string [#flexStart | #flexEnd | #center | #baseline | #stretch]

  let toString = (value: t) =>
    switch value {
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    | #center => "center"
    | #baseline => "baseline"
    | #stretch => "stretch"
    }

  let css = (value: t) => ReactDOM.Style.make(~alignItems=value->toString, ())
}

module AlignContent = {
  type t = @string [#flexStart | #flexEnd | #center | #spaceBetween | #spaceAround | #spaceEvenly]

  let toString = (value: t) =>
    switch value {
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    | #center => "center"
    | #spaceBetween => "space-between"
    | #spaceAround => "space-around"
    | #spaceEvenly => "space-evenly"
    }

  let css = (value: t) => ReactDOM.Style.make(~alignContent=value->toString, ())
}

module JustifyItems = {
  type t = @string [#flexStart | #flexEnd | #center | #stretch]

  let toString = (value: t) =>
    switch value {
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    | #center => "center"
    | #stretch => "stretch"
    }

  let css = (value: t) => ReactDOM.Style.make(~justifyItems=value->toString, ())
}

module JustifyContent = {
  type t = @string [#flexStart | #flexEnd | #center | #spaceBetween | #spaceAround | #spaceEvenly]

  let toString = (value: t) =>
    switch value {
    | #flexStart => "flex-start"
    | #flexEnd => "flex-end"
    | #center => "center"
    | #spaceBetween => "space-between"
    | #spaceAround => "space-around"
    | #spaceEvenly => "space-evenly"
    }

  let css = (value: t) => ReactDOM.Style.make(~justifyContent=value->toString, ())
}

module Direction = {
  type t = @string [#row | #column | #rowReverse | #columnReverse]

  let toString = (value: t) =>
    switch value {
    | #row => "row"
    | #column => "column"
    | #rowReverse => "row-reverse"
    | #columnReverse => "column-reverse"
    }

  let css = (value: t) => ReactDOM.Style.make(~flexDirection=value->toString, ())
}

module Wrap = {
  type t = @string [#nowrap | #wrap | #wrapReverse]

  let toString = (value: t) =>
    switch value {
    | #nowrap => "nowrap"
    | #wrap => "wrap"
    | #wrapReverse => "wrap-reverse"
    }

  let css = (value: t) => ReactDOM.Style.make(~flexWrap=value->toString, ())
}
