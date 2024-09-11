module Main exposing (Msg(..), main, update, view)

import Browser
import Html exposing (Html, div, node)
import Html.Attributes exposing (attribute, style)


main =
    Browser.sandbox { init = 0, update = update, view = view }


type Msg
    = NoOp


update msg model =
    case msg of
        NoOp ->
            model


json : String
json =
    "[{\"name\": \"Superfocus\", \"tech_stack\": [\"Elm\", \"Rust\", \"Python\"], \"bhaskar\": \"testing\"}, {\"name\": \"Superfocus\", \"tech_stack\": [\"Elm\", \"Rust\", \"Python\"], \"bhaskar\": \"testing\"}, {\"name\": \"Superfocus\", \"tech_stack\": [\"Elm\", \"Rust\", \"Python\"], \"bhaskar\": \"testing\"}, {\"name\": \"Superfocus\", \"tech_stack\": [\"Elm\", \"Rust\", \"Python\"], \"bhaskar\": \"testing\"}]"


view model =
    node "codemirror-json-viewer"
        [ attribute "json-data" json
        , attribute "width" "auto"
        , attribute "height" "450px"
        ]
        []
