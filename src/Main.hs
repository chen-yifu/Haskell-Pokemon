module Main where
import System.IO
import Pokemon
import State
import UserGetMove
import Move
import Control.Concurrent
import Ai
import CalculateDamage


main :: IO (Pokemon,Pokemon)
main = play testState   


play:: State -> IO (Pokemon,Pokemon)
play (State (pokemona,pokemonb))  = 
  do 
  print ("your " ++pokemonName pokemona++ " hp is: " ++ show (pokemonHP pokemona))
  
  threadDelay 1000000
  
  print (pokemonName pokemonb++ " hp is: " ++ show (pokemonHP pokemonb))
  threadDelay 1000000
  print "Pick your move:"
  ansMove<-getMove pokemona
  if pp ansMove <= 0
    then do
    print "no pp left!"
    play (State (pokemona, pokemonb))
    else do
    pokemona <- changeCharge pokemona ansMove
    print("Your Pokemon uses " ++ moveName ansMove ++ " and does")
    realDmg <- calcDmg pokemona ansMove pokemonb
    -- effDmg <- calcEff ansMove pokemonb
    -- let finalDmg = realDmg * effDmg
    print realDmg
    print "damage!"
    b <- doDamage realDmg pokemonb
    if pokemonHP b <= 0
      then do 
      putStrLn (pokemonName pokemonb)
      threadDelay 1000000
      threadDelay 1000000
      putStrLn "has fainted!"
      return (pokemona,b)
      else do
        (pa,pb) <- medAi pokemona b
        if pokemonHP pa <= 0
            then do 
              putStrLn (pokemonName pokemona)
              threadDelay 1000000
              threadDelay 1000000
              putStrLn "has fainted!"
              return (pa,b)
              else play (State (pa,pb))

play3v3 (h1:t1) [] =
 do
 print ("you win")
 return (h1:t1)

play3v3 [] (h2:t2)  =
 do
 print( "you lose")
 return (h2:t2)

play3v3 (h1:t1) (h2:t2)  =
 do
 (a,b) <- play (State (h1,h2))
 if pokemonHP a <=0
  then do
  print "you lose one round!"
  play3v3 (t1) (b:t2)
  else do
  print "you win one round!"
  play3v3 (a:t1) (t2)









