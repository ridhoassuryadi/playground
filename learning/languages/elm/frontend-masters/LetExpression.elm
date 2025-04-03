module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)

pluralize singular plural quantity  =
  let 
    quantityStr = 
      String.fromInt quantity
    prefix =
      quantityStr ++ " "
  in
    if quantity > 1 then
      prefix ++ plural
    else 
      prefix ++ singular
  
main =
   text 
   <| pluralize "leaf" "leaves" 5