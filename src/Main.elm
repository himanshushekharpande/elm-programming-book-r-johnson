module Main exposing (..)

import Browser
import Html exposing (Html, div, text)


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { count : Int }


init : Model
init =
    { count = 0 }


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | count = model.count + 2 }

        Decrement ->
            { model | count = model.count - 2 }


view : Model -> Html Msg
view model =
    div []
        [ text ("Count: " ++ String.fromInt model.count) ]
