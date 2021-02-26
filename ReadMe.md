# How to run
```
$ :load InitState
$ Initstate
```

# All .hs Files
## Ai.hs
* Contains functions related to AIs
* important functions: dumbAi, medAi

## CalculateDamage.hs
* Contains functions related to damage and heal calculations
* important functions: calcDmg, healer

## GameUtil.hs
* Contains helper function for checking validity
* important functions: isPokemon, isNumber

## InitState.hs
* Contains the main function to start the game
* important functions: initState

## Main.hs
* Contains functions related to performing the actual game with different game states
* important functions: play, play3v3

## Move.hs
* Contains a dataset of all available moves for the Pokemons

## Pokemon.hs
* Contains a dataset of all available Pokemons

## State.hs
* Contains functions related to game states
* important functions: State, Game

## Type.hs
* Contains a dataset of all multiplier with every pair of type(different elements in Pokemon) for damage calculation

## UserGetMove.hs
* Contains functions related to get user selected moves
* important functions: getMove, findChosenMove
