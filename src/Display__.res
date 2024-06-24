type t = @string [#flex | #block | #inline | #inlineBlock | #inlineFlex]

let toString = (value: t) =>
  switch value {
  | #flex => "flex"
  | #block => "block"
  | #inline => "inline"
  | #inlineBlock => "inline-block"
  | #inlineFlex => "inline-flex"
  }

let css = (value: t) => ReactDOM.Style.make(~display=value->toString, ())
