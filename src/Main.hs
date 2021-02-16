import Pokemons

main :: IO ()
main = do
  print("Pick a pokemon")
  ans<-getLine
  if isPokemon ans
    then do
        print(getMove ans)
        print("Pick your move:")
        let baseDamages = getBaseDamage (getMove ans)
        let temp = zip (getMove ans) baseDamages
        let tempStr = [show i ++ " : " ++ show move ++ " deals " ++ show damage ++ " damage." | (i, (move, damage)) <- enumerate temp]
        putStrLn(foldr (++) "" (map (\str -> str ++ "\n") tempStr))    
        moveIndex <- getLine
        if isNumber moveIndex
            then do
                let moveDmg = [damage | (i, (move, damage)) <- enumerate temp, read moveIndex == i]
                print("dealt " ++ show (head moveDmg) ++ " damage.")
            else
            print("invalid move number. Exiting...")
    else print("invalid pokemon name. Exiting...")


-- the following helper functions can be put into an utils class
enumerate = zip [1..]

isNumber :: String -> Bool
isNumber str =
    case (reads str) :: [(Double, String)] of
      [(_, "")] -> True
      _         -> False

isPokemon str = 
    do
        let allPokemons = [Charmander ..]
        foldr (\name rest -> (show name == str) || rest) False allPokemons