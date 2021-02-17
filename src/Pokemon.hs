module Pokemon where

import Move

-- data Moves = Ember | FlameThrower |BasicAttack| FireBlast  deriving (Eq, Show)
data Pokemon = Pokemon{pokemonName::[Char], moves::[Move], health::Int, level::Int, pokemonType::[Char]}  deriving (Eq,Show,Read)

baseHealth:: Int
baseHealth = 100

baseLevel:: Int
baseLevel = 20

defaultCharmander :: Pokemon
defaultCharmander = Pokemon {
  pokemonName = "Charmander",
  moves = [defaultScratch, defaultEmber, defaultFlamethrower],
  health = baseHealth,
  level = baseLevel,
  pokemonType = "Fire"
  }

defaultBulbasaur :: Pokemon
defaultBulbasaur = Pokemon {
  pokemonName = "Bulbasaur",
  moves = [defaultVineWhip, defaultGrowl],
  health = baseHealth,
  level = baseHealth,
  pokemonType = "Grass"
}

defaultWartortle :: Pokemon
defaultWartortle = Pokemon {
  pokemonName = "Wartortle",
  moves = [defaultScratch, defaultWaterGun, defaultSurf],
  health = baseHealth,
  level = baseHealth,
  pokemonType = "Water"
}

defaultSpearow :: Pokemon
defaultSpearow = Pokemon {
  pokemonName = "Spearow",
  moves = [defaultScratch, defaultPeck, defaultGrowl],
  health = baseHealth,
  level = baseHealth,
  pokemonType = "Normal"
}



doDamage value pokemon =
  return pokemon {health = health pokemon - value}



damageBase m
  | m == "Ember" = 20
  | m == "FlameThrower" = 30
  | m == "FireBlast" = 50
  | otherwise = 5

