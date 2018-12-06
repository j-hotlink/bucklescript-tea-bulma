open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common

let card attributes =
  div
    ( [ Class.attribute [ Class.card ] ] @ attributes )

let header attributes =
  header
    ( [ Class.attribute [ Class.cardHeader ] ] @ attributes )

let title attributes =
  p
    ( [ Class.attribute [ Class.cardHeaderTitle ] ] @ attributes )

let icon attributes =
  p
    ( [ Class.attribute [ Class.cardHeaderIcon ] ] @ attributes )

let iconLink attributes =
  a
    ( [ Class.attribute [ Class.cardHeaderIcon ] ] @ attributes )

let image attributes =
  div
    ( [ Class.attribute [ Class.cardImage ] ] @ attributes )

let content attributes =
  div
    ( [ Class.attribute [ Class.cardContent ] ] @ attributes )

let footer attributes =
  footer
    ( [ Class.attribute [ Class.cardFooter ] ] @ attributes )

let footerItem attributes =
  p
    ( [ Class.attribute [ Class.cardFooterItem ] ] @ attributes )

let footerLink attributes =
  a
    ( [ Class.attribute [ Class.cardFooterItem ] ] @ attributes )

(*
let easyCardHeader attrs { title; icon; onClickIcon } =
  header attrs
    [ cardTitle [] title
    , cardIconLink [ Events.onClick onClickIcon ] icon
    ]
  

let easierCardHeader attrs { title; icon; onClickIcon } =
  cardHeader attrs
    [ easyCardTitle [] title
    , easyCardIconLink [] onClickIcon icon
    ]


let easyCardTitle attrs = text >> ls >> cardTitle attrs


let easyCardIconLink attrs msg = cardIcon ( Events.onClick msg :: attrs ) << ls

*)
