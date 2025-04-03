module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)

{-- 

  <section>
    <div id="intro">
      <p>Intro</p>
      <h1>Hello there, my name is <bold>Ridho</bold></h1>
    </div>
    <div id="about" class="mt-1">
      <p>Currently working as Software Engineer at Ruangguru</p>
    </div>
    <div id="interested">
      <ul>
        <li>Rust</li>
        <li>Elm Lang</li>
      </ul>
    </div>
  </section>
  
--}

viewTags tags =
    let
        renderedTags =
            tags
            |> List.map viewTag
    in
    ul [ class "tag-list" ] renderedTags


viewTag tagName =
    li [ class "tag-pill tag-default"] [ text tagName]


viewIntro =
  let 
    name = "Ridho"
  in 
  div [ id "intro" ] [
     p [] [ text "Intro" ]
     , h1 [] [ 
      text "Hello there, my name is "
      , span [class "font-bold"] [ text name ]
     ]
  ]

viewAbout company = 
  let
     role = "Software Engineer"
  in 
  div [ id "about" , class "mt-1"] [
    p [] [ text ("Currently working as " ++ role ++ " at " ++ company) ]
  ]
  
viewInterest = 
  let interest = [ "Rust" , "Elm" ]
  in 
     div [ id "interest" ] [
        viewTags interest
     ] 

main =
   let company = "Ruangguru"
    in 
    section [] [
      viewIntro
      , viewAbout company
      , viewInterest
    ]
 