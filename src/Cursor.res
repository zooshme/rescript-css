type t = @string
[
  | // General
  #auto
  | #default
  | #none
  | // Links & Status
  #contextMenu
  | #help
  | #pointer
  | #progress
  | #wait
  | // Selection
  #cell
  | #crosshair
  | #text
  | #verticalText
  | // Drag & drop
  #alias
  | #copy
  | #move
  | #noDrop
  | #notAllowed
  | #grab
  | #grabbing
  | // Resizing & scrolling
  #allScroll
  | #colResize
  | #rowResize
  | #nResize
  | #eResize
  | #sResize
  | #wResize
  | #neResize
  | #nwResize
  | #seResize
  | #swResize
  | #ewResize
  | #nsResize
  | #neswResize
  | #nwseResize
  | // Zooming
  #zoomIn
  | #zoomOut
]

let toString = (value: t) =>
  switch value {
  | #auto => "auto"
  | #default => "default"
  | #none => "none"
  | #contextMenu => "context-menu"
  | #help => "help"
  | #pointer => "pointer"
  | #progress => "progress"
  | #wait => "wait"
  | #cell => "cell"
  | #crosshair => "crosshair"
  | #text => "text"
  | #verticalText => "vertical-text"
  | #alias => "alias"
  | #copy => "copy"
  | #move => "move"
  | #noDrop => "no-drop"
  | #notAllowed => "not-allowed"
  | #grab => "grab"
  | #grabbing => "grabbing"
  | #allScroll => "all-scroll"
  | #colResize => "col-resize"
  | #rowResize => "row-resize"
  | #nResize => "n-resize"
  | #eResize => "e-resize"
  | #sResize => "s-resize"
  | #wResize => "w-resize"
  | #neResize => "ne-resize"
  | #nwResize => "nw-resize"
  | #seResize => "se-resize"
  | #swResize => "sw-resize"
  | #ewResize => "ew-resize"
  | #nsResize => "ns-resize"
  | #neswResize => "nesw-resize"
  | #nwseResize => "nwse-resize"
  | #zoomIn => "zoom-in"
  | #zoomOut => "zoom-out"
  }

let css = (value: t) => ReactDOM.Style.make(~cursor=value->toString, ())
