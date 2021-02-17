module State where
import Pokemon
import Move


data State = State (Pokemon,Pokemon)
         deriving (Eq, Show)

data Result = End Double State
            | Continue State
         deriving (Eq, Show)

type Game = Action -> State -> Result

type Player = State -> Action


data Action = Action Move
         deriving (Eq)
--type InternalState = (Pokemon,Pokemon)


instance Show Action where
    show (Action i) = show i

getMyPokemon :: State -> Pokemon
getMyPokemon (State (a,b)) = a
getOpPokemon :: State -> Pokemon
getOpPokemon (State (a,b)) = b

testState = State (defaultCharmander,defaultBulbasaur)



