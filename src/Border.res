module Length = Length

let shorthand = (
  ~width: Length.t,
  ~style: @string [#solid | #dashed | #dotted],
  ~color: string,
) => {
  let styleString = switch style {
  | #solid => "solid"
  | #dashed => "dashed"
  | #dotted => "dotted"
  }
  ReactDOM.Style.make(
    ~borderWidth=width->Length.toString,
    ~borderStyle=styleString,
    ~borderColor=color,
    (),
  )
}

let none = ReactDOM.Style.make(~border="none", ())
