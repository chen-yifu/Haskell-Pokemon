module CalculateDamage where
import Move
import Type

import Pokemon
import Data.List
--try not ot modify this
doDamage :: Monad m => Integer -> Pokemon -> m Pokemon
doDamage value pokemon =
  return pokemon {pokemonHP = pokemonHP pokemon - value}

doHeal :: Monad m => Integer -> Pokemon -> m Pokemon
doHeal value pokemon =
  return pokemon {pokemonHP = pokemonHP pokemon + value}

changeCharge pokemon move = 
    do
        let targetMoveNave = moveName move
        let thisPokemonMoves = pokemonMoves pokemon
        let updatedMoves = [if  isSubsequenceOf (moveName x) targetMoveNave then x  {pp = pp x - 5} else x | x<- thisPokemonMoves]
        let updatedPokemon = pokemon {pokemonMoves = updatedMoves}
        return updatedPokemon
        
--Here is the damage calculation part
calcDmg :: Monad m => Pokemon -> Move -> Pokemon -> m Integer
calcDmg pokemonA attMove pokemonHit =
    do
    let attackInt = attack pokemonA
    let defenceInt = defence pokemonHit
    let pow = power attMove
    let attackDivDefence = (max (attackInt-defenceInt) 1) -- integer
    modifier <- (calcEff attMove pokemonHit)
    let dmg = (fromIntegral (attackDivDefence * pow)) * modifier / 5
    let roundedDmg = round dmg
    
    return roundedDmg -- (fromIntegral(max (value - (div (defence pokemon) 2)) 0))

calcEff moveUsed pokemonHit = 
  return (getMultiplier (moveType moveUsed) (pokemonType1 pokemonHit) (pokemonType2 pokemonHit))

healer :: Monad m => Pokemon -> Move -> m Integer
healer pokemonA healMov =
  do
    let pow = fromIntegral (power healMov)

    return pow

update :: Monad m => [Move] -> Pokemon -> m Pokemon
update moves pokemon =
    return pokemon {pokemonMoves = moves}
    
-- printStatement :: Float -> String 
-- printStatement value = 
--     if value == (2.0 || 4.0)
--         return "It was super effective!"
--     if value == (0.5 || 0.25)
--         return "It wasn't very effective..."
--     if value == 0.0
--         return ""