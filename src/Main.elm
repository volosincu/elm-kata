import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, classList, href, style)

main =
  Browser.sandbox { init = 0, update = updateModel, view = viewTemplate }

type Msg = Increment | Decrement

updateModel msg model =
  case msg of
    Increment ->
      model + 5

    Decrement ->
      model - 2

viewTemplate model =
  div [ class "elm-kata"]
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model) ]
    , button [ onClick Increment ] [ text "+" ]
    ]
