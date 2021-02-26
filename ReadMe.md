# Pokemon Battle Similator
Authors: David, Johnson, Yifu

# What is the this?
For the project, we are consturcting a smpiflied version of the battle system in the famous game Pokemon. The final result will be a one-on-one, consol based battle similator. User will be abole to select different moves in their turn to attack and deffend. The game ends if the one of the pokemon's HP reaches 0 and the user runs out of usable Pokemon.
# How to run
* make sure cd to the correct directory
```
$ cd  threepenny-gui/samples
$ stack ghci
```
* then compile and start with the following
```
$ :load game
$ main
```
* then go to your local server: http://127.0.0.1:8023/

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


## References:
Some Non-Pokemon Template Code is from: https://github.com/HeinrichApfelmus/threepenny-gui
