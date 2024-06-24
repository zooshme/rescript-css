let empty: JsxDOMStyle.t = {}

let merge = (styles: array<JsxDOMStyle.t>) => {
  styles->Array.reduce(empty, (acc, style) => {
    ReactDOM.Style.combine(acc, style)
  })
}

let borderBox = ReactDOM.Style.make(~boxSizing="border-box", ())
let flex = ReactDOM.Style.make(
  ~display="flex",
  ~justifyContent="space-between",
  ~alignItems="center",
  (),
)

//#region Width
let width = (value: Length.t) => ReactDOM.Style.make(~width=value->Length.toString, ())
let widthAuto = ReactDOM.Style.make(~width="auto", ())
let fullWidth = [ReactDOM.Style.make(~width="100%", ()), borderBox]->merge
let minWidth = (value: Length.t) => ReactDOM.Style.make(~minWidth=value->Length.toString, ())
let maxWidth = (value: Length.t) => ReactDOM.Style.make(~maxWidth=value->Length.toString, ())
//#region

//#region Height
let height = (value: Length.t) => ReactDOM.Style.make(~height=value->Length.toString, ())
let heightAuto = ReactDOM.Style.make(~height="auto", ())
let fullHeight = [ReactDOM.Style.make(~height="100%", ()), borderBox]->merge
let maxHeight = (value: Length.t) => ReactDOM.Style.make(~maxHeight=value->Length.toString, ())
let minHeight = (value: Length.t) => ReactDOM.Style.make(~minHeight=value->Length.toString, ())
//#region

let gap = (value: Length.t) => ReactDOM.Style.make(~gap=value->Length.toString, ())

let page = [Padding.xy(~x=Length.md, ~y=Length.none), Display.css(#block)]->merge
let container =
  [
    Padding.xy(~x=Length.md, ~y=Length.none),
    Display.css(#block),
    maxWidth(Length.container),
    Margin.xy(~x=Length.Auto, ~y=Length.none),
  ]->merge

let logo = [Text.Font.css(#heading), Text.Size.css(#sm), Text.Weight.css(#bold)]->merge
let navLink = [Text.Font.css(#body), Text.Size.css(#sm), Text.Weight.css(#medium)]->merge
let label = [Text.Font.css(#body), Text.Size.css(#sm), Text.Weight.css(#medium)]->merge
let h1 = [Text.Font.css(#heading), Text.Size.css(#xxl), Text.Weight.css(#bold)]->merge
let h2 = [Text.Font.css(#heading), Text.Size.css(#xl), Text.Weight.css(#bold)]->merge
let h3 = [Text.Font.css(#heading), Text.Size.css(#lg), Text.Weight.css(#bold)]->merge
let h4 = [Text.Font.css(#heading), Text.Size.css(#md), Text.Weight.css(#bold)]->merge
let h5 = [Text.Font.css(#heading), Text.Size.css(#sm), Text.Weight.css(#bold)]->merge
let h6 = [Text.Font.css(#heading), Text.Size.css(#xs), Text.Weight.css(#bold)]->merge
let button = [Text.Font.css(#body), Text.Size.css(#md), Text.Weight.css(#medium)]->merge
let p = [Text.Font.css(#body), Text.Size.css(#sm), Text.Weight.css(#regular)]->merge
let pL = [Text.Font.css(#body), Text.Size.css(#md), Text.Weight.css(#regular)]->merge
