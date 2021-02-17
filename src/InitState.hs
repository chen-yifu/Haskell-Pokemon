module InitState where
import Pokemon
import GameUtils
import State
import Text.Read
import Main
initState :: IO Pokemon
initState =
    do
        putStrLn "Type one of the following pokemon's index to choose it: "
        putStrLn (foldr (\(i, x) y -> show i ++ " : " ++ pokemonName x ++ "\n" ++ y) " " (enumerate allPokemons))
        chosenIndex <- getLine
        -- let isValidIndex = checkValidIndex allPokemons chosenIndex
        let chosenPokemon = findChosenPokemon (enumerate allPokemons) (read chosenIndex)
        play (State (chosenPokemon, defaultCharmander))


findChosenPokemon ((i,h):t) index
    | i == index = h
    | otherwise =  findChosenPokemon t index