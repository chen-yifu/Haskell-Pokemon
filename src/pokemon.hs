 {-# LANGUAGE FlexibleInstances #-}
 {-# LANGUAGE MultiParamTypeClasses #-}

import Data.Data (typeOf)

data Names = Charmander | Charmeleon | Charizard deriving (Eq, Show)

data Moves = Ember | FlameThrower |BasicAttack| FireBlast  deriving (Eq, Show)

getMove name
 | name == "Charmander" = [Ember,BasicAttack]
 | name == "Charmeleon" = [FlameThrower, BasicAttack]
 | otherwise =[BasicAttack,BasicAttack]

main :: IO ()
main = do
  print("Pick a pokemon")
  ans<-getLine
  print(getMove ans)
  print(getBaseDamage (getMove ans))

-- [100,200]
-- (Charmander, 100)
-- (Charmander, 100, [Ember, tackle, Sand Attack, fly])

damageBase m
  | m == Ember = 20
  | m == FlameThrower = 30
  | m == FireBlast = 50
  | otherwise = 5


getBaseDamage move= map damageBase move