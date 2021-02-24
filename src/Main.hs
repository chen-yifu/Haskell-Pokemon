module Main where
import System.IO
import Pokemon
import State
import UserGetMove
import Move
import Control.Concurrent



main :: IO Pokemon
main = play testState  


play:: State -> IO Pokemon
play (State (pokemona,pokemonb))  = 
  do 
  print ("your " ++pokemonName pokemona++ " hp is: " ++ show (health pokemona))
  
  threadDelay 1000000
  
  print (pokemonName pokemonb++ " hp is: " ++ show (health pokemonb))
  threadDelay 1000000
  print "Pick your move:"
  ansMove<-getMove pokemona
  print("Your Pokemon uses " ++ moveName ansMove ++ " and does")
  print(power ansMove)
  print "damage!"
  b <- doDamage (power ansMove) pokemonb
  print "opponent uses 50 damage move!"
  a <- doDamage 50 pokemona

  if health a <= 0
    then do 
    putStrLn (pokemonName pokemona)
    threadDelay 1000000
    threadDelay 1000000
    putStrLn "has fainted!"
    return a 
    else if health b <= 0
      then do 
        putStrLn (pokemonName pokemonb) 
        putStrLn "has fainted!"
        return b
        else play (State (a,b))