open Tea
open Bulma
open Bulma.Component
open Html2
open Html2.Attributes

type model =
  { ok: bool }

let model =
  { ok = true }


(*


exampleHero : Html Msg
exampleHero
  = hero { heroModifiers | color = Info, size = Medium } []
    [ heroBody []
      [ container []
        [ title H1 [] [ text "Hero Title" ]
        , title H2 [] [ text "Hero Subtitle" ]
        ]
      ]
    ]

myColumnModifiers : Width -> Maybe Width -> ColumnModifiers
myColumnModifiers offset width
  = let widths : Devices (Maybe Width)
        widths = columnModifiers.widths
    in { columnModifiers
         | offset
           = offset
         , widths
           = { widths
               | tablet     = width
               , desktop    = width
               , widescreen = width
               , fullHD     = width
             }
       }

demoArticle : String -> List (Html Msg) -> Html Msg
demoArticle aTitle someHtmls
  = columns columnsModifiers []
    [ column (myColumnModifiers Auto (Just Width2)) []
      [ title H4 [] [ strong [] [ text aTitle ] ]
      ]
    , column (myColumnModifiers Auto (Just Auto)) []
      someHtmls
    ]

demoSection : String -> List (Attribute Msg) -> List (Html Msg) -> Html Msg
demoSection aSubtitle someAttrs someHtmls
  = columns columnsModifiers someAttrs
    [ column (myColumnModifiers Auto (Just Width3)) []
      [ subtitle H4 [] [ text aSubtitle ]
      ]
    , column (myColumnModifiers Auto (Just Auto)) []
      someHtmls
    ]

exampleMediaObject : Html Msg
exampleMediaObject
  = media []
    [ mediaLeft []
      [ image ( OneByOne X64 ) []
        [ img [ src "https://bulma.io/images/placeholders/128x128.png" ] []
        ]
      ]
    , mediaContent []
      [ content Standard []
        [ p []
          [ strong [] [ text "John Smith" ]
          , text " "
          , small  [] [ text "@johnsmith" ]
          , text " "
          , small  [] [ text "31m"        ]
          , br     [] [                   ]
          , text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur sit amet massa fringilla egestas. Nullam condimentum luctus turpis."
          ]
        ]
      , horizontalLevel []
        [ levelLeft []
          [ levelItemLink [] [ icon Small [] [ i [ class "fa fa-reply"   ] [] ] ]
          , levelItemLink [] [ icon Small [] [ i [ class "fa fa-retweet" ] [] ] ]
          , levelItemLink [] [ icon Small [] [ i [ class "fa fa-heart"   ] [] ] ]
          ]
        ]
      ]
    ]

exampleElementsAndComponents : Html Msg
exampleElementsAndComponents
  = section NotSpaced []
    [ container []
      [ demoArticle "Elements"
        [ demoSection "Form" []
          [ field []
            [ controlLabel [] [ text "Form Label" ]
            , controlInput controlInputModifiers [] [ placeholder "Input" ] [] 
            , controlHelp Default [] [ text "This field isn't required!" ]
            ]
          , field []
            [ controlSelect controlSelectModifiers [] []
              [ option [] [ text "Dropdown" ]
              ]
            ]
          , field []
            [ controlTextArea controlTextAreaModifiers [] [ placeholder "Textarea" ] []
            ]
          , field []
            [ controlCheckBox False [] [] []
              [ text "Checkbox"
              ]
            ]
          , field []
            [ controlRadio []
              [ controlRadioButton False True "yes" [] []
                [ text "Radio"
                ]
              , controlRadioButton False False "no" [] []
                [ text "Button"
                ]
              ]
            ]
          , field []
            [ controlButton { buttonModifiers | color = Link } [] []
              [ text "Button"
              ]
            ]
          ]
        , demoSection "Box" []
          [ box []
            [ exampleMediaObject
            ]
          ]
        , demoSection "Button" []
          [ buttons Left []
            <| List.map (\(color,label) -> button { buttonModifiers | color = color } [] [ text label ])
              [ ( Default , "Default" )
              , ( White   , "White"   )
              , ( Light   , "Light"   )
              , ( Dark    , "Dark"    )
              , ( Black   , "Black"   )
              ]
          , buttons Left []
            <| List.map (\(color,label) -> button { buttonModifiers | color = color } [] [ text label ])
              [ ( Primary , "Primary" )
              , ( Link    , "Link"    )
              , ( Info    , "Info"    )
              , ( Success , "Success" )
              , ( Warning , "Warning" )
              , ( Danger  , "Danger"  )
              ]
          ]
        , demoSection "Notification" []
          [ notificationWithDelete Primary [] NoOp
            [ text "Lorem ipsum dolor sit amet, consectetur adipiscing elit lorem ipsum dolor. Pellentesque risus mi, tempus quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum felis venenatis efficitur. Sit amet, consectetur adipiscing elit"
            ]
          ]
        , demoSection "Progress Bar" []
          [ easyProgress { progressModifiers | color = Primary } [] 0.4
          ]
        , demoSection "Tags" []
          [ tags []
            <| List.map (\(color,label) -> tag { tagModifiers | color = color } [] [ text label ])
              [ ( Primary , "Primary" )
              , ( Link    , "Link"    )
              , ( Info    , "Info"    )
              , ( Success , "Success" )
              , ( Warning , "Warning" )
              , ( Danger  , "Danger"  )
              ]
          , tags []
            <| List.map (\(color,label) -> tag { tagModifiers | color = color } [] [ text label ])
              [ ( Default , "Default" )
              , ( White   , "White"   )
              , ( Light   , "Light"   )
              , ( Dark    , "Dark"    )
              , ( Black   , "Black"   )
              ]
          ]
        ]
      , demoArticle "Components"
        [ demoSection "Card" []
          [ columns columnsModifiers []
            [ column columnModifiers []
              [ card []
                [ cardImage []
                  [ image FourByThree []
                    [ img [ src "https://bulma.io/images/placeholders/1280x960.png" ] []
                    ]
                  ]
                , cardContent []
                  [ media []
                    [ mediaLeft []
                      [ image (OneByOne X48) []
                        [ img [ src "https://bulma.io/images/placeholders/96x96.png" ] []
                        ] 
                      ]
                    , mediaContent []
                      <| easyTitleWithSubtitle False H4
                        [ text "John Smith" ]
                        [ text "@johnsmith" ]
                    ]
                  , content Standard []
                    [ text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec iaculis mauris."
                    , a [] [ text "@bulmaio" ]
                    , text "."
                    , a [] [ text "#css" ]
                    , text " "
                    , a [] [ text "#responsive" ]
                    , small [] [ text "11:09 PM - 1 Jan 2016" ]
                    ]
                  ]
                ]
              ]
            , column columnModifiers []
              [ card []
                [ cardContent []
                  <| easyTitleWithSubtitle False H3
                    [ text "“There are two hard things in computer science: cache invalidation, naming things, and off-by-one errors.”" ]
                    [ text "Jeff Atwood" ]
                , cardFooter []
                  [ cardFooterItem []
                    [ span []
                      [ text "View on "
                      , a [] [ text "Twitter" ]
                      ]
                    ]
                  , cardFooterItem []
                    [ span []
                      [ text "Share on "
                      , a [] [ text "Facebook" ]
                      ]
                    ]
                  ]
                ]
              ]
            ]
          ]
        , demoSection "Dropdown" [ style "height" "16rem" ]
          [ dropdown True dropdownModifiers []
            [ dropdownTrigger []
              [ button buttonModifiers 
                [ attribute "aria-haspopup" "true"
                , attribute "aria-controls" "dropdown-menu"
                ]
                [ text "Dropdown button"
                ]
              ]
            , dropdownMenu [] []
              [ dropdownItem     False [] [ text "Dropdown item"        ]
              , dropdownItemLink False [] [ text "Other dropdown item"  ]
              , dropdownItemLink True  [] [ text "Active dropdown item" ]
              , dropdownItemLink False [] [ text "Other item"           ]
              , dropdownDivider        [] [                             ]
              , dropdownItemLink False [] [ text "With a divider"       ]
              ]
            ]
          ]
        , demoSection "Message" []
          [ message { messageModifiers | color = Primary } []
            [ messageHeaderWithDelete [] NoOp [ text "Primary" ]
            , messageBody [] [ text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque risus mi, tempus quis placerat ut, porta nec nulla. Vestibulum rhoncus ac ex sit amet fringilla. Nullam gravida purus diam, et dictum felis venenatis efficitur. Aenean ac eleifend lacus, in mollis lectus. Donec sodales, arcu et sollicitudin porttitor, tortor urna tempor ligula, id porttitor mi magna a neque. Donec dui urna, vehicula et sem eget, facilisis sodales sem." ]
            ]
          ]
        , demoSection "Pagination" []
          [ pagination Left []
            [ paginationPrev [] [ text "Previous" ]
            , paginationNext [] [ text "Next"     ]
            , paginationList []
              [ paginationLink False [] [ text "1"        ]
              , paginationEllipsis   [] [ text "…" ]
              , paginationLink False [] [ text "45"       ]
              , paginationLink True  [] [ text "46"       ]
              , paginationLink False [] [ text "47"       ]
              , paginationEllipsis   [] [ text "…" ]
              , paginationLink False [] [ text "83"       ]
              ]
            ]
          ]
        , demoSection "Tabs" []
          [ tabs { tabsModifiers | style = Boxed } [] []
            [ tab True  [] [] [ icon Standard [] [ i [ class "fa fa-image"      ] [] ], text "Pictures"  ]
            , tab False [] [] [ icon Standard [] [ i [ class "fa fa-music"      ] [] ], text "Music"     ]
            , tab False [] [] [ icon Standard [] [ i [ class "fa fa-film"       ] [] ], text "Videos"    ]
            , tab False [] [] [ icon Standard [] [ i [ class "fa fa-file-pdf-o" ] [] ], text "Documents" ]
            ]
          ]
        , demoSection "Media Object" []
          [ exampleMediaObject
          ]
        , demoSection "Menu & Panel" []
          [ columns columnsModifiers []
            [ column columnModifiers []
              [ menu []
                [ menuLabel [] [ text "General" ]
                , menuList [] 
                  [ menuListItem [] [ menuListItemLink False [] [ text "Dashboard" ] ]
                  , menuListItem [] [ menuListItemLink False [] [ text "Customers" ] ]
                  ]
                , menuLabel [] [ text "Administration" ]
                , menuList  [] 
                  [ menuListItem []
                    [ menuListItemLink False [] [ text "Team Settings" ]
                    ]
                  , menuListItem []
                    [ menuListItemLink True [] [ text "Manage Your Team" ]
                    , menuList []
                      [ menuListItemLink False [] [ text "Members"      ]
                      , menuListItemLink False [] [ text "Plugins"      ]
                      , menuListItemLink False [] [ text "Add a member" ]
                      ]
                    ]
                  , menuListItem []
                    [ menuListItemLink False [] [ text "Invitations" ]
                    ]
                  , menuListItem []
                    [ menuListItemLink False [] [ text "Cloud Storage Environment Settings" ]
                    ]
                  , menuListItem []
                    [ menuListItemLink False [] [ text "Authentication" ]
                    ]
                  ]
                , menuLabel [] [ text "Transactions" ]
                , menuList [] 
                  [ menuListItem [] [ menuListItemLink False [] [ text "Payments"  ] ]
                  , menuListItem [] [ menuListItemLink False [] [ text "Transfers" ] ]
                  , menuListItem [] [ menuListItemLink False [] [ text "Balance"   ] ]
                  ]
                ]
              ]
            , column columnModifiers []
              [ panel []
                [ panelHeading [] [ text "Repositories" ] 
                , panelBlock False []
                  [ controlInput controlInputModifiers [] [] []
                  ] 
                , panelTabs []
                  [ panelTab False [] [ text "All"     ]
                  , panelTab True  [] [ text "Public"  ]
                  , panelTab True  [] [ text "Private" ]
                  , panelTab True  [] [ text "Sources" ]
                  , panelTab True  [] [ text "Forks" ]
                  ]
                , panelLinkWithIcon True  [] [] [ i [ class "fa fa-book"      ] [] ] [ text "bulma"                ]
                , panelLinkWithIcon False [] [] [ i [ class "fa fa-book"      ] [] ] [ text "marksheet"            ]
                , panelLinkWithIcon False [] [] [ i [ class "fa fa-book"      ] [] ] [ text "minireset.css"        ]
                , panelLinkWithIcon False [] [] [ i [ class "fa fa-book"      ] [] ] [ text "jgthms.github.io"     ]
                , panelLinkWithIcon False [] [] [ i [ class "fa fa-code-fork" ] [] ] [ text "daniellowtw/infBoard" ]
                , panelLinkWithIcon False [] [] [ i [ class "fa fa-code-fork" ] [] ] [ text "mojs"                 ]
                , panelCheckbox     False [] []                                      [ text "Remember Me"          ]
                , panelBlock        False []
                  [ button { buttonModifiers | color = Link } [ fullWidth ]
                    [ text "Reset all filters"
                    ]
                  ]
                ]
              ]
            ]
          ]
        ]
      ]
    ]

exampleFooter : Html Msg
exampleFooter
  = footer []
    [ container []
      [ content Standard [ textCentered ]
        [ p []
          [ strong [] [ text "Bulma" ]
          , text " by "
          , a [ href "https://jgthms.com" ] [ text "Jeremy Thomas" ]
          , text ". The source code is licensed "
          , a [ href "http://opensource.org/licenses/mit-license.php" ] [ text "MIT" ]
          , text ". The website content is licensed "
          , a [ href "http://creativecommons.org/licenses/by-nc-sa/4.0" ] [ text "CC BY NC SA 4.0" ]
          , text "."
          ]
        ]
      ]
    ]
  



                
    [ navbarBrand []
      ( navbarBurger False []
        [ span [] []
        , span [] []
        , span [] []
        ]
      )
      [ navbarItem False []
        [ img [ src "https://bulma.io/images/bulma-logo.png" ] []
        ]
      ]
    , navbarMenu False []
      [ navbarStart [] 
        [ navbarItemLink False [] [ text "Home"  ]
        , navbarItemDropdown True Down [] ( navbarLink [] [ text "Docs" ] )
          [ navbarDropdown True Left [] 
            [ navbarItemLink False [] [ text "Crud"     ]
            , navbarItemLink False [] [ text "Detritus" ]
            , navbarItemLink True  [] [ text "Refuse"   ]
            , navbarItemLink False [] [ text "Trash"    ]
            ]
          ]
        ]
      , navbarEnd [] 
        [ navbarItem False []
          [ fields Left []
            [ controlButton { buttonModifiers | color = Info    } [] [] [ icon Standard [] [ i [ class "fa fa-twitter"  ] [] ], span [] [ text "Tweet"    ] ]
            , controlButton { buttonModifiers | color = Primary } [] [] [ icon Standard [] [ i [ class "fa fa-download" ] [] ], span [] [ text "Download" ] ]
            ]
          ]
        ]
      ]
    ]


    *)

let exampleNavbar () =
  Navbar.navbar []
    [ Navbar.brand []
        [ Navbar.item []
            [ img [ Attributes.src "https://bulma.io/images/bulma-logo.png" ] [] ]
        ; Navbar.burger []
            [ span [] []
            ; span [] []
            ; span [] []
            ]
        ]
    ; Navbar.menu []
        [ Navbar.start []
            [ Navbar.itemLink [] [ text "Home" ]
            ; Navbar.itemDropdown ~active:true []
                [ Navbar.link [] [ text "Docs" ]
                ; Navbar.dropdown []
                    [ Navbar.itemLink ~active:true [] [ text "Some" ]
                    ; Navbar.itemLink [] [ text "Items" ]
                    ; Navbar.itemLink [] [ text "Are" ]
                    ; Navbar.itemLink ~active:true [] [ text "Active" ]
                    ; Navbar.itemLink [] [ text "Others" ]
                    ; Navbar.itemLink [] [ text "Are" ]
                    ; Navbar.itemLink [] [ text "Not" ]
                    ]
                ]
            ]
        ; Navbar.finish []
            []
        ]
    ]


let appnavbar () =

  nav [ classList [ Class.add Class.navbar
                  ; Class.add Class.isFixedTop
                  ]
      ]
    [ div [ class' Class.navbarBrand ]
        [ a [ class' Class.navbarItem
            ; href "http://172.17.0.5:5000/"
            ]
            [ img [ src "/logo.png"
                  ; Html.style "height" "48px"
                  ; Html.style "max-height" "48px"
                  ; Html.style "border" "1 px solid red"
                  ]
                []
            ]
        ; a [ classList [ Class.add Class.navbarBurger
                        ; Class.add "burger"
                        ]
            ]
            [ span [] []
            ; span [] []
            ; span [] []
            ]
        ]
    ; div [ classList [ Class.add Class.navbarMenu
                      ; Class.add Class.isActive
                      ]
          ]
        [ div [ class' Class.navbarStart ]
            [ a [ class' Class.navbarItem ]
                [ text "Home" ]
            ; a [ class' Class.navbarItem ]
                [ text "Documentation" ]

            ; div [ classList [ Class.add Class.navbarItem
                              ; Class.add Class.hasDropdown
                              ; Class.add Class.isHoverable
                              ]
                  ]
                [ a [ class' Class.navbarLink ]
                    [ text "More" ]
                ; div [ class' Class.navbarDropdown ]
                    [ a [ class' Class.navbarItem ] [ text "About" ]
                    ; a [ class' Class.navbarItem ] [ text "Jobs" ]
                    ; a [ class' Class.navbarItem ] [ text "Contact" ]
                    ; hr [ class' Class.navbarDivider ] []
                    ; a [ class' Class.navbarItem ] [ text "Report an Issue" ]
                    ]
                ]
            ]
        ; div [ class' Class.navbarEnd ]
            [ div [ class' Class.navbarItem ]
                [ div [ class' Class.buttons ]
                    [ a [ classList [ Class.add Class.button
                                    ; Class.add Class.isPrimary
                                    ]
                        ]
                        [ strong [] [ text "Sign up" ]
                        ]
                    ; a [ classList [ Class.add Class.button
                                    ; Class.add Class.isLight
                                    ]
                        ]
                        [ text "Log in" ]
                    ]
                ]
            ]
        ]
    ]

let exampleForm () =
  Bulma.Column.columns []
    [ Bulma.Column.column [ Attributes.class' Bulma.Class.isThreeQuarters ]
        [ Form.Field.fields []
            [ Form.Field.label [] [ text "Firstname" ]
            ; Form.Control.text [] []
            ; Form.Field.label [] [ text "Lastname" ]
            ; Form.Control.text [] []
            ]
        ]
    ]

let fontAwesomeCDN attributes =
  link
    ( [ Attributes.rel "stylesheet"
      ; Attributes.href "https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      ] @ attributes
    )

let view _model =
  div
    []
    [ Bulma.Cdn.stylesheet []
    ; fontAwesomeCDN []
    ; appnavbar ()
    ; exampleForm ()
    ]

    (*
    , exampleNavbar
    , exampleHero
    -- , exampleColumns
    -- , exampleTiles
    -- , exampleLevel
    , exampleElementsAndComponents
    , exampleFooter
    ]
*)

let update _msg model = model

let main =
  App.beginnerProgram
    { model
    ; update = update
    ; view
    }
