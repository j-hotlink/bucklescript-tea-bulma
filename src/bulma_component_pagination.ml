open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common


let pagination ?rounded:( rounded=false ) ?alignment:( alignment=Common.Left ) attributes =
  div
    ( [ Class.attribute [ Class.pagination
                        ; Common.horizontal_lrc_class alignment
                        ; Class.enable rounded Class.isRounded
                        ]
      ] @ attributes
    )


let previous attributes =
  a ( [ Class.attribute [ Class.paginationPrevious ] ] @ attributes )


let next attributes =
  a ( [ Class.attribute [ Class.paginationNext ] ] @ attributes )


let list attributes =
  ul ( [ Class.attribute [ Class.paginationList ] ] @ attributes )


let link ?current:( current=false ) attributes =
  a
    ( [ Class.attribute [ Class.paginationLink
                        ; Class.enable current Class.isCurrent
                        ]
      ] @ attributes
    )


let ellipsis attributes =
  span ( [ Class.attribute [ Class.paginationEllipsis ] ] @ attributes )

(*
let easyPaginationLink current attrs msg =
  String.fromInt >> text >> ls >> paginationLink current (onClick msg :: attrs)

let easyPaginationEllipsis attrs = paginationEllipsis attrs [ text "…" ]

let easyPaginationPrev attrs msg =
  text >> ls >> paginationPrev (onClick msg :: attrs)


let easyPaginationNext attrs msg =
  text >> ls >> paginationNext (onClick msg :: attrs)
*)
