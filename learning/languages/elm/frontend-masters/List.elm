module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


listCars = 
  let 
    cars = ["jazz", "bmw", "nascaar"]
  in
    cars
    |> List.map(\car -> li [][ text car])
    
    
viewName name = li [][ text name ]
  
main =
   let
     names = ["ridho", "agung", "weyza"]
   in 
     section [] [
          ul [] listCars
          , ul [] (List.map viewName names)
     ]