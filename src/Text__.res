module Font = {
  type t = @string [#heading | #body]

  let toString = (value: t) =>
    switch value {
    | #heading => "DM Sans, sans-serif"
    | #body => "DM Sans, sans-serif"
    }

  let css = (value: t) => ReactDOM.Style.make(~fontFamily=value->toString, ())
}

module Size = {
  type t = @string [#xs | #sm | #md | #lg | #xl | #xxl]

  let base = 14.0

  let scale = 1.61

  let toString = (value: t) =>
    switch value {
    | #xs => (base *. scale ** -1.0)->Float.toString ++ "px"
    | #sm => (base *. scale ** 1.0)->Float.toString ++ "px"
    | #md => (base *. scale ** 2.0)->Float.toString ++ "px"
    | #lg => (base *. scale ** 3.0)->Float.toString ++ "px"
    | #xl => (base *. scale ** 4.0)->Float.toString ++ "px"
    | #xxl => (base *. scale ** 5.0)->Float.toString ++ "px"
    }

  let css = (value: t) => ReactDOM.Style.make(~fontSize=value->toString, ())
}

module Weight = {
  type t = @string [#light | #regular | #medium | #semiBold | #bold]

  let toString = (value: t) =>
    switch value {
    | #light => "300"
    | #regular => "400"
    | #medium => "500"
    | #semiBold => "600"
    | #bold => "700"
    }

  let css = (value: t) => ReactDOM.Style.make(~fontWeight=value->toString, ())
}

module Leading = {
  type t = @string [#normal | #tight | #loose]

  let toString = (value: t) =>
    switch value {
    | #normal => "1.2"
    | #tight => "1"
    | #loose => "1.5"
    }

  let css = (value: t) => ReactDOM.Style.make(~lineHeight=value->toString, ())
}

module Decoration = {
  type t = @string [#none | #underline | #lineThrough]

  let toString = (value: t) =>
    switch value {
    | #none => "none"
    | #underline => "underline"
    | #lineThrough => "line-through"
    }

  let css = (value: t) => ReactDOM.Style.make(~textDecoration=value->toString, ())
}

let color = (color: string) => ReactDOM.Style.make(~color, ())
