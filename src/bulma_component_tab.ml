open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common

type style =
  | Minimal
  | Boxed
  | Toggle
  | Round


let tabrounded_class = function
  | Round   -> Class.isToggleRounded
  | _       -> Class.none


let tab_class = function
  | Toggle  -> Class.isToggle
  | Round   -> Class.isToggle
  | _       -> Class.none


let tab_boxed_style_class = function
  | Boxed -> Class.isBoxed
  | _     -> Class.none



let tabs ?style:( style=Minimal ) ?alignment:( alignment=Common.Left ) ?size:( size=Common.Standard ) attributes children =
  div
    ( [ Class.attribute [ Class.tabs
                        ; tab_boxed_style_class style
                        ; tab_class style
                        ; tabrounded_class style
                        ; Common.horizontal_lrc_class alignment
                        ; Common.size_class size
                        ]
      ] @ attributes
    )
    [ ul [] children ]


let tab ?active:( active=false ) attributes =
  li
    ( [ Class.attribute [ Class.enable active Class.isActive ] ] @ attributes )
