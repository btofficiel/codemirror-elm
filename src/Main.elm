module Main exposing (Msg(..), main, update, view)

import Browser
import Html exposing (Html, div, node)
import Html.Attributes exposing (attribute)


main =
    Browser.sandbox { init = 0, update = update, view = view }


type Msg
    = NoOp


update msg model =
    case msg of
        NoOp ->
            model


view model =
    node "codemirror-json-viewer"
        [ attribute "json-data" "{\"name\": \"Superfocus\", \"tech_stack\": [\"Elm\", \"Rust\", \"Python\"], \"bhaskar\": \"testing\"}" ]
        []
