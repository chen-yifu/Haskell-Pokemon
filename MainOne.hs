module Foreign.PokemonGame.MainOne where
import System.IO
import Foreign.PokemonGame.Pokemon
import Foreign.PokemonGame.State
import Foreign.PokemonGame.UserGetMove
import Foreign.PokemonGame.Move
import Control.Concurrent
import Foreign.PokemonGame.Ai
import Foreign.PokemonGame.CalculateDamage


mainone :: IO (Pokemon,Pokemon)
mainone = play testState dumbAi 

-- the main loop of the game, the player chooses a move and the game updates at each turn
-- ends when either pokemon dies
play (State (pokemona,pokemonb)) aiLevel  = 
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
    play (State (pokemona, pokemonb)) aiLevel
    else do
    pokemona <- changeCharge pokemona ansMove
    realDmg <- calcDmg pokemona ansMove pokemonb
    putStrLn ("Your Pokemon uses " ++ moveName ansMove ++ " and does " ++ show realDmg ++ " damage!")
    mod<-calcEff ansMove pokemonb
    printStatement mod
    b <- doDamage realDmg pokemonb
    if pokemonHP b <= 0
      then do 
      putStrLn (pokemonName pokemonb ++ " has fainted")
      return (pokemona,b)
      else do
        (pa,pb) <- aiLevel pokemona b
        if pokemonHP pa <= 0
            then do 
              putStrLn (pokemonName pokemona ++ " has fainted")
              threadDelay 1000000
              return (pa,b)
              else play (State (pa,pb)) aiLevel


-- multi-pokemon mode, usable in terminal but not yet integrated to GUI
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
 (a,b) <- play (State (h1,h2)) dumbAi
 if pokemonHP a <=0
  then do
  print "you lose one round!"
  play3v3 (t1) (b:t2)
  else do
  print "you win one round!"
  play3v3 (a:t1) (t2)









