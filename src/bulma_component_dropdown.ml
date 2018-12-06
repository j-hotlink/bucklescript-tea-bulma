open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common


let dropdown ?halign:( halign=Common.Left ) ?vdir:( vdir=Common.Down ) ?hoverable:( hoverable=false )
    ?active:( active=false ) attributes =
  div
    (
      [ Class.attribute [ Class.dropdown
                        ; Class.enable hoverable Class.isHoverable
                        ; Class.enable active    Class.isActive
                        ; Common.horizontal_lrc_class halign
                        ; Common.vertical_direction_class vdir
                        ]
      ] @ attributes
    )


let trigger attributes =
  div
    ( 
      [ Class.attribute [ Class.dropdownTrigger ]
      ] @ attributes
    )


let menu attributes =
  div
    ( 
      [ Class.attribute [ Class.dropdownMenu ]
      (*; attribute "role" "menu"*)
      ] @ attributes
    )

let content attributes =
  div
    ( 
      [ Class.attribute [ Class.dropdownContent ]
      ] @ attributes
    )


module Item = struct


  let link ?active:( active=false ) attributes =
    a
      ( 
        [ Class.attribute [ Class.dropdownItem
                          ; Class.enable active Class.isActive
                          ]
        ] @ attributes
      )


  let simple ?active:( active=false ) attributes =
    div
      ( 
        [ Class.attribute [ Class.dropdownItem
                          ; Class.enable active Class.isActive
                          ]
        ] @ attributes
      )

  let divider attributes =
    hr
      ( [ Class.attribute [ Class.dropdownDivider ] ] @ attributes )

end
