module Foreign.PokemonGame.State where
import Foreign.PokemonGame.Pokemon
import Foreign.PokemonGame.Move

--State of a pokemon battle
data State = State (Pokemon,Pokemon)
         deriving (Eq, Show)

--result and whether a game continues or ends based off the state
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

-- gets user pokemon
getMyPokemon :: State -> Pokemon
getMyPokemon (State (a,b)) = a

-- gets AI pokemon
getOpPokemon :: State -> Pokemon
getOpPokemon (State (a,b)) = b

testState = State (maractus,pidgeot)




