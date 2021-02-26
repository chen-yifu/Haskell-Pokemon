module InitState where
import Pokemon
import GameUtils
import State
import Text.Read
import Main
import Move
import UserGetMove 
import CalculateDamage
import Ai

--gives user the option to choose a pokemon and its moves 
--and an enemy pokemon will also be given out
--returns a new fresh state with the two chosen pokemon for the new battle
initState :: IO (Pokemon,Pokemon)
initState =
    do
        putStrLn "Type one of the following pokemon's index to choose it: "
        putStrLn (foldr (\(i, x) y -> show i ++ " : " ++ pokemonName x ++ "\n" ++ y) " " (enumerate allPokemons))
        chosenIndex <- getLine
        -- let isValidIndex = checkValidIndex allPokemons chosenIndex
        let chosenPokemon = findChosenOption (enumerate allPokemons) (read chosenIndex)
        putStrLn ("You have chosen " ++ pokemonName chosenPokemon)
        putStrLn ("Now choose your four moves, we will ask you for times")
        putStrLn (foldr (\(i, x) y -> show i ++ " : " ++ moveName x ++ " (" ++ show (moveType x) ++ " ; " ++ show (power x) ++ " damage; " ++ show (pp x) ++ " charges left)\n" ++ y) " " (enumerate (pokemonMoves chosenPokemon)))
        moves <- (getFourMoves (pokemonMoves chosenPokemon) [])
        chosenPokemon <- update  moves chosenPokemon

        play (State (chosenPokemon, lilligant))

--given pokemon, user is given option to choose four moves that he/she wants the 
--chosen pokemon to possess for the duration of the game.
getFourMoves availableMoves movesChosen =
    if length movesChosen < 4
        then do
            putStrLn "Choose from the available moves, enter a valid index:"
            chosenIndex <- getLine 
            isValid <- checkValidIndex chosenIndex availableMoves movesChosen
            if isValid
                then do
                    let ind = read chosenIndex
                    -- append move chosen
                    let enumMoves = enumerate availableMoves
                    let updatedMovesChosen = movesChosen ++ [(findChosenOption enumMoves ind)]
                    -- ask user again
                    getFourMoves availableMoves updatedMovesChosen
                else do
                    print "invalid input!"
                    getFourMoves availableMoves movesChosen
        else do
            -- return if 4 moves are chosen
            return movesChosen

--checks if user input is valid
--1. if user input is a number
--2. if user input is not a repeated input
checkValidIndex :: (Monad m, Foldable t, Eq a) => String -> [a] -> t a -> m Bool
checkValidIndex chosenInd availMoves chosenMoves =
    do
        let validNum = isNumber (chosenInd)
        let len = length availMoves
        if validNum && (len >= read chosenInd) && (read chosenInd > 0)
            then do
                -- check chosen is nonduplicate
                let chosenMove = (availMoves!!((read chosenInd)-1))
                -- let chosenMoveNames = foldr (\x y -> moveName x :) [] chosenMoves
                let isDuplicate = (elem chosenMove chosenMoves)
                return (not isDuplicate)
            else do
                return False

--takes a list of tuples and an index value
--and returns the tuple that matches the user inputted user value
findChosenOption ((i,h):t) index
    | i == index = h
    | otherwise =  findChosenOption t index


