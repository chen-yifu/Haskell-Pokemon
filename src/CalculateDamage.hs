module CalculateDamage where
import Move
import Type

import Pokemon
import Data.List
--try not ot modify this
--given damage value and a pokemon, modify the pokemon's health by subtracting
--value from pokemon current hp
doDamage :: Monad m => Integer -> Pokemon -> m Pokemon
doDamage value pokemon =
  return pokemon {pokemonHP = pokemonHP pokemon - value}

doHeal :: Monad m => Integer -> Pokemon -> m Pokemon
doHeal value pokemon =
  return pokemon {pokemonHP = pokemonHP pokemon + value}

subHealNum :: Monad m =>  Pokemon -> m Pokemon
subHealNum pokemon =
  return pokemon {numHeals = numHeals pokemon - 1}

--Changes the specified pokemon move's charge
--in other words, how many more time a pokemon's move can be used
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
    let dmg = (fromIntegral (attackDivDefence * pow)) * modifier / 75
    let roundedDmg = round dmg
    
    return roundedDmg -- (fromIntegral(max (value - (div (defence pokemon) 2)) 0))

--Using the type of the move and one or two types that the pokemon (pokemonHit) posseses, 
--return the multiplier value which will be applied to the damage done to pokemonHit
calcEff moveUsed pokemonHit = 
  return (getMultiplier (moveType moveUsed) (pokemonType1 pokemonHit) (pokemonType2 pokemonHit))

healer :: Monad m => Pokemon -> Move -> m Integer
healer pokemonA healMov =
  do
    let pow = fromIntegral (power healMov)

    return pow

--Adds the four moves the user has inputted to the pokemon's available
--move pool for the duration of the game
update :: Monad m => [Move] -> Pokemon -> m Pokemon
update moves pokemon =
    return pokemon {pokemonMoves = moves}

--takes in fractional value and produces appropriate string based off of input given
printStatement value
  | value == 2.0 = putStrLn "It was super effective!"
  | value == 4.0 = putStrLn "It was super effective!"
   | value == 0.5 = putStrLn "It wasn't very effective..."
   | value == 0.25 = putStrLn "It wasn't very effective..."
   | value == 0.0 = return ()

  --  isValidMove move index = 
  --    do
  --       let validNum = isNumber (chosenInd)
  --       if validNum index 