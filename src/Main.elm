module Main exposing (main)

import Browser
import Html exposing (Attribute, Html, button, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)



-- Main


main =
    Browser.sandbox { init = init, update = counter, view = view }



-- MODEL


type  Model =
    Int
    | content : String
        | content2 : String



init : Model
init =
    0



-- UPDATE


type Msg
    = Change String
    | Incrementer
    | Decrementer


counter : Msg -> Model -> Model
counter msg model =
    case msg of
        Change model ->
            model

        Incrementer ->
            model + 1

        Decrementer ->
            model - 1



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrementer ] [ text "マイナス" ]
        , div [] [ text (String.fromInt model), text "aaaaa", text (String.fromInt model) ]
        , button [ onClick Incrementer ] [ text "プラス" ]
        , div
            []
            [ input [ placeholder "Text to reverse", value model.content, onInput Change ] []
            , div [] [ text (String.reverse model.content) ]
            ]
        ]
