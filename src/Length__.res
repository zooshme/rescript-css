type t =
  | Auto
  | Pixels(int)
  | Percentage(int)

let toString = (value: t) =>
  switch value {
  | Auto => "auto"
  | Pixels(value) => value->Int.toString ++ "px"
  | Percentage(value) => value->Int.toString ++ "%"
  }

let px = (value: int) => Pixels(value)
let pct = (value: int) => Percentage(value)

let none = px(0)
let xs = px(10)
let sm = px(20)
let md = px(30)
let lg = px(40)
let xl = px(50)
let container = px(1500)
