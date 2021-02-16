module Pokemons where

data Names = Charmander | Charmeleon | Charizard deriving (Eq, Show)

data Moves = Ember | FlameThrower |BasicAttack| FireBlast  deriving (Eq, Show)

getMove name
 |name == "Charmander" = [Ember,BasicAttack]
 | name == "Charmeleon" = [FlameThrower, BasicAttack]
 | otherwise =[BasicAttack,BasicAttack]

damageBase m
  | m == Ember = 20
  | m == FlameThrower = 30
  | m == FireBlast = 50
  | otherwise = 5


getBaseDamage move = map damageBase move