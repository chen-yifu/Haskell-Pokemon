module Ai where
import Pokemon

dumbAi a b =
 do
  a <- doDamage 50 a
  print "opponent uses 50 damage move!"
  return a