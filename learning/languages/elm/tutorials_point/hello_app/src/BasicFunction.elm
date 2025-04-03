module BasicFunction exposing (..)

import Html exposing (text)

sayHello : String -> String
sayHello name = "Hello "++ name

main =
   sayHello "r" |> text