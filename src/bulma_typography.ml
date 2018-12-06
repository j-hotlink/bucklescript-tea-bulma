module Class = Bulma_class
module Common = Bulma_common
module Device = Bulma_device

let capitalize = Class.isCapitalized
let lowercase = Class.isLowercase
let uppercase = Class.isUppercase
let italicize = Class.isItalic

type size =
  | Large3
  | Large2
  | Large1
  | Large
  | Medium
  | Normal
  | Small

let size_class = function
  | Large3  -> Class.isSize1
  | Large2  -> Class.isSize2
  | Large1  -> Class.isSize3
  | Large   -> Class.isSize4
  | Medium  -> Class.isSize5
  | Normal  -> Class.isSize6
  | Small   -> Class.isSize7


module Sizes = struct

  type t = size Device.t

  let default : t =
    { mobile     = Medium
    ; tablet     = Normal
    ; desktop    = Normal
    ; widescreen = Large
    ; fullHD     = Large1
    }

end

module Alignments = struct

  type t = Common.horizontalAlignment Device.t

  let default : t =
    { mobile     = Left
    ; tablet     = Left
    ; desktop    = Left
    ; widescreen = Left
    ; fullHD     = Left
    }

end

module Devices = struct

  module Mobile = struct
    let size_class = function
      | Large3 -> Class.isSize1Mobile
      | Large2 -> Class.isSize2Mobile
      | Large1 -> Class.isSize3Mobile
      | Large  -> Class.isSize4Mobile
      | Medium -> Class.isSize5Mobile
      | Normal -> Class.isSize6Mobile
      | Small  -> Class.isSize7Mobile

    let alignment_class = function
      | Common.Left   -> Class.hasTextLeftMobile
      | Common.Center -> Class.hasTextCenteredMobile
      | Common.Right  -> Class.hasTextRightMobile

  end

  module Tablet = struct
  
    let size_class = function
      | Large3 -> Class.isSize1Tablet
      | Large2 -> Class.isSize2Tablet
      | Large1 -> Class.isSize3Tablet
      | Large  -> Class.isSize4Tablet
      | Medium -> Class.isSize5Tablet
      | Normal -> Class.isSize6Tablet
      | Small  -> Class.isSize7Tablet

    let alignment_class = function
      | Common.Left   -> Class.hasTextLeftTabletOnly
      | Common.Center -> Class.hasTextCenteredTabletOnly
      | Common.Right  -> Class.hasTextRightTabletOnly

  end

  module Desktop = struct
  
    let size_class = function
      | Large3  -> Class.isSize1Desktop
      | Large2  -> Class.isSize2Desktop
      | Large1  -> Class.isSize3Desktop
      | Large   -> Class.isSize4Desktop
      | Medium  -> Class.isSize5Desktop
      | Normal  -> Class.isSize6Desktop
      | Small   -> Class.isSize7Desktop

    let alignment_class = function
      | Common.Left   -> Class.hasTextLeftDesktopOnly
      | Common.Center -> Class.hasTextCenteredDesktopOnly
      | Common.Right  -> Class.hasTextRightDesktopOnly
  end

  module Widescreen = struct

    let size_class = function
      | Large3 -> Class.isSize1Widescreen
      | Large2 -> Class.isSize2Widescreen
      | Large1 -> Class.isSize3Widescreen
      | Large  -> Class.isSize4Widescreen
      | Medium -> Class.isSize5Widescreen
      | Normal -> Class.isSize6Widescreen
      | Small  -> Class.isSize7Widescreen

    let alignment_class = function
      | Common.Left   -> Class.hasTextLeftWidescreenOnly
      | Common.Center -> Class.hasTextCenteredWidescreenOnly
      | Common.Right  -> Class.hasTextRightWidescreenOnly

  end

  module FullHD = struct

    let size_class = function
      | Large3 -> Class.isSize1FullHD
      | Large2 -> Class.isSize2FullHD
      | Large1 -> Class.isSize3FullHD
      | Large  -> Class.isSize4FullHD
      | Medium -> Class.isSize5FullHD
      | Normal -> Class.isSize6FullHD
      | Small  -> Class.isSize7FullHD

    let alignment_class = function
      | Common.Left   -> Class.hasTextLeftFullHD
      | Common.Center -> Class.hasTextCenteredFullHD
      | Common.Right  -> Class.hasTextRightFullHD

  end
  
  (* adjusts text size based on device viewport width *)
  let size_classes ( config : Sizes.t ) =
    Class.list [ Mobile.size_class config.mobile
               ; Tablet.size_class config.tablet
               ; Desktop.size_class config.desktop
               ; Widescreen.size_class config.widescreen
               ; FullHD.size_class config.fullHD
               ]

  (* aligns text by device viewport width *)
  let alignment_classes ( config : Alignments.t ) =
    Class.list [ Mobile.alignment_class config.mobile
               ; Tablet.alignment_class config.tablet
               ; Desktop.alignment_class config.desktop
               ; Widescreen.alignment_class config.widescreen
               ; FullHD.alignment_class config.fullHD
               ]

end


(*  text alignment  *)
let left = Class.hasTextLeft
let centre = Class.hasTextCentered
let right = Class.hasTextRight
let justified = Class.hasTextJustified

(*  weight  *)

type weight =
  | Light
  | Normal
  | Semibold
  | Bold

let weight_class = function
  | Light    -> Class.hasTextWeightLight
  | Normal   -> Class.hasTextWeightNormal
  | Semibold -> Class.hasTextWeightSemibold
  | Bold     -> Class.hasTextWeightBold


type color =
  | Black
  | BlackLight
  | BlackLighter
  | GreyDarker
  | GreyDark
  | Grey
  | GreyLight
  | GreyLighter
  | WhiteDarker
  | WhiteDark
  | White
  | Primary
  | Info
  | Success
  | Warning
  | Danger

let color_class = function
  | Black        -> Class.hasTextBlack
  | BlackLight   -> Class.hasTextBlackBis
  | BlackLighter -> Class.hasTextBlackTer
  | GreyDarker   -> Class.hasTextGreyDarker
  | GreyDark     -> Class.hasTextGreyDark
  | Grey         -> Class.hasTextGrey
  | GreyLight    -> Class.hasTextGreyLight
  | GreyLighter  -> Class.hasTextGreyLighter
  | WhiteDarker  -> Class.hasTextWhiteBis
  | WhiteDark    -> Class.hasTextWhiteTer
  | White        -> Class.hasTextWhite
  | Primary      -> Class.hasTextPrimary
  | Info         -> Class.hasTextInfo
  | Success      -> Class.hasTextSuccess
  | Warning      -> Class.hasTextWarning
  | Danger       -> Class.hasTextDanger
