module Ai where
import Pokemon
import Move
import CalculateDamage
dumbAi a b =
 do
  let i = 0
  print(pokemonMoves a)
  a <- doDamage 1 a
  print "opponent uses dummy attack!!"
  return a

getFirstMove (h,t)= return h