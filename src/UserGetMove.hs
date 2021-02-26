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
        isValidIndex <- checkValidInGetMove chosenIndex availableMoves
        if isValidIndex 
            then do
        let chosenMove = findChosenMove (enumerate (pokemonMoves pokemon)) (read chosenIndex)
        return chosenMove
        else do 
            putStrLn "Invalid Input!"
            getMove pokemon

findChosenMove ((i,h):t) index
    | i == index = h
    | otherwise =  findChosenMove t index

--checks if user input is valid
--1. if user input is a number
--2. if user input is not a repeated input
--return true if both are valid and return false if both are not
checkValidInGetMove chosenInd availMoves =
    do
        let validNum = isNumber (chosenInd)
        let len = length availMoves
        if validNum && (len >= read chosenInd) && (read chosenInd > 0)
            then do
               return True
            else do
                return False