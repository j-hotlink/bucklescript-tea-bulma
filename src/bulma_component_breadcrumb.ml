open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common

type separator =
  | Slash
  | Arrow
  | Bullet
  | Dot
  | Succeeds


let separator_class = function
  | Slash    -> Class.none
  | Arrow    -> Class.hasArrowSeparator
  | Bullet   -> Class.hasBulletSeparator
  | Dot      -> Class.hasDotSeparator
  | Succeeds -> Class.hasSucceedsSeparator


type config =
  { separator : separator
  ; alignment : Common.horizontalAlignment
  ; size      : Common.size
  }


let breadcrumb ?separator:( separator=Slash ) ?size:( size=Common.Standard ) ?alignment:( alignment=Common.Left ) attributes =
  nav
    ( [ Class.attribute [ Class.breadcrumb
                        ; separator_class separator
                        ; Common.size_class size
                        ; Common.horizontal_lrc_class alignment
                        ]
      ] @ attributes
    )


let crumb ?active:( active=false ) attributes =
  li
    ( [ Class.attribute [ Class.enable active Class.isActive
                        ]
      ] @ attributes
    )

