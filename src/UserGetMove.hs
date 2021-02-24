module UserGetMove where
import Pokemon
import Move
import GameUtils
import Text.Read
getMove :: Pokemon -> IO Move

getMove pokemon =
    do
        let availableMoves = pokemonMoves pokemon
        putStrLn "Type one of the following skill's index to choose it: "
        putStrLn (foldr (\(i, x) y -> show i ++ " : " ++ moveName x ++ " (" ++ show (moveType x) ++ " ; " ++ show (power x) ++ " damage; " ++ show (pp x) ++ " charges left)\n" ++ y) " " (enumerate availableMoves))
        chosenIndex <- getLine
        -- let isValidIndex = checkValidIndex allPokemons chosenIndex
        let chosenMove = findChosenMove (enumerate (pokemonMoves pokemon)) (read chosenIndex)
        return chosenMove

findChosenMove ((i,h):t) index
    | i == index = h
    | otherwise =  findChosenMove t index