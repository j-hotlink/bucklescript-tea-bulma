open Tea

let none=""

let list names = List.map ( fun name -> ( name, true ) ) names

let attribute names =
  list names |> Html2.Attributes.classList

let enable value name =
  match value with
  | true  -> name
  | false -> none

let add name = ( name, true )

(* required?
let extend attributes classes =

  let open Tea.Html2 in
  let rec split source found unchanged =
    let open Vdom in
    match source with
    | []                                           -> ( source, found, unchanged )
    | Vdom.RawProp ( "className", value ) :: rest  -> split ( rest ) ( value :: found ) (             unchanged )
    | notclass                            :: rest  -> split ( rest ) (          found ) ( notclass :: unchanged )
  in
  let ( _, found, notclasses ) = split attributes [] [] in
  let existing = String.concat " " found in
  let merged = classes @ [ ( existing, true ) ] in
  notclasses @ [ Attributes.classList merged ]
*)

(* modifiers *)
let isBold = "is-bold"
let isPrimary = "is-primary"
let isInfo = "is-info"
let isSuccess = "is-success"
let isWarning = "is-warning"
let isDanger = "is-danger"
let isLight = "is-light"
let isDark = "is-dark"
let isWhite = "is-white"
let isBlack = "is-black"
let isLink = "is-link"
let isSmall = "is-small"
let isNormal = "is-normal"
let isMedium = "is-medium"
let isLarge = "is-large"
let isFullHeight = "is-fullheight"
let isActive = "is-active"
let isHovered = "is-hovered"
let isFocused = "is-focused"
let isLoading = "is-loading"
let isStatic = "is-static"
let is0 = "is-0"
let is1 = "is-1"
let is2 = "is-2"
let is3 = "is-3"
let is4 = "is-4"
let is5 = "is-5"
let is6 = "is-6"
let is7 = "is-7"
let is8 = "is-8"
let is9 = "is-9"
let is00 = "is-0"
let is01 = "is-1"
let is02 = "is-2"
let is03 = "is-3"
let is04 = "is-4"
let is05 = "is-5"
let is06 = "is-6"
let is07 = "is-7"
let is08 = "is-8"
let is09 = "is-9"
let is10 = "is-10"
let is11 = "is-11"
let is12 = "is-12"
let isRounded = "is-rounded"
let isBoxed = "is-boxed"
let isRight = "is-right"
let isUp = "is-up"
let isHoverable = "is-hoverable"
let isMobile = "is-mobile"
let isDesktop = "is-desktop"

(* generic *)
let isClearfix = "is-clearfix"
let isPulledLeft = "is-pulled-left"
let isPulledRight = "is-pulled-right"
let isMarginless = "is-marginless"
let isPaddingless = "is-paddingless"
let isOverlay = "is-overlay"
let isClipped = "is-clipped"
let isRadiusless = "is-radiusless"
let isShadowless = "is-shadowless"
let isUnselectable = "is-unselectable"
let isInvisible = "is-invisible"
let isSROnly = "is-sr-only"

(* responsivle *)
let isBlock = "is-block"
let isFlex = "is-flex"
let isInline = "is-inline"
let isInlineBlock = "is-inline-block"
let isInlineFlex = "is-inline-flex"
let isHidden = "is-hidden"
let isBlockMobile = "is-block-mobile"
let isBlockTabletOnly = "is-block-tablet-only"
let isBlockDesktopOnly = "is-block-desktop-only"
let isBlockWidescreenOnly = "is-block-widescreen-only"
let isBlockTouch = "is-block-touch"
let isBlockTablet = "is-block-tablet"
let isBlockDesktop = "is-block-desktop"
let isBlockWidescreen = "is-block-widescreen"
let isBlockFullHD = "is-block-fullhd"
let isBlockFullHDOnly = "is-block-fullhd-only"
let isFlexMobile = "is-flex-mobile"
let isFlexTabletOnly = "is-flex-tablet-only"
let isFlexDesktopOnly = "is-flex-desktop-only"
let isFlexWidescreenOnly = "is-flex-widescreen-only"
let isFlexTouch = "is-flex-touch"
let isFlexTablet = "is-flex-tablet"
let isFlexDesktop = "is-flex-desktop"
let isFlexWidescreen = "is-flex-widescreen"
let isFlexFullHD = "is-flex-fullhd"
let isFlexFullHDOnly = "is-flex-fullhd-only"
let isInlineMobile = "is-inline-mobile"
let isInlineTabletOnly = "is-inline-tablet-only"
let isInlineDesktopOnly = "is-inline-desktop-only"
let isInlineWidescreenOnly = "is-inline-widescreen-only"
let isInlineTouch = "is-inline-touch"
let isInlineTablet = "is-inline-tablet"
let isInlineDesktop = "is-inline-desktop"
let isInlineWidescreen = "is-inline-widescreen"
let isInlineFullHD = "is-inline-fullhd"
let isInlineFullHDOnly = "is-inline-fullhd-only"
let isInlineBlockMobile = "is-inline-block-mobile"
let isInlineBlockTabletOnly = "is-inline-block-tablet-only"
let isInlineBlockDesktopOnly = "is-inline-block-desktop-only"
let isInlineBlockWidescreenOnly = "is-inline-block-widescreen-only"
let isInlineBlockTouch = "is-inline-block-touch"
let isInlineBlockTablet = "is-inline-block-tablet"
let isInlineBlockDesktop = "is-inline-block-desktop"
let isInlineBlockWidescreen = "is-inline-block-widescreen"
let isInlineBlockFullHD = "is-inline-block-fullhd"
let isInlineBlockFullHDOnly = "is-inline-block-fullhd-only"
let isInlineFlexMobile = "is-inline-flex-mobile"
let isInlineFlexTabletOnly = "is-inline-flex-tablet-only"
let isInlineFlexDesktopOnly = "is-inline-flex-desktop-only"
let isInlineFlexWidescreenOnly = "is-inline-flex-widescreen-only"
let isInlineFlexTouch = "is-inline-flex-touch"
let isInlineFlexTablet = "is-inline-flex-tablet"
let isInlineFlexDesktop = "is-inline-flex-desktop"
let isInlineFlexWidescreen = "is-inline-flex-widescreen"
let isInlineFlexFullHD = "is-inline-flex-fullhd"
let isInlineFlexFullHDOnly = "is-inline-flex-fullhd-only"
let isHiddenMobile = "is-hidden-mobile"
let isHiddenTabletOnly = "is-hidden-tablet-only"
let isHiddenDesktopOnly = "is-hidden-desktop-only"
let isHiddenWidescreenOnly = "is-hidden-widescreen-only"
let isHiddenTouch = "is-hidden-touch"
let isHiddenTablet = "is-hidden-tablet"
let isHiddenDesktop = "is-hidden-desktop"
let isHiddenWidescreen = "is-hidden-widescreen"
let isHiddenFullHD = "is-hidden-fullhd"

(* colour *)
let hasTextWhite = "has-text-white"
let hasTextBlack = "has-text-black"
let hasTextLight = "has-text-light"
let hasTextDark = "has-text-dark"
let hasTextPrimary = "has-text-primary"
let hasTextInfo = "has-text-info"
let hasTextLink = "has-text-link"
let hasTextSuccess = "has-text-success"
let hasTextWarning = "has-text-warning"
let hasTextDanger = "has-text-danger"
let hasTextBlackBis = "has-text-black-bis"
let hasTextBlackTer = "has-text-black-ter"
let hasTextGreyDarker = "has-text-grey-darker"
let hasTextGreyDark = "has-text-grey-dark"
let hasTextGrey = "has-text-grey"
let hasTextGreyLight = "has-text-grey-light"
let hasTextGreyLighter = "has-text-grey-lighter"
let hasTextWhiteTer = "has-text-white-ter"
let hasTextWhiteBis = "has-text-white-bis"
let hasBackgroundWhite = "has-background-white"
let hasBackgroundBlack = "has-background-black"
let hasBackgroundLight = "has-background-light"
let hasBackgroundDark = "has-background-dark"
let hasBackgroundPrimary = "has-background-primary"
let hasBackgroundInfo = "has-background-info"
let hasBackgroundLink = "has-background-link"
let hasBackgroundSuccess = "has-background-success"
let hasBackgroundWarning = "has-background-warning"
let hasBackgroundDanger = "has-background-danger"
let hasBackgroundBlackBis = "has-background-black-bis"
let hasBackgroundBlackTer = "has-background-black-ter"
let hasBackgroundGreyDarker = "has-background-grey-darker"
let hasBackgroundGreyDark = "has-background-grey-dark"
let hasBackgroundGrey = "has-background-grey"
let hasBackgroundGreyLight = "has-background-grey-light"
let hasBackgroundGreyLighter = "has-background-grey-lighter"
let hasBackgroundWhiteTer = "has-background-white-ter"
let hasBackgroundWhiteBis = "has-background-white-bis"

(* typography *)
let isSize1 = "is-size-1"
let isSize2 = "is-size-2"
let isSize3 = "is-size-3"
let isSize4 = "is-size-4"
let isSize5 = "is-size-5"
let isSize6 = "is-size-6"
let isSize7 = "is-size-7"
let isSize1Mobile = "is-size-1-mobile"
let isSize2Mobile = "is-size-2-mobile"
let isSize3Mobile = "is-size-3-mobile"
let isSize4Mobile = "is-size-4-mobile"
let isSize5Mobile = "is-size-5-mobile"
let isSize6Mobile = "is-size-6-mobile"
let isSize7Mobile = "is-size-7-mobile"
let isSize1Tablet = "is-size-1-tablet"
let isSize2Tablet = "is-size-2-tablet"
let isSize3Tablet = "is-size-3-tablet"
let isSize4Tablet = "is-size-4-tablet"
let isSize5Tablet = "is-size-5-tablet"
let isSize6Tablet = "is-size-6-tablet"
let isSize7Tablet = "is-size-7-tablet"
let isSize1Touch = "is-size-1-touch"
let isSize2Touch = "is-size-2-touch"
let isSize3Touch = "is-size-3-touch"
let isSize4Touch = "is-size-4-touch"
let isSize5Touch = "is-size-5-touch"
let isSize6Touch = "is-size-6-touch"
let isSize7Touch = "is-size-7-touch"
let isSize1Desktop = "is-size-1-desktop"
let isSize2Desktop = "is-size-2-desktop"
let isSize3Desktop = "is-size-3-desktop"
let isSize4Desktop = "is-size-4-desktop"
let isSize5Desktop = "is-size-5-desktop"
let isSize6Desktop = "is-size-6-desktop"
let isSize7Desktop = "is-size-7-desktop"
let isSize1Widescreen = "is-size-1-widescreen"
let isSize2Widescreen = "is-size-2-widescreen"
let isSize3Widescreen = "is-size-3-widescreen"
let isSize4Widescreen = "is-size-4-widescreen"
let isSize5Widescreen = "is-size-5-widescreen"
let isSize6Widescreen = "is-size-6-widescreen"
let isSize7Widescreen = "is-size-7-widescreen"
let isSize1FullHD = "is-size-1-fullhd"
let isSize2FullHD = "is-size-2-fullhd"
let isSize3FullHD = "is-size-3-fullhd"
let isSize4FullHD = "is-size-4-fullhd"
let isSize5FullHD = "is-size-5-fullhd"
let isSize6FullHD = "is-size-6-fullhd"
let isSize7FullHD = "is-size-7-fullhd"
let hasTextCentered = "has-text-centered"
let hasTextJustified = "has-text-justified"
let hasTextLeft = "has-text-left"
let hasTextRight = "has-text-right"
let hasTextCenteredMobile = "has-text-centered-mobile"
let hasTextJustifiedMobile = "has-text-justified-mobile"
let hasTextLeftMobile = "has-text-left-mobile"
let hasTextRightMobile = "has-text-right-mobile"
let hasTextCenteredTablet = "has-text-centered-tablet"
let hasTextJustifiedTablet = "has-text-justified-tablet"
let hasTextLeftTablet = "has-text-left-tablet"
let hasTextRightTablet = "has-text-right-tablet"
let hasTextCenteredTabletOnly = "has-text-centered-tablet-only"
let hasTextJustifiedTabletOnly = "has-text-justified-tablet-only"
let hasTextLeftTabletOnly = "has-text-left-tablet-only"
let hasTextRightTabletOnly = "has-text-right-tablet-only"
let hasTextCenteredTouch = "has-text-centered-touch"
let hasTextJustifiedTouch = "has-text-justified-touch"
let hasTextLeftTouch = "has-text-left-touch"
let hasTextRightTouch = "has-text-right-touch"
let hasTextCenteredDesktop = "has-text-centered-desktop"
let hasTextJustifiedDesktop = "has-text-justified-desktop"
let hasTextLeftDesktop = "has-text-left-desktop"
let hasTextRightDesktop = "has-text-right-desktop"
let hasTextCenteredDesktopOnly = "has-text-centered-desktop-only"
let hasTextJustifiedDesktopOnly = "has-text-justified-desktop-only"
let hasTextLeftDesktopOnly = "has-text-left-desktop-only"
let hasTextRightDesktopOnly = "has-text-right-desktop-only"
let hasTextCenteredWidescreen = "has-text-centered-widescreen"
let hasTextJustifiedWidescreen = "has-text-justified-widescreen"
let hasTextLeftWidescreen = "has-text-left-widescreen"
let hasTextRightWidescreen = "has-text-right-widescreen"
let hasTextCenteredWidescreenOnly = "has-text-centered-widescreen-only"
let hasTextJustifiedWidescreenOnly = "has-text-justified-widescreen-only"
let hasTextLeftWidescreenOnly = "has-text-left-widescreen-only"
let hasTextRightWidescreenOnly = "has-text-right-widescreen-only"
let hasTextCenteredFullHD = "has-text-centered-fullhd"
let hasTextJustifiedFullHD = "has-text-justified-fullhd"
let hasTextLeftFullHD = "has-text-left-fullhd"
let hasTextRightFullHD = "has-text-right-fullhd"
let isCapitalized = "is-capitalized"
let isLowercase = "is-lowercase"
let isUppercase = "is-uppercase"
let isItalic = "is-italic"
let hasTextWeightLight = "has-text-weight-light"
let hasTextWeightNormal = "has-text-weight-normal"
let hasTextWeightSemibold = "has-text-weight-semibold"
let hasTextWeightBold = "has-text-weight-bold"

(* columns *)
let columns = "columns"
let column = "column"
let is1Mobile = "is-1-mobile"
let is2Mobile = "is-2-mobile"
let is3Mobile = "is-3-mobile"
let is4Mobile = "is-4-mobile"
let is5Mobile = "is-5-mobile"
let is6Mobile = "is-6-mobile"
let is7Mobile = "is-7-mobile"
let is8Mobile = "is-8-mobile"
let is9Mobile = "is-9-mobile"
let is01Mobile = "is-1-mobile"
let is02Mobile = "is-2-mobile"
let is03Mobile = "is-3-mobile"
let is04Mobile = "is-4-mobile"
let is05Mobile = "is-5-mobile"
let is06Mobile = "is-6-mobile"
let is07Mobile = "is-7-mobile"
let is08Mobile = "is-8-mobile"
let is09Mobile = "is-9-mobile"
let is10Mobile = "is-10-mobile"
let is11Mobile = "is-11-mobile"
let is1Tablet = "is-1-tablet"
let is2Tablet = "is-2-tablet"
let is3Tablet = "is-3-tablet"
let is4Tablet = "is-4-tablet"
let is5Tablet = "is-5-tablet"
let is6Tablet = "is-6-tablet"
let is7Tablet = "is-7-tablet"
let is8Tablet = "is-8-tablet"
let is9Tablet = "is-9-tablet"
let is01Tablet = "is-1-tablet"
let is02Tablet = "is-2-tablet"
let is03Tablet = "is-3-tablet"
let is04Tablet = "is-4-tablet"
let is05Tablet = "is-5-tablet"
let is06Tablet = "is-6-tablet"
let is07Tablet = "is-7-tablet"
let is08Tablet = "is-8-tablet"
let is09Tablet = "is-9-tablet"
let is10Tablet = "is-10-tablet"
let is11Tablet = "is-11-tablet"
let is1Desktop = "is-1-desktop"
let is2Desktop = "is-2-desktop"
let is3Desktop = "is-3-desktop"
let is4Desktop = "is-4-desktop"
let is5Desktop = "is-5-desktop"
let is6Desktop = "is-6-desktop"
let is7Desktop = "is-7-desktop"
let is8Desktop = "is-8-desktop"
let is9Desktop = "is-9-desktop"
let is01Desktop = "is-1-desktop"
let is02Desktop = "is-2-desktop"
let is03Desktop = "is-3-desktop"
let is04Desktop = "is-4-desktop"
let is05Desktop = "is-5-desktop"
let is06Desktop = "is-6-desktop"
let is07Desktop = "is-7-desktop"
let is08Desktop = "is-8-desktop"
let is09Desktop = "is-9-desktop"
let is10Desktop = "is-10-desktop"
let is11Desktop = "is-11-desktop"
let is1Widescreen = "is-1-widescreen"
let is2Widescreen = "is-2-widescreen"
let is3Widescreen = "is-3-widescreen"
let is4Widescreen = "is-4-widescreen"
let is5Widescreen = "is-5-widescreen"
let is6Widescreen = "is-6-widescreen"
let is7Widescreen = "is-7-widescreen"
let is8Widescreen = "is-8-widescreen"
let is9Widescreen = "is-9-widescreen"
let is01Widescreen = "is-1-widescreen"
let is02Widescreen = "is-2-widescreen"
let is03Widescreen = "is-3-widescreen"
let is04Widescreen = "is-4-widescreen"
let is05Widescreen = "is-5-widescreen"
let is06Widescreen = "is-6-widescreen"
let is07Widescreen = "is-7-widescreen"
let is08Widescreen = "is-8-widescreen"
let is09Widescreen = "is-9-widescreen"
let is10Widescreen = "is-10-widescreen"
let is11Widescreen = "is-11-widescreen"
let is1FullHD = "is-1-fullhd"
let is2FullHD = "is-2-fullhd"
let is3FullHD = "is-3-fullhd"
let is4FullHD = "is-4-fullhd"
let is5FullHD = "is-5-fullhd"
let is6FullHD = "is-6-fullhd"
let is7FullHD = "is-7-fullhd"
let is8FullHD = "is-8-fullhd"
let is9FullHD = "is-9-fullhd"
let is01FullHD = "is-1-fullhd"
let is02FullHD = "is-2-fullhd"
let is03FullHD = "is-3-fullhd"
let is04FullHD = "is-4-fullhd"
let is05FullHD = "is-5-fullhd"
let is06FullHD = "is-6-fullhd"
let is07FullHD = "is-7-fullhd"
let is08FullHD = "is-8-fullhd"
let is09FullHD = "is-9-fullhd"
let is10FullHD = "is-10-fullhd"
let is11FullHD = "is-11-fullhd"
let isThreeQuarters = "is-three-quarters"
let isTwoThirds = "is-two-thirds"
let isHalf = "is-half"
let isOneThird = "is-one-third"
let isOneQuarter = "is-one-quarter"
let isFourFifths = "is-four-fifths"
let isThreeFifths = "is-three-fifths"
let isTwoFifths = "is-two-fifths"
let isOneFifth = "is-one-fifth"
let isThreeQuartersMobile = "is-three-quarters-mobile"
let isTwoThirdsMobile = "is-two-thirds-mobile"
let isHalfMobile = "is-half-mobile"
let isOneThirdMobile = "is-one-third-mobile"
let isOneQuarterMobile = "is-one-quarter-mobile"
let isFourFifthsMobile = "is-four-fifths-mobile"
let isThreeFifthsMobile = "is-three-fifths-mobile"
let isTwoFifthsMobile = "is-two-fifths-mobile"
let isOneFifthMobile = "is-one-fifth-mobile"
let isThreeQuartersTablet = "is-three-quarters-tablet"
let isTwoThirdsTablet = "is-two-thirds-tablet"
let isHalfTablet = "is-half-tablet"
let isOneThirdTablet = "is-one-third-tablet"
let isOneQuarterTablet = "is-one-quarter-tablet"
let isFourFifthsTablet = "is-four-fifths-tablet"
let isThreeFifthsTablet = "is-three-fifths-tablet"
let isTwoFifthsTablet = "is-two-fifths-tablet"
let isOneFifthTablet = "is-one-fifth-tablet"
let isThreeQuartersDesktop = "is-three-quarters-desktop"
let isTwoThirdsDesktop = "is-two-thirds-desktop"
let isHalfDesktop = "is-half-desktop"
let isOneThirdDesktop = "is-one-third-desktop"
let isOneQuarterDesktop = "is-one-quarter-desktop"
let isFourFifthsDesktop = "is-four-fifths-desktop"
let isThreeFifthsDesktop = "is-three-fifths-desktop"
let isTwoFifthsDesktop = "is-two-fifths-desktop"
let isOneFifthDesktop = "is-one-fifth-desktop"
let isThreeQuartersWidescreen = "is-three-quarters-widescreen"
let isTwoThirdsWidescreen = "is-two-thirds-widescreen"
let isHalfWidescreen = "is-half-widescreen"
let isOneThirdWidescreen = "is-one-third-widescreen"
let isOneQuarterWidescreen = "is-one-quarter-widescreen"
let isFourFifthsWidescreen = "is-four-fifths-widescreen"
let isThreeFifthsWidescreen = "is-three-fifths-widescreen"
let isTwoFifthsWidescreen = "is-two-fifths-widescreen"
let isOneFifthWidescreen = "is-one-fifth-widescreen"
let isThreeQuartersFullHD = "is-three-quarters-fullhd"
let isTwoThirdsFullHD = "is-two-thirds-fullhd"
let isHalfFullHD = "is-half-fullhd"
let isOneThirdFullHD = "is-one-third-fullhd"
let isOneQuarterFullHD = "is-one-quarter-fullhd"
let isFourFifthsFullHD = "is-four-fifths-fullhd"
let isThreeFifthsFullHD = "is-three-fifths-fullhd"
let isTwoFifthsFullHD = "is-two-fifths-fullhd"
let isOneFifthFullHD = "is-one-fifth-fullhd"
let isOffsetThreeQuarters = "is-offset-three-quarters"
let isOffsetTwoThirds = "is-offset-two-thirds"
let isOffsetHalf = "is-offset-half"
let isOffsetOneThird = "is-offset-one-third"
let isOffsetOneQuarter = "is-offset-one-quarter"
let isOffsetFourFifths = "is-offset-four-fifths"
let isOffsetThreeFifths = "is-offset-three-fifths"
let isOffsetTwoFifths = "is-offset-two-fifths"
let isOffsetOneFifth = "is-offset-one-fifth"
let isOffset1 = "is-1"
let isOffset2 = "is-2"
let isOffset3 = "is-3"
let isOffset4 = "is-4"
let isOffset5 = "is-5"
let isOffset6 = "is-6"
let isOffset7 = "is-7"
let isOffset8 = "is-8"
let isOffset9 = "is-9"
let isOffset01 = "is-offset-1"
let isOffset02 = "is-offset-2"
let isOffset03 = "is-offset-3"
let isOffset04 = "is-offset-4"
let isOffset05 = "is-offset-5"
let isOffset06 = "is-offset-6"
let isOffset07 = "is-offset-7"
let isOffset08 = "is-offset-8"
let isOffset09 = "is-offset-9"
let isOffset10 = "is-offset-10"
let isOffset11 = "is-offset-11"
let isNarrow = "is-narrow"
let isNarrowMobile = "is-narrow-mobile"
let isNarrowTouch = "is-narrow-touch"
let isNarrowTablet = "is-narrow-tablet"
let isNarrowDesktop = "is-narrow-desktop"
let isNarrowWidescreen = "is-narrow-widescreen"
let isNarrowFullHD = "is-narrow-fullhd"
let isGapless = "is-gapless"
let isMultiline = "is-multiline"
let isVariable = "is-variable"
let isCentered = "is-centered"

(* layout *)
let container = "container"
let isFluid = "is-fluid"
let isFullHD = "is-fullhd"
let isWidescreen = "is-widescreen"
let level = "level"
let levelLeft = "level-left"
let levelRight = "level-right"
let levelItem = "level-item"
let media = "media"
let mediaLeft = "media-left"
let mediaContent = "media-content"
let mediaRight = "media-right"
let hero = "hero"
let heroBody = "hero-body"
let heroHead = "hero-head"
let heroFoot = "hero-foot"
let section = "section"
let footer = "footer"        
let tile = "tile"
let isAncestor = "is-ancestor"
let isParent = "is-parent"
let isChild = "is-child"
let isVertical = "is-vertical"

(* form *)
let label = "label"
let input = "input"
let textarea = "textarea"
let select = "select"
let checkbox = "checkbox"
let radio = "radio"
let help = "help"
let control = "control"
let field = "field"
let hasIconsLeft = "has-icons-left"
let hasIconsRight = "has-icons-right"
let hasAddons = "has-addons"
let isExpanded = "is-expanded"
let isFullWidth = "is-fullwidth"
let hasAddonsCentered = "has-addons-centered"
let hasAddonsRight = "has-addons-right"
let isGrouped = "is-grouped"
let isGroupedCentered = "is-grouped-centered"
let isGroupedRight = "is-grouped-right"
let isGroupedMultiline = "is-grouped-multiline"
let isHorizontal = "is-horizontal"
let fieldLabel = "field-label"
let fieldBody = "field-body"
let isMultiple = "is-multiple"
let file = "file"
let fileLabel = "file-label"
let fileInput = "file-input"
let fileCTA = "file-cta"
let fileIcon = "file-icon"
let fileName = "file-name"
let hasName = "has-name"

(* elements *)
let box = "box"
let button = "button"
let buttons = "buttons"
let isOutlined = "is-outlined"
let isInverted = "is-inverted"
let isSelected = "is-selected"
let content = "content"
let delete = "delete"
let icon = "icon"
  (*
  let -- fas = "fas"
  let -- faLg = "fa-lg"
  let -- fa2x = "fa-2x"
  let -- fa3x = "fa-3x"
  *)
let image = "image"
let is16x16 = "is-16x16"
let is24x24 = "is-24x24"
let is32x32 = "is-32x32"
let is48x48 = "is-48x48"
let is64x64 = "is-64x64"
let is96x96 = "is-96x96"
let is016x016 = "is-16x16"
let is024x024 = "is-24x24"
let is032x032 = "is-32x32"
let is048x048 = "is-48x48"
let is064x064 = "is-64x64"
let is096x096 = "is-96x96"
let is128x128 = "is-128x128"
let isSquare = "is-square"
let is1by1 = "is-1by1"
let is5by4 = "is-5by4"
let is4by3 = "is-4by3"
let is3by2 = "is-3by2"
let is5by3 = "is-5by3"
let is16by9 = "is-16by9"
let is2by1 = "is-2by1"
let is3by1 = "is-3by1"
let is4by5 = "is-4by5"
let is3by4 = "is-3by4"
let is2by3 = "is-2by3"
let is3by5 = "is-3by5"
let is9by16 = "is-9by16"
let is1by2 = "is-1by2"
let is1by3 = "is-1by3"
let is01by01 = "is-1by1"
let is05by04 = "is-5by4"
let is04by03 = "is-4by3"
let is03by02 = "is-3by2"
let is05by03 = "is-5by3"
let is16by09 = "is-16by9"
let is02by01 = "is-2by1"
let is03by01 = "is-3by1"
let is04by05 = "is-4by5"
let is03by04 = "is-3by4"
let is02by03 = "is-2by3"
let is03by05 = "is-3by5"
let is09by16 = "is-9by16"
let is01by02 = "is-1by2"
let is01by03 = "is-1by3"
let notification = "notification"
let progress = "progress"
let table = "table"
let isBordered = "is-bordered"
let isStriped = "is-striped"
let tag = "tag"
let tags = "tags"
let isDelete = "is-delete"
let title = "title"
let subtitle = "subtitle"
let isSpaced = "is-spaced"

(* components *)
let breadcrumb = "breadcrumb"
let hasArrowSeparator = "has-arrow-separator"
let hasBulletSeparator = "has-bullet-separator"
let hasDotSeparator = "has-dot-separator"
let hasSucceedsSeparator = "has-succeeds-separator"
let card = "card"
let cardHeader = "card-header"
let cardHeaderTitle = "card-header-title"
let cardHeaderIcon = "card-header-icon"
let cardImage = "card-image"
let cardContent = "card-content"
let cardFooter = "card-footer"
let cardFooterItem = "card-footer-item"
let dropdown = "dropdown"
let dropdownTrigger = "dropdown-trigger"
let dropdownMenu = "dropdown-menu"
let dropdownContent = "dropdown-content"
let dropdownItem = "dropdown-item"
let dropdownDivider = "dropdown-divider"
let menu = "menu"
let menuLabel = "menu-label"
let menuList = "menu-list"
let message = "message"
let messageBody = "message-body"
let messageHeader = "message-header"
let modal = "modal"
let modalBackground = "modal-background"
let modalContent = "modal-content"
let modalClose = "modal-close"
let modalCard = "modal-card"
let modalCardHead = "modal-card-head"
let modalCardTitle = "modal-card-title"
let modalCardBody = "modal-card-body"
let modalCardFoot = "modal-card-foot"
let navbar = "navbar"
let navbarBrand = "navbar-brand"
let navbarBurger = "navbar-burger"
let navbarMenu = "navbar-menu"
let navbarStart = "navbar-start"
let navbarEnd = "navbar-end"
let navbarItem = "navbar-item"
let navbarLink = "navbar-link"
let navbarDropdown = "navbar-dropdown"
let navbarDivider = "navbar-divider"
let isFixedTop = "is-fixed-top"
let isFixedBottom = "is-fixed-bottom"
let hasNavbarFixedTop = "has-navbar-fixed-top"
let hasNavbarFixedBottom = "has-navbar-fixed-bottom"
let hasDropdown = "has-dropdown"
let hasDropdownUp = "has-dropdown-up"
let isTransparent = "is-transparent"
let pagination = "pagination"
let paginationPrevious = "pagination-previous"
let paginationNext = "pagination-next"
let paginationList = "pagination-list"
let paginationLink = "pagination-link"
let paginationEllipsis = "pagination-ellipsis"
let isCurrent = "is-current"
let panel = "panel"
let panelHeading = "panel-heading"
let panelTabs = "panel-tabs"
let panelBlock = "panel-block"
let panelIcon = "panel-icon"
let tabs = "tabs"
let isToggle = "is-toggle"
let isToggleRounded = "is-toggle-rounded"