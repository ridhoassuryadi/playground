module Main exposing (main)

import Html exposing (..)



hero = "archer"
    

main =
   case hero of 
     "archer" -> p [][ text "arrow"]
     _ -> p [][ text "sword" ]