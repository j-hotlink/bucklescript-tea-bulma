open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common

let menu attributes = aside ( [ Class.attribute [ Class.menu ] ] @ attributes )

let label attributes = p ( [ Class.attribute [ Class.menuLabel ] ] @ attributes )

let list attributes = ul ( [ Class.attribute [ Class.menuList ] ] @ attributes )

let item attributes = li attributes

let itemLink ?active:( active=false ) attributes =
  a
    ( [ Class.attribute [ Class.enable active Class.isActive ] ] @ attributes )

(*
let easyMenuListItemLink active attrs msg icon str =
  menuListItemLink active (onClick msg :: attrs)
    [ icon
    , text str
    ]
*)
