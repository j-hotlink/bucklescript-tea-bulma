open Tea
open Html2

module Class = Bulma_class
module Common = Bulma_common


let box attributes =
  div (  [ Class.attribute [ Class.box ] ] @ attributes )


let icon ?size:( size=Common.Standard ) attributes =
  span
    ( [ Class.attribute [ Class.icon
                        ; Common.size_class size
                        ]
      ] @ attributes
    )


let button
    ?disabled:( disabled=false ) ?outlined:( outlined=false ) ?inverted:( inverted=false ) ?rounded:( rounded=false )
    ?size:( size=Common.Standard ) ?state:( state=Common.Blur ) ?color:( color=Common.Default ) ?static:( static=false )
    ?left:( left=[] ) ?right:( right=[] )
    attributes content =
  let children =
    match content with
    | []      -> left @                       right
    | content -> left @ [ span [] content ] @ right
  in
  a
    ( [ Attributes.disabled disabled
      ; Class.attribute [ Class.button
                        ; Class.enable static   Class.isStatic
                        ; Class.enable outlined Class.isOutlined
                        ; Class.enable inverted Class.isInverted
                        ; Class.enable rounded  Class.isRounded
                        ; Class.enable ( color = Common.Default ) Class.isSelected
                        ; Common.color_class color
                        ; Common.size_class size
                        ; Common.state_class state
                        ]
      ] @ attributes
    )
    children

  
(*
let easyButton mods attrs msg str =
  button mods
    (onClick msg :: attrs)
    [ text str ]
*)

let buttons ?alignment:( alignment=Common.Left ) attributes =
  div
    ( [ Class.attribute [ Class.buttons
                        ; Common.horizontal_lrc_class alignment
                        ]
      ] @ attributes
    )


let connectedButtons ?alignment:( alignment=Common.Left ) attributes =
  div
    ( [ Class.attribute [ Class.buttons
                        ; Common.horizontal_lrc_class alignment
                        ; Class.hasAddons
                        ]
      ] @ attributes
    )


let content ?size:( size=Common.Standard ) attributes =
  div
    ( [ Class.attribute [ Class.content
                        ; Common.size_class size
                        ]
      ] @ attributes
    )


let delete attributes =
  a ( [ Class.attribute [ Class.delete ] ] @ attributes )

(*
easyDelete attrs msg = delete (onClick msg :: attrs) []
*)

module Image = struct

  type size =
    | X16
    | X24
    | X32
    | X48
    | X64
    | X96
    | X128
    | Unbounded

  type shape =
    | Natural
    | OneByOne of size
    | FourByThree
    | ThreeByTwo
    | SixteenByNine
    | TwoByOne

  let shape_class = function
    | OneByOne Unbounded -> Class.is1by1
    | OneByOne X16       -> Class.is16x16
    | OneByOne X24       -> Class.is24x24
    | OneByOne X32       -> Class.is32x32
    | OneByOne X48       -> Class.is48x48
    | OneByOne X64       -> Class.is64x64
    | OneByOne X96       -> Class.is96x96
    | OneByOne X128      -> Class.is128x128
    | FourByThree        -> Class.is4by3
    | ThreeByTwo         -> Class.is3by2
    | SixteenByNine      -> Class.is16by9
    | TwoByOne           -> Class.is2by1
    | Natural            -> Class.none


  let image ?shape:( shape=Natural ) attributes =
    figure
      ( [ Class.attribute [ Class.image
                          ; shape_class shape
                          ]
        ] @ attributes
      )

(*
easyImage mods attrs src = image mods attrs [ img [ Attr.src src ] [] ]
*)

  (*
easyPlaceholderImage : ImageShape -> List (Attribute msg) -> Image msg
easyPlaceholderImage shape attrs
  = image shape attrs
    [ flip img []
      [ Attr.src
        <| (\(h,w) -> "http://bulma.io/images/placeholders/" ++ String.fromInt h ++ "x" ++ String.fromInt w ++ ".png")
        <| case shape of
            OneByOne X16       -> (  16,  16  )
            OneByOne X24       -> (  24,  24  )
            OneByOne X32       -> (  32,  32  )
            OneByOne X48       -> (  48,  48  )
            OneByOne X64       -> (  64,  64  )
            OneByOne X96       -> (  96,  96  )
            OneByOne X128      -> ( 128, 128  )
            OneByOne Unbounded -> ( 256, 256  )
            FourByThree        -> ( 640, 480  )
            ThreeByTwo         -> ( 480, 320  )
            SixteenByNine      -> ( 640, 360  )
            TwoByOne           -> ( 640, 320  )
            _                  -> ( 256, 256  )
      ]
    ]
*)
end

let notification ?color:( color=Common.Default ) attributes =
  div
    ( [ Class.attribute [ Class.notification
                        ; Common.color_class color
                        ]
      ] @ attributes
    )

(*
let notificationWithDelete color attrs msg
  = notification color attrs << (::) (easyDelete [] msg)
*)

let progress ?size:( size=Common.Standard ) ?color:( color=Common.Default) attributes =
  progress
    ( [ Class.attribute [ Class.progress
                        ; Common.size_class size
                        ; Common.color_class color
                        ]
      ] @ attributes
    )

(*
let easyProgress ?size:( size=Standard ) ?color:( color=Default) attrs value =
  progress ~size ~color (Attr.value (String.fromInt (round (value * 100))) :: (Attr.max "100" :: attrs)) []
*)


module Table = struct

  let table ?bordered:( bordered=false ) ?striped:( striped=false ) ?narrow:( narrow=false )
      ?hoverable:( hoverable=false ) ?fullWidth:( fullWidth=false )
      attributes =
    table
      ( [ Class.attribute [ Class.table
                          ; Class.enable bordered  Class.isBordered
                          ; Class.enable striped   Class.isStriped
                          ; Class.enable narrow    Class.isNarrow
                          ; Class.enable hoverable Class.isHoverable
                          ; Class.enable fullWidth Class.isFullWidth
                          ]
        ] @ attributes
      )

  let header attributes = thead attributes

  let body attributes = tbody attributes

  let tr ?selected:( selected=false ) attributes =
    tr ( [ Class.attribute [ Class.enable selected Class.isSelected ] ] @ attributes )

  let td attributes = td attributes

  let th attributes = th attributes

  let footer attributes = tfoot attributes

end

module Tag = struct

  let inert ?size:( size=Common.Standard ) ?color:( color=Common.Default ) ?rounded:( rounded=false )
      ?delete:( delete=false )
      attributes =
    span
      ( [ Class.attribute [ Class.tag
                          ; Common.size_class size
                          ; Common.color_class color
                          ; Class.enable rounded Class.isRounded
                          ; Class.enable delete Class.isDelete
                          ]
        ] @ attributes
      )

  let link ?size:( size=Common.Standard ) ?color:( color=Common.Default ) ?rounded:( rounded=false )
      ?delete:( delete=false )
      attributes =
    a
      ( [ Class.attribute [ Class.tag
                          ; Common.size_class size
                          ; Common.color_class color
                          ; Class.enable rounded Class.isRounded
                          ; Class.enable delete Class.isDelete
                          ]
        ] @ attributes
      )

    
  let delete ?size:( size=Common.Standard ) ?color:( color=Common.Default ) attributes =
    a
      ( [ Class.attribute [ Class.tag
                          ; Class.isDelete
                          ; Common.size_class size
                          ; Common.color_class color
                          ]
        ] @ attributes
      )

  let tags ?addons:( addons=false ) attributes =
    div
      ( [ Class.attribute [ Class.tags
                          ; Class.enable addons Class.hasAddons
                          ]
        ] @ attributes
      )

(*
easyTag mods attrs = text >> ls >> tag mods attrs 

easyRoundedTag mods attrs = text >> ls >> roundedTag mods attrs 

let tagWithDelete mods attrs msg
  = flip (++) [ easyDelete [] msg ] >> tag mods attrs

easyTagWithDelete : TagModifiers -> List (Attribute msg) -> msg -> String -> Tag msg
easyTagWithDelete mods attrs msg str
  = tag mods attrs [ text str, easyDelete [] msg ]

easyRoundedTagWithDelete : TagModifiers -> List (Attribute msg) -> msg -> String -> Tag msg
easyRoundedTagWithDelete mods attrs msg str
  = roundedTag mods attrs [ text str, easyDelete [] msg ]
*)

end

let h1 attributes = h1 ( [ Class.attribute [ Class.is1 ] ] @ attributes )
let h2 attributes = h2 ( [ Class.attribute [ Class.is2 ] ] @ attributes )
let h3 attributes = h3 ( [ Class.attribute [ Class.is3 ] ] @ attributes )
let h4 attributes = h4 ( [ Class.attribute [ Class.is4 ] ] @ attributes )
let h5 attributes = h5 ( [ Class.attribute [ Class.is5 ] ] @ attributes )
let h6 attributes = h6 ( [ Class.attribute [ Class.is6 ] ] @ attributes )
