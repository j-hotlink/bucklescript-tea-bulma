open Bulma_common

type 'a t =
  { mobile     : 'a
  ; tablet     : 'a
  ; desktop    : 'a
  ; widescreen : 'a
  ; fullHD     : 'a
  }

type display =
  | Block       
  | Flex       
  | Hidden
  | Inline    
  | InlineBlock
  | InlineFlex


let display_class = function
  | Block       -> Class.isBlock
  | Flex        -> Class.isFlex
  | Inline      -> Class.isInline
  | InlineBlock -> Class.isInlineBlock
  | InlineFlex  -> Class.isInlineFlex
  | Hidden      -> Class.isHidden

let width_class = function
  | Auto    -> Class.none
  | Width1  -> Class.isOffset01
  | Width2  -> Class.isOffset02
  | Width3  -> Class.isOffset03
  | Width4  -> Class.isOffset04
  | Width5  -> Class.isOffset05
  | Width6  -> Class.isOffset06
  | Width7  -> Class.isOffset07
  | Width8  -> Class.isOffset08
  | Width9  -> Class.isOffset09
  | Width10 -> Class.isOffset10
  | Width11 -> Class.isOffset11

module Mobile = struct

  let width_class = function
    | Some Auto    -> Class.none
    | Some Width1  -> Class.is01Mobile
    | Some Width2  -> Class.is02Mobile
    | Some Width3  -> Class.is03Mobile
    | Some Width4  -> Class.is04Mobile
    | Some Width5  -> Class.is05Mobile
    | Some Width6  -> Class.is06Mobile
    | Some Width7  -> Class.is07Mobile
    | Some Width8  -> Class.is08Mobile
    | Some Width9  -> Class.is09Mobile
    | Some Width10 -> Class.is10Mobile
    | Some Width11 -> Class.is11Mobile
    | None         -> Class.isNarrowMobile

  let display_class = function
    | Block       -> Class.isBlockMobile
    | Flex        -> Class.isFlexMobile
    | Inline      -> Class.isInlineMobile
    | InlineBlock -> Class.isInlineBlockMobile
    | InlineFlex  -> Class.isInlineFlexMobile
    | Hidden      -> Class.isHiddenMobile

end

module Tablet = struct

  let width_class = function
    | Some Auto    -> Class.none
    | Some Width1  -> Class.is01Tablet
    | Some Width2  -> Class.is02Tablet
    | Some Width3  -> Class.is03Tablet
    | Some Width4  -> Class.is04Tablet
    | Some Width5  -> Class.is05Tablet
    | Some Width6  -> Class.is06Tablet
    | Some Width7  -> Class.is07Tablet
    | Some Width8  -> Class.is08Tablet
    | Some Width9  -> Class.is09Tablet
    | Some Width10 -> Class.is10Tablet
    | Some Width11 -> Class.is11Tablet
    | None         -> Class.isNarrowTablet

  let display_class = function
    | Block       -> Class.isBlockTabletOnly
    | Flex        -> Class.isFlexTabletOnly
    | Inline      -> Class.isInlineTabletOnly
    | InlineBlock -> Class.isInlineBlockTabletOnly
    | InlineFlex  -> Class.isInlineFlexTabletOnly
    | Hidden      -> Class.isHiddenTabletOnly

end

module Desktop = struct

  let width_class = function
    | Some Auto    -> Class.none
    | Some Width1  -> Class.is01Desktop
    | Some Width2  -> Class.is02Desktop
    | Some Width3  -> Class.is03Desktop
    | Some Width4  -> Class.is04Desktop
    | Some Width5  -> Class.is05Desktop
    | Some Width6  -> Class.is06Desktop
    | Some Width7  -> Class.is07Desktop
    | Some Width8  -> Class.is08Desktop
    | Some Width9  -> Class.is09Desktop
    | Some Width10 -> Class.is10Desktop
    | Some Width11 -> Class.is11Desktop
    | None         -> Class.isNarrowDesktop

  let display_class = function
    | Block       -> Class.isBlockDesktopOnly
    | Flex        -> Class.isFlexDesktopOnly
    | Inline      -> Class.isInlineDesktopOnly
    | InlineBlock -> Class.isInlineBlockDesktopOnly
    | InlineFlex  -> Class.isInlineFlexDesktopOnly
    | Hidden      -> Class.isHiddenDesktopOnly

end

module Widescreen = struct

  let width_class = function
    | Some Auto    -> Class.none
    | Some Width1  -> Class.is01Widescreen
    | Some Width2  -> Class.is02Widescreen
    | Some Width3  -> Class.is03Widescreen
    | Some Width4  -> Class.is04Widescreen
    | Some Width5  -> Class.is05Widescreen
    | Some Width6  -> Class.is06Widescreen
    | Some Width7  -> Class.is07Widescreen
    | Some Width8  -> Class.is08Widescreen
    | Some Width9  -> Class.is09Widescreen
    | Some Width10 -> Class.is10Widescreen
    | Some Width11 -> Class.is11Widescreen
    | None         -> Class.isNarrowWidescreen

  let display_class = function
    | Block       -> Class.isBlockWidescreenOnly
    | Flex        -> Class.isFlexWidescreenOnly
    | Inline      -> Class.isInlineWidescreenOnly
    | InlineBlock -> Class.isInlineBlockWidescreenOnly
    | InlineFlex  -> Class.isInlineFlexWidescreenOnly
    | Hidden      -> Class.isHiddenWidescreenOnly

end

module FullHd = struct

  let width_class = function
    | Some Auto    -> Class.none
    | Some Width1  -> Class.is01FullHD
    | Some Width2  -> Class.is02FullHD
    | Some Width3  -> Class.is03FullHD
    | Some Width4  -> Class.is04FullHD
    | Some Width5  -> Class.is05FullHD
    | Some Width6  -> Class.is06FullHD
    | Some Width7  -> Class.is07FullHD
    | Some Width8  -> Class.is08FullHD
    | Some Width9  -> Class.is09FullHD
    | Some Width10 -> Class.is10FullHD
    | Some Width11 -> Class.is11FullHD
    | None         -> Class.isNarrowFullHD

  let display_class = function
    | Block       -> Class.isBlockFullHDOnly
    | Flex        -> Class.isFlexFullHDOnly
    | Inline      -> Class.isInlineFullHDOnly
    | InlineBlock -> Class.isInlineBlockFullHDOnly
    | InlineFlex  -> Class.isInlineFlexFullHDOnly
    | Hidden      -> Class.isHiddenFullHD

end

let displayByDevice {mobile;tablet;desktop;widescreen;fullHD}
  = [ Mobile.display_class mobile
    ; Tablet.display_class tablet
    ; Desktop.display_class desktop
    ; Widescreen.display_class widescreen
    ; FullHd.display_class fullHD
    ]
