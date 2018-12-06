open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common
module Device = Bulma_device
module Css = Bulma_column_css

module Widths = struct

  type t = (Common.width option) Device.t

  let default : t =
    { mobile     = Some Auto
    ; tablet     = Some Auto
    ; desktop    = Some Auto
    ; widescreen = Some Auto
    ; fullHD     = Some Auto
    }

  let narrow : t =
    { mobile     = None
    ; tablet     = None
    ; desktop    = None
    ; widescreen = None
    ; fullHD     = None
    }

end

type display =
  | MobileAndBeyond
  | TabletAndBeyond
  | DesktopAndBeyond


let display_class = function
  | MobileAndBeyond  -> Class.isMobile
  | TabletAndBeyond  -> Class.none
  | DesktopAndBeyond -> Class.isDesktop


type gap =
  | Gap0
  | Gap1
  | Gap2
  | Gap3
  | Gap4
  | Gap5
  | Gap6
  | Gap7
  | Gap8


let gap_class = function
  | Gap0 -> Class.is0
  | Gap1 -> Class.is1
  | Gap2 -> Class.is2
  | Gap3 -> Class.none
  | Gap4 -> Class.is4
  | Gap5 -> Class.is5
  | Gap6 -> Class.is6
  | Gap7 -> Class.is7
  | Gap8 -> Class.is8


let gapless_class = function
  | Gap0 -> Class.isGapless
  | _    -> Class.none


let columns ?multiline:( multiline=false ) ?gap:( gap=Gap3 ) ?display:( display=TabletAndBeyond ) ?centred:( centred=false ) attributes =
  div
    ( [ Class.attribute [ Class.columns
                        ; Class.enable centred Class.isCentered
                        ; Class.enable multiline Class.isMultiline
                        ; gapless_class gap
                        ; gap_class gap
                        ; display_class display
                        ]
      ] @ attributes
    )
    

let column ?offset:( offset=Common.Auto ) ?widths:( widths=Widths.default ) attributes =
  div
    ( [ Class.attribute [ Class.column
                        ; Device.Mobile.width_class widths.mobile
                        ; Device.Tablet.width_class widths.tablet
                        ; Device.Desktop.width_class widths.desktop
                        ; Device.Widescreen.width_class widths.widescreen
                        ; Device.FullHd.width_class widths.fullHD
                        ; Device.width_class offset
                        ]
      ] @ attributes
    )
