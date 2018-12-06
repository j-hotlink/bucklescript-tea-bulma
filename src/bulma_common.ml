
module Class = Bulma_class

type horizontalAlignment =
  | Left
  | Center
  | Right


let horizontal_lr_class = function
  | Right -> Class.isRight
  | _     -> Class.none


let horizontal_lrc_class = function
  | Left   -> Class.none
  | Center -> Class.isCentered
  | Right  -> Class.isRight


let horizontal_grouped_alignment = function
  | Left   -> Class.none
  | Center -> Class.isGroupedCentered
  | Right  -> Class.isGroupedRight


let horizontal_addon_alignment = function
  | Left   -> Class.none
  | Center -> Class.hasAddonsCentered
  | Right  -> Class.hasAddonsRight


type verticalAlignment =
  | Top
  | Bottom


type verticalDirection =
  | Up
  | Down


let vertical_direction_class = function
  | Up    -> Class.isUp
  | Down  -> Class.none


let dropdirection_class = function
  | Up   -> Class.hasDropdownUp
  | Down -> Class.none


type size =
  | Small
  | Standard
  | Medium
  | Large


let size_class = function
  | Small    -> Class.isSmall
  | Standard -> Class.none
  | Medium   -> Class.isMedium
  | Large    -> Class.isLarge


type width =
  | Auto
  | Width1
  | Width2
  | Width3
  | Width4
  | Width5
  | Width6
  | Width7
  | Width8
  | Width9
  | Width10
  | Width11


let width_class = function
  | Auto    -> Class.none
  | Width1  -> Class.is1
  | Width2  -> Class.is2
  | Width3  -> Class.is3
  | Width4  -> Class.is4
  | Width5  -> Class.is5
  | Width6  -> Class.is6
  | Width7  -> Class.is7
  | Width8  -> Class.is8
  | Width9  -> Class.is9
  | Width10 -> Class.is10
  | Width11 -> Class.is11


type state =
  | Blur
  | Hover
  | Focus
  | Active
  | Loading


let state_class = function
  | Blur    -> Class.none
  | Hover   -> Class.isHovered
  | Focus   -> Class.isFocused
  | Active  -> Class.isActive
  | Loading -> Class.isLoading


type color =
  | Default
  | White
  | Light
  | Dark
  | Black
  | Primary
  | Link
  | Info
  | Success
  | Warning
  | Danger


let color_class = function
  | Default -> Class.none
  | White   -> Class.isWhite
  | Light   -> Class.isLight
  | Dark    -> Class.isDark
  | Black   -> Class.isBlack
  | Primary -> Class.isPrimary
  | Link    -> Class.isLink
  | Info    -> Class.isInfo
  | Success -> Class.isSuccess
  | Warning -> Class.isWarning
  | Danger  -> Class.isDanger

