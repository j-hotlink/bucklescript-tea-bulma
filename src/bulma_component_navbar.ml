open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common


type fixed =
  | Top
  | Bottom


let fixed_class = function
  | Top    -> Class.isFixedTop
  | Bottom -> Class.isFixedBottom


let navbar ?color:( color=Common.Default ) ?transparent:( transparent=false ) attributes =
  nav
    ( [ Class.attribute [ Class.navbar
                        ; Class.enable transparent Class.isTransparent
                        ; Common.color_class color
                        ]
      ] @ attributes
    )



let fixed ?color:( color=Common.Default ) ?transparent:( transparent=false ) ?position:( position=Top ) attributes =
  nav
    ( [ Class.attribute [ Class.navbar
                        ; Class.enable transparent Class.isTransparent
                        ; Common.color_class color
                        ; fixed_class position
                        ]
      ] @ attributes
    )


let brand attributes =
  div
    ( [ Class.attribute [ Class.navbarBrand ] ] @ attributes )



let burger ?active:( active=false ) attributes =
  a
    ( [ Class.attribute [ Class.navbarBurger
                        ; Class.enable active Class.isActive
                        ]
      ] @ attributes
    )


let cross attributes =
  burger ~active:true attributes


let menu ?active:( active=false ) attributes =
  div
    ( [ Class.attribute [ Class.navbarMenu
                        ; Class.enable active Class.isActive
                        ]
      ] @ attributes
    )


let start attributes =
  div ( [ Class.attribute [ Class.navbarStart ] ] @ attributes )


let finish attributes =
  div ( [ Class.attribute [ Class.navbarEnd ] ] @ attributes )


let item ?active:( active=false ) attributes =
  div
    ( [ Class.attribute [ Class.navbarItem
                        ; Class.enable active Class.isActive
                        ]
      ] @ attributes
    )


let itemLink ?active:( active=false ) attributes =
  a
    ( [ Class.attribute [ Class.navbarItem
                        ; Class.enable active Class.isActive
                        ]
      ] @ attributes
    )


let itemDropdown ?active:( active=false ) ?opendir:( opendir=Common.Down ) ?hoverable:( hoverable=true ) attributes =
  div
    ( [ Class.attribute [ Class.navbarItem
                        ; Class.hasDropdown
                        ; Class.enable hoverable Class.isHoverable
                        ; Class.enable active Class.isActive
                        ; Common.dropdirection_class opendir
                        ]
      ] @ attributes
    )


let link attributes =
  a ( [ Class.attribute [ Class.navbarLink ] ] @ attributes )


let dropdown ?boxed:( boxed=false ) ?alignment:( alignment=Common.Left ) attributes =
  div
    ( [ Class.attribute [ Class.navbarDropdown
                        ; Class.enable boxed Class.isBoxed
                        ; Common.horizontal_lr_class alignment
                        ]
      ] @ attributes
    )

let divider attributes =
  hr ( [ Class.attribute [ Class.navbarDivider ] ] @ attributes )
