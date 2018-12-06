open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common

let message ?color:( color=Common.Default ) ?size:( size=Common.Standard ) attributes =
  article
    ( [ Class.attribute [ Class.message
                        ; Common.color_class color
                        ; Common.size_class size
                        ]
      ] @ attributes
    )
    

let header attributes =
  div
    ( [ Class.attribute [ Class.messageHeader ] ] @ attributes )


let body attributes =
  div
    ( [ Class.attribute [ Class.messageBody ] ] @ attributes )
