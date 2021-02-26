module GameUtils where

import Pokemon

allPokemons = [lilligant, maractus, krokorok, scraggy]

--takes list of type b and creates a tuple where each type b is assigned an integer 
--to define it
enumerate = zip [1..]  --a

--check if String is a number
isNumber :: String -> Bool
isNumber str =
    case (reads str) :: [(Double, String)] of
      [(_, "")] -> True
      _         -> False

--check if string is a pokemon
isPokemon str =
    do
        foldr (\name rest -> (show name == str) || rest) False allPokemons