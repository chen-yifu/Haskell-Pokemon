module Foreign.PokemonGame.InitState where
import Foreign.PokemonGame.Pokemon
import Foreign.PokemonGame.GameUtils
import Foreign.PokemonGame.State
import Text.Read
import Foreign.PokemonGame.MainOne
import Foreign.PokemonGame.Move
import Foreign.PokemonGame.UserGetMove 
import Foreign.PokemonGame.CalculateDamage
import Foreign.PokemonGame.Ai

--gives user the option to choose a pokemon and its moves 
--and an enemy pokemon will also be given out
--returns a new fresh state with the two chosen pokemon for the new battle

initState value valueAI aILevel =
    do
        
        let chosenPokemon = findChosenOption (enumeratePok allPokemons) (read value)
        validPokemon <- checkValidPokemon value allPokemons 
        let chosenPokemonAI = findChosenOption (enumeratePok allPokemons) (read valueAI)
        validPokemon <- checkValidPokemon valueAI allPokemons 
        putStrLn ("You have chosen " ++ pokemonName chosenPokemon)
        putStrLn ("Now choose your four moves, we will ask you for times")
        putStrLn (foldr (\(i, x) y -> show i ++ " : " ++ moveName x ++ " (" ++ show (moveType x) ++ " ; " ++ show (power x) ++ " damage; " ++ show (pp x) ++ " charges left)\n" ++ y) " " (enumerate (pokemonMoves chosenPokemon)))
        moves <- (getFourMoves (pokemonMoves chosenPokemon) [])
        chosenPokemon <- update  moves chosenPokemon

        play (State (chosenPokemon, chosenPokemonAI)) aILevel


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
--return true if both are valid and return false if both are not
checkValidIndex :: (Monad m, Foldable t, Eq a) => String -> [a] -> t a -> m Bool
checkValidIndex chosenInd availMoves chosenMoves =
    do
        let validNum = isInt (chosenInd)
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

--checks if user input is valid
--1. if user input is a number
--2. if user input is not a within the range of acceptable numbers
--return true if both inputs are valid false otherwise
checkValidPokemon value pokemonList = 
    do 
        let validNum = isInt(value)
        let len = 701
        let allIndices = foldr (\(i,p) y -> (show i) : y) [] (enumeratePok pokemonList)
        if validNum && (len >= read value) && (read value > 0) && elem value allIndices
            then do 
                return True 
            else do 
                return False
