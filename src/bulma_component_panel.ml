open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common


let panel attributes =
  div ( [ Class.attribute [ Class.panel ] ] @ attributes )
  
let heading attributes =
  p ( [ Class.attribute [ Class.panelHeading ] ] @ attributes )


let block ?active:( active=false ) attributes =
  div
    ( [ Class.attribute [ Class.panelBlock
                        ; Class.enable active Class.isActive
                        ]
      ] @ attributes
    )

let link ?active:( active=false ) attributes =
  a
    ( [ Class.attribute [ Class.panelBlock
                        ; Class.enable active Class.isActive
                        ]
      ] @ attributes
    )


let icon attributes =
  span ( [ Class.attribute [ Class.panelIcon ] ] @ attributes )

  
let label ?active:( active=false ) attributes =
  label
    ( [ Class.attribute [ Class.panelBlock
                        ; Class.enable active Class.isActive
                        ]
      ] @ attributes
    )


let tabs attributes =
  p ( [ Class.attribute [ Class.panelTabs ] ] @ attributes )


let tab ?active:( active=false ) attributes =
  a
    ( [ Class.attribute [ Class.enable active Class.isActive ] ] @ attributes )
