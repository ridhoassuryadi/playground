module BasicFunction3 exposing (..)

import Html exposing (text)

sayName name = "Hello " ++ name

main =
     text (sayName "r")