module Length = Length__

let all = (value: Length.t) => ReactDOM.Style.make(~padding=value->Length.toString, ())
let each = (~top: Length.t, ~right: Length.t, ~bottom: Length.t, ~left: Length.t) =>
  ReactDOM.Style.make(
    ~paddingTop=top->Length.toString,
    ~paddingRight=right->Length.toString,
    ~paddingBottom=bottom->Length.toString,
    ~paddingLeft=left->Length.toString,
    (),
  )
let xy = (~x: Length.t, ~y: Length.t) =>
  ReactDOM.Style.make(
    ~paddingTop=y->Length.toString,
    ~paddingBottom=y->Length.toString,
    ~paddingLeft=x->Length.toString,
    ~paddingRight=x->Length.toString,
    (),
  )
let top = (value: Length.t) => ReactDOM.Style.make(~paddingTop=value->Length.toString, ())
let bottom = (value: Length.t) => ReactDOM.Style.make(~paddingBottom=value->Length.toString, ())
let left = (value: Length.t) => ReactDOM.Style.make(~paddingLeft=value->Length.toString, ())
let right = (value: Length.t) => ReactDOM.Style.make(~paddingRight=value->Length.toString, ())
