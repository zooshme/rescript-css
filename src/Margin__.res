module Length = Length__

let all = (value: Length.t) => ReactDOM.Style.make(~margin=value->Length.toString, ())
let each = (~top: Length.t, ~right: Length.t, ~bottom: Length.t, ~left: Length.t) =>
  ReactDOM.Style.make(
    ~marginTop=top->Length.toString,
    ~marginRight=right->Length.toString,
    ~marginBottom=bottom->Length.toString,
    ~marginLeft=left->Length.toString,
    (),
  )
let xy = (~x: Length.t, ~y: Length.t) =>
  ReactDOM.Style.make(
    ~marginTop=y->Length.toString,
    ~marginBottom=y->Length.toString,
    ~marginLeft=x->Length.toString,
    ~marginRight=x->Length.toString,
    (),
  )
let top = (value: Length.t) => ReactDOM.Style.make(~marginTop=value->Length.toString, ())
let bottom = (value: Length.t) => ReactDOM.Style.make(~marginBottom=value->Length.toString, ())
let left = (value: Length.t) => ReactDOM.Style.make(~marginLeft=value->Length.toString, ())
let right = (value: Length.t) => ReactDOM.Style.make(~marginRight=value->Length.toString, ())
