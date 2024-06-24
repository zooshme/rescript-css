let none = ReactDOM.Style.make(~boxShadow="none", ())
let md = (~color: string) => ReactDOM.Style.make(~boxShadow=`0px 2px 3px 0 ${color}`, ())
