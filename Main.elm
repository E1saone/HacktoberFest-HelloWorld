import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
  Browser.sandbox { init = 0, update = update, view = view }

type Msg = Increment | Decrement

update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

view model =
  div []
    [ div [] [text "Increment/Decrement Demo"]
    , button [ onClick Decrement ] [ text "Decrement" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "Increment" ]
    ]
