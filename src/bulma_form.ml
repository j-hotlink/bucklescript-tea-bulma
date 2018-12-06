open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common


module Field = struct


  let horizontal_grouped_alignment = function
    | Common.Left   -> Class.none
    | Common.Center -> Class.isGroupedCentered
    | Common.Right  -> Class.isGroupedRight


  let horizontal_addon_alignment = function
    | Common.Left   -> Class.none
    | Common.Center -> Class.hasAddonsCentered
    | Common.Right  -> Class.hasAddonsRight


  let field attributes =
    div ( [ Class.attribute [ Class.field ] ] @ attributes )


  let fields ?alignment:( alignment=Common.Left ) attributes =
    div
      ( [ Class.attribute [ Class.field
                          ; Class.isGrouped
                          ; horizontal_grouped_alignment alignment
                          ]
        ] @ attributes
      )


  let connectedFields ?alignment:( alignment=Common.Left ) attributes =
    div
      ( [ Class.attribute [ Class.field
                          ; Class.hasAddons
                          ; horizontal_addon_alignment alignment
                          ]
        ] @ attributes
      )


  let multilineFields attributes =
    div
      ( [ Class.attribute [ Class.field
                          ; Class.isGrouped
                          ; Class.isGroupedMultiline
                          ]
        ] @ attributes
      )


  let horizontalFields attributes =
    div
      ( [ Class.attribute [ Class.field
                          ; Class.isHorizontal
                          ]
        ] @ attributes
      )


  let fieldLabel ?size:( size=Common.Standard ) attributes =
    div
      ( [ Class.attribute [ Class.fieldLabel
                          ; Common.size_class size
                          ]
        ] @ attributes
      )


  let fieldBody attributes =
    div ( [ Class.attribute [ Class.fieldBody ] ] @ attributes )


  let label attributes =
    label ( [ Class.attribute [ Class.label ] ] @ attributes )


end

module Control = struct
  
  let control ?loading:( loading=false ) ?loading_size:( loading_size=Common.Standard ) ?expanded:( expanded=false ) attributes =
    p
      ( [ Class.attribute [ Class.control
                          ; Class.enable loading Class.isLoading
                          ; Class.enable loading ( Common.size_class loading_size )
                          ; Class.enable expanded Class.isExpanded
                          ]
        ] @ attributes
      )

  let input htmltype
      ?size:( size=Common.Standard )
      ?state:( state=Common.Blur )
      ?color:( color=Common.Default )
      ?expanded:( expanded=false )
      ?fullwidth:( fullwidth=false )
      ?rounded:( rounded=false )
      ?readonly:( readonly=false )
      ?disabled:( disabled=false )
      ?multi:( multi=false )
      ?checked:( checked=false )
      ?classes:( classes=[] )
      attributes =
    input'
      ( [ Class.attribute (
            [ Class.input
            ; Common.size_class size
            ; Common.state_class state
            ; Common.color_class color
            ; Class.enable rounded Class.isRounded
            ; Class.enable expanded Class.isExpanded
            ; Class.enable fullwidth Class.isFullWidth
            ; Class.enable multi Class.isMultiple
            ] @ classes
          )
        ; Attributes.type' htmltype
        ; Attributes.disabled disabled
        ; Attributes.readonly readonly
        ; Attributes.checked checked
        ] @ attributes
      )

  let text
      ?size:( size=Common.Standard )
      ?state:( state=Common.Blur )
      ?color:( color=Common.Default )
      ?expanded:( expanded=false )
      ?fullwidth:( fullwidth=false )
      ?rounded:( rounded=false )
      ?readonly:( readonly=false )
      ?disabled:( disabled=false )
      attributes =
    input "text" ~size ~state ~color ~expanded ~fullwidth ~rounded ~readonly ~disabled attributes

  let password
      ?size:( size=Common.Standard )
      ?state:( state=Common.Blur )
      ?color:( color=Common.Default )
      ?expanded:( expanded=false )
      ?fullwidth:( fullwidth=false )
      ?rounded:( rounded=false )
      ?readonly:( readonly=false )
      ?disabled:( disabled=false )
      attributes =
    input "password" ~size ~state ~color ~expanded ~fullwidth ~rounded ~readonly ~disabled attributes

  let email
      ?size:( size=Common.Standard )
      ?state:( state=Common.Blur )
      ?color:( color=Common.Default )
      ?expanded:( expanded=false )
      ?fullwidth:( fullwidth=false )
      ?rounded:( rounded=false )
      ?readonly:( readonly=false )
      ?disabled:( disabled=false )
      attributes =
    input "email" ~size ~state ~color ~expanded ~fullwidth ~rounded ~readonly ~disabled attributes
      
  let telephone
      ?size:( size=Common.Standard )
      ?state:( state=Common.Blur )
      ?color:( color=Common.Default )
      ?expanded:( expanded=false )
      ?fullwidth:( fullwidth=false )
      ?rounded:( rounded=false )
      ?readonly:( readonly=false )
      ?disabled:( disabled=false )
      attributes =
    input "tel" ~size ~state ~color ~expanded ~fullwidth ~rounded ~readonly ~disabled attributes

  let radio
      ?size:( size=Common.Standard )
      ?state:( state=Common.Blur )
      ?color:( color=Common.Default )
      ?expanded:( expanded=false )
      ?fullwidth:( fullwidth=false )
      ?rounded:( rounded=false )
      ?readonly:( readonly=false )
      ?disabled:( disabled=false )
      attributes =
    input "radio" ~size ~state ~color ~expanded ~fullwidth ~rounded ~readonly ~disabled attributes

  let checkbox
      ?size:( size=Common.Standard )
      ?state:( state=Common.Blur )
      ?color:( color=Common.Default )
      ?expanded:( expanded=false )
      ?fullwidth:( fullwidth=false )
      ?rounded:( rounded=false )
      ?readonly:( readonly=false )
      ?disabled:( disabled=false )
      attributes =
    input "checkbox" ~size ~state ~color ~expanded ~fullwidth ~rounded ~readonly ~disabled attributes

  let textarea
      ?size:( size=Common.Standard )
      ?state:( state=Common.Blur )
      ?color:( color=Common.Default )
      ?expanded:( expanded=false )
      ?fullwidth:( fullwidth=false )
      ?rounded:( rounded=false )
      ?readonly:( readonly=false )
      ?disabled:( disabled=false )
      attributes =
    textarea
      ( [ Class.attribute
            [ Class.textarea
            ; Common.size_class size
            ; Common.state_class state
            ; Common.color_class color
            ; Class.enable rounded Class.isRounded
            ; Class.enable expanded Class.isExpanded
            ; Class.enable fullwidth Class.isFullWidth
            ]
        ; Attributes.disabled disabled
        ; Attributes.readonly readonly
        ] @ attributes
      )

  let select
      ?size:( size=Common.Standard )
      ?state:( state=Common.Blur )
      ?color:( color=Common.Default )
      ?expanded:( expanded=false )
      ?fullwidth:( fullwidth=false )
      ?rounded:( rounded=false )
      ?readonly:( readonly=false )
      ?disabled:( disabled=false )
      ?multi:( multi=false )
      attributes =
    select
      ( [ Class.attribute
            [ Class.select
            ; Common.size_class size
            ; Common.state_class state
            ; Common.color_class color
            ; Class.enable rounded Class.isRounded
            ; Class.enable expanded Class.isExpanded
            ; Class.enable fullwidth Class.isFullWidth
            ; Class.enable multi Class.isMultiple
            ]
        ; Attributes.disabled disabled
        ; Attributes.readonly readonly
        ] @ attributes
      )

  let help ?color:( color=Common.Default ) attributes =
    p
      ( [ Class.attribute [ Class.help
                          ; Common.color_class color
                          ]
        ] @ attributes
      )

end
