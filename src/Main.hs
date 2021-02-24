module Main where
import System.IO
import Pokemon
import State
import UserGetMove
import Move
import Control.Concurrent
import Ai



main :: IO Pokemon
main = play testState  


play:: State -> IO Pokemon
play (State (pokemona,pokemonb))  = 
  do 
  print ("your " ++pokemonName pokemona++ " hp is: " ++ show (pokemonHP pokemona))
  
  threadDelay 1000000
  
  print (pokemonName pokemonb++ " hp is: " ++ show (pokemonHP pokemonb))
  threadDelay 1000000
  print "Pick your move:"
  ansMove<-getMove pokemona
  print("Your Pokemon uses " ++ moveName ansMove ++ " and does")
  realDmg <- calcDmg (power ansMove) pokemonb
  print(realDmg)
  print "damage!"
  b <- doDamage (realDmg) pokemonb
  a <- dumbAi pokemona b

  if pokemonHP b <= 0
    then do 
    putStrLn (pokemonName pokemonb)
    threadDelay 1000000
    threadDelay 1000000
    putStrLn "has fainted!"
    return b
    else if pokemonHP a <= 0
      then do 
        putStrLn (pokemonName pokemona)
        threadDelay 1000000
        threadDelay 1000000
        putStrLn "has fainted!"
        return a
        else play (State (a,b))