open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common

let container attributes =
  div ( [ Class.attribute [ Class.container ] ] @ attributes )


let fluidContainer attributes =
  div
    ( [ Class.attribute [ Class.container
                        ; Class.isFluid
                        ]
      ] @ attributes
    )


let widescreenContainer attributes =
  div
    ( [ Class.attribute [ Class.container
                        ; Class.isWidescreen
                        ]
      ] @ attributes
    )

let fullHDContainer attributes =
  div
    ( [ Class.attribute [ Class.container
                        ; Class.isFullHD
                        ]
      ] @ attributes
    )


module Level = struct

  let level ?horizontal:( horizontal=false ) attributes =
    nav
      ( [ Class.attribute [ Class.level
                          ; Class.enable horizontal Class.isHorizontal
                          ]
        ] @ attributes
      )

  
  let horizontal attributes =
    level ~horizontal:true attributes

  
  let centered attributes =
    level ~horizontal:false attributes


  let left attributes =
    div ( [ Class.attribute [ Class.levelLeft ] ] @ attributes )


  let right attributes =
    div ( [ Class.attribute [ Class.levelRight ] ] @ attributes )

  
  let item attributes =
    div ( [ Class.attribute [ Class.levelItem ] ] @ attributes )

  
  let text attributes =
    p ( [ Class.attribute [ Class.levelItem ] ] @ attributes )

  
  let link attributes =
    a ( [ Class.attribute [ Class.levelItem ] ] @ attributes )

  (*
easyLevelItemWithHeading : List (Attribute msg) -> String -> String -> LevelItem msg
easyLevelItemWithHeading attrs heading title
  = levelItem attrs
    [ div []
      [ p [ class "heading" ] [ text heading ]
      , p [ class "title"   ] [ text title   ]
      ]
    ]
     *)
end

module Media = struct

  let media attributes =
    article ( [ Class.attribute [ Class.media ] ] @ attributes )

  let left attributes =
    div ( [ Class.attribute [ Class.mediaLeft ] ] @ attributes )

  let content attributes =
    div ( [ Class.attribute [ Class.mediaContent ] ] @ attributes )
      
  let right attributes =
    div ( [ Class.attribute [ Class.mediaRight ] ] @ attributes )

end

module Hero = struct


  let hero ?bold:( bold=false ) ?size:( size=Common.Standard ) ?color:( color=Common.Default ) attributes =
    section
      ( [ Class.attribute [ Class.mediaContent
                          ; Class.enable bold Class.isBold
                          ; Common.size_class size
                          ; Common.color_class color
                          ]
        ] @ attributes
      )

  let header attributes =
    div ( [ Class.attribute [ Class.heroHead ] ] @ attributes )

  let body attributes =
    div ( [ Class.attribute [ Class.heroBody ] ] @ attributes )

  let footer attributes =
    div ( [ Class.attribute [ Class.heroFoot ] ] @ attributes )

    (*
easyHero : HeroModifiers -> List (Attribute msg) -> { head : HeroPartition msg, body : HeroPartition msg, foot : HeroPartition msg } -> Hero msg
easyHero mods attrs {head,body,foot}
  = hero mods attrs [ head, body, foot ]
    *)

end

type spacing =
  | NotSpaced
  | Spaced
  | VerySpaced


let spacing_class = function
  | NotSpaced  -> Class.none
  | Spaced     -> Class.isMedium
  | VerySpaced -> Class.isLarge


let section ?spacing:( spacing=Spaced ) attributes =
  section
    ( [ Class.attribute [ Class.heroBody
                        ; spacing_class spacing
                        ]
      ] @ attributes
    )

let footer attributes =
  footer ( [ Class.attribute [ Class.footer ] ] @ attributes )


let width_class = function
  | Common.Auto    -> Class.none
  | Common.Width1  -> Class.is1
  | Common.Width2  -> Class.is2
  | Common.Width3  -> Class.is3
  | Common.Width4  -> Class.is4
  | Common.Width5  -> Class.is5
  | Common.Width6  -> Class.is6
  | Common.Width7  -> Class.is7
  | Common.Width8  -> Class.is8
  | Common.Width9  -> Class.is9
  | Common.Width10 -> Class.is10
  | Common.Width11 -> Class.is11

module Tile = struct
  
  let tile ?width:( width=Common.Auto ) ?vertical:( vertical=false )
      ?ancestor:( ancestor=false ) ?parent:( parent=false ) ?child:( child=false ) attributes =
    div
      ( [ Class.attribute [ Class.tile
                          ; width_class width
                          ; Class.enable vertical Class.isVertical
                          ; Class.enable ancestor Class.isAncestor
                          ; Class.enable parent   Class.isParent
                          ; Class.enable child    Class.isChild
                          ]
        ] @ attributes
      )

  let vertical ?width:( width=Common.Auto )
      ?ancestor:( ancestor=false )
      ?parent:( parent=false )
      ?child:( child=false )
      attributes =
    tile ~width ~ancestor ~parent ~child ~vertical:true attributes


  let ancestor ?width:( width=Common.Auto )
      ?vertical:( vertical=false )
      ?parent:( parent=false )
      ?child:( child=false )
      attributes =
    tile ~width ~vertical ~parent ~child ~ancestor:true attributes


  let parent ?width:( width=Common.Auto )
      ?vertical:( vertical=false )
      ?ancestor:( ancestor=false )
      ?child:( child=false )
      attributes =
    tile ~width ~vertical ~ancestor ~child ~parent:true attributes

  
  let child ?width:( width=Common.Auto )
      ?vertical:( vertical=false )
      ?ancestor:( ancestor=false )
      ?parent:( parent=false )
      attributes =
    tile ~width ~vertical ~ancestor ~parent ~child:true attributes

end
