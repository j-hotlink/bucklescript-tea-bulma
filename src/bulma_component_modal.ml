open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common


let modal ?active:( active=false ) attributes =
  div
    ( [ Class.attribute [ Class.modal
                        ; Class.enable active Class.isActive
                        ]
      ] @ attributes
    )


let background attributes =
  div
    ( [ Class.attribute [ Class.modalBackground ] ] @ attributes )


let content attributes =
  div ( [ Class.attribute [ Class.modalContent ] ] @ attributes )


let close ?size:( size=Common.Standard ) attributes =
  a
    ( [ Class.attribute [ Class.modalClose
                        ; Common.size_class size
                        ]
      ] @ attributes
    )


module Card = struct

  let card attributes =
    div
      ( [ Class.attribute [ Class.modalCard ] ] @ attributes )


  let header attributes =
    div ( [ Class.attribute [ Class.modalCardHead ] ] @ attributes )


  let title attributes =
    div ( [ Class.attribute [ Class.modalCardTitle ] ] @ attributes )


  let body attributes =
    div ( [ Class.attribute [ Class.modalCardBody ] ] @ attributes )


  let footer attributes =
    div ( [ Class.attribute [ Class.modalCardFoot ] ] @ attributes )

end

(*
let easy active attrs close content =
  modal active attrs
    [ easyModalBackground [] close
    ; modalContent [] content
    ; easyModalClose Standard [] close
    ]

let easyBackground attrs onClickBackground =
  background (onClick onClickBackground :: attrs) []

let easyClose size attrs onClickModal =
  close size (onClick onClickModal :: attrs) []
*)
