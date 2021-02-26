module Ai where
import Pokemon
import Move
import CalculateDamage

--takes attacker a and calculates the move that will do the least damage against b based on 
--b's defence and type
findLowMov a b minMove (h:t) =
    do
        let moveChosen1 = h
        curDmg <- calcDmg a moveChosen1 b
        curMin <- calcDmg a minMove b
        if curDmg <= curMin && t == []
             then do
                  return h
             else do
               if curDmg >= curMin && t == []
                 then do
                   return minMove
                 else do
                  if curDmg <= curMin && (length t > 0)
                    then do
                      res <- findLowMov a b h t
                      return res
                    else do
                      res <- findLowMov a b minMove t
                      return res

--takes attacker a and calculates the move that will do the most damage against b based on 
--b's defence and type
findMaxMov a b minMove (h:t) =
    do
        let moveChosen1 = h
        curDmg <- calcDmg a moveChosen1 b
        curMin <- calcDmg a minMove b
        if curDmg >= curMin && t == []
             then do
                  return h
             else do
               if curDmg <= curMin && t == []
                 then do
                   return minMove
                 else do
                  if curDmg >= curMin && (length t > 0)
                    then do
                      res <- findMaxMov a b h t
                      return res
                    else do
                      res <- findMaxMov a b minMove t
                      return res

--takes in two pokemon with a being the ai's pokemon and b being your pokemon and selects
--a move before applying damage to your pokemon then update the state of the two pokemon
--before returning a new state with the two updated pokemon in it.
dumbAi a b =
 do
  let i = 0
  --print(pokemonMoves a)
  mov <- findLowMov a b opMove (pokemonMoves b)
  dmg <- calcDmg b mov a
  a <- doDamage dmg a
  let name = moveName mov
  print ("opponent uses " ++ name++" attack!!")
  print ("You recieved " ++ show(dmg)++" damage!!")
  return (a,b)

medAi a b =
 do
 if (pokemonHP b <=10 && (numHeals b > 0))
   then do
   print(pokemonMoves b)
   heal <- healer b heal15
   b<- do doHeal heal b
   print ("Your opponent used a pill and heals for "++ show heal++ "health")
   return (a,b)
   else do
     mov <- findMaxMov a b dummy (pokemonMoves b)
     dmg <- calcDmg b mov a
     a <- doDamage dmg a
     let name = moveName mov
     print ("opponent uses " ++ name++" attack!!")
     print ("You recieved " ++ show(dmg)++" damage!!")
     return (a,b)


