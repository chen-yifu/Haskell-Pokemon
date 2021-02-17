module GameUtils where

import Pokemon

allPokemons = [defaultCharmander, defaultBulbasaur, defaultWartortle, defaultSpearow]

enumerate = zip [1..]

isNumber :: String -> Bool
isNumber str =
    case (reads str) :: [(Double, String)] of
      [(_, "")] -> True
      _         -> False

isPokemon str =
    do
        foldr (\name rest -> (show name == str) || rest) False allPokemons