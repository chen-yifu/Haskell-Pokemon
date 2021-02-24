module Ai where
import Pokemon
import Move

dumbAi a b =
 do
  let i = 0
  print(pokemonMoves a)
  a <- doDamage 15 a
  print "opponent uses dummy attack!!"
  return a

getFirstMove (h,t)= return h