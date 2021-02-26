Pokemon Battle Similator

Authors: David, Johnson, Yifu

What is the problem?

For the project, we are consturcting a smpiflied version of the battle system in the famous game Pokemon. The final result will be a one-on-one, consol based battle similator. User will be abole to select different moves in their turn to attack and deffend. The game ends if the one of the pokemon's HP reaches 0 and the user runs out of usable Pokemon.

What is the something extra?
Pokemon Database
Using a public dataset in CSV format for Pokemon on Kaggle (reference), we generated Haskell code from the CSV data using a python script.
An entire database is available for each of {Pokemon, Move, Type}:
Pokemon Database
Pokemon
index: the pokedex index (used to match Pokemon with the corresponding image)
int
name: pokemon's name
string
type1: first type attribute (used to calculate critical damage multiplier)
Type
type2: second type attribute (used to calculate critical damage multiplier)
Type
hp: base health
int
attack: base attack
int
defence: base defence
int
specialAttack: base attack for special Move
int
specialDefence: base defence against special Move
int
moves: contains all possible moves that can be unlocked in the game
list of Moves
Move Database
moveName: name of the move
string
moveDescription: a description about the move, including its effects
string
moveType: Type of move (used to calculate critical damage multiplier)
Type
power: base damage of the move (i.e. if the crit damage multiplier is 1.0)
int
accuracy: the probability that this move will be successful (otherwise skips a turn)
float
pp: the remaining number of charges for this move
int
moveEffect: the effects of the move, e.g., poison, stun, weakened, etc. (we left this for future work)
string
Type Database
Type
defenceType1: first type name of the defender
string
defenceType2: second type name of the defender
string
normal: the damage multiplier that will be applied if the attacker's type is Normal and the defender's type is defenceType1 and defenceType2
float, damage multiplier
fire: the damage multiplier that will be applied if the attacker's type is Fire and the defender's type is defenceType1 and defenceType2
float, damage multiplier
etc…… all other types listed in each Type object
Artificial Intelligence Agent
There are multiple levels of difficulties for the AI trainer:
Easy
Chose lowest attack moves every tern
Hard
When health is below 15, the trainer uses healing potion (max limit = 3)
Uses counter moves
Counters type
Counters multi-turn attack from enemy with defensive move
Makes optimal decisions based on game state (by a search algorithm) to do more tame to the player
Graphical User Interface
Colored Images for Pokemon and Background
Animated moves
Textbox with battle information
Battle Options
Number of pokemons per trainer
1v1
Multiple Vs Multiple
Pokemon option
Customized abilities
Battle Interactions

We create comprehensive logic around the interaction mechanisms, which include following:

Pokemons
Type 1 & 2
Abilities(Moves)
HP
Level
Attack
Defence
Special Attack
Additional damage for special abilities
Scaled by pokemon level
Special Defence
Additional resistance for special attack from enemies
Abilities
Type
Description
Power
The power of damage or healing
Charges
Ability becomes unavailable when there's no charges left
Calculation
Damage calculation
Determine the amount of damage is done depending on he attacker's attack, target's defence, two pokemon's type and the power of the move.
Heal calculation
Determine the amount of healing is done
What did we learn from doing this?
Learned about Functional Programming

Functional programming language(referred to as FPL) is very different than the OOP languages frequently worked with. The formatting of FPL is straightforward to read as if they are English sentences. This characteristic makes it very easy to interpret and understand. Also, because of that, it is convenient to use FPL to do higher-level designing. FPL also provides fast ways to declare variables, methods and tests. Therefore it makes the work neat and concise. We are able to create objects that have a functional nature, and write modularized code that executes at fast speeds. Another important feature about FPL is that it is a strongly-typed language. This means the compiler will do a lot of work for you, including finding out more errors during the compiling stage. It makes our code safer, but it can also introduce type errors that are had to deal with.

Learned from GUI

We used the “threepenny-gui” library, which has built in functions that perform edits to the underlying HTML and CSS files using Haskell,

e.g.: canvas <- UI.canvas
# set UI.height canvasSizeHeight
# set UI.width canvasSizeWidth
# set style [("border", "solid black 1px"), ("background", "#eee")]

We think using Haskell is not the best idea because it is complicated passing variables around. We are not sure how to write asynchronous functions to perform the features we wanted. The strongly-typed nature also makes it difficult to pass data around. For example, the expected type is “UI(),” but the actual type is “IO(),” which has to be solved using the “liftIO” function. There are many built-in short-hands in Haskell, and the “threepenny-gui” used them a lot. It made modifying the sample code significantly harder.

e.g.: bSelectionPokemon <- stepper Nothing $ head <$> unions
[ eSelection
, Nothing <$ eDelete
, Just . nextKey <$> bDatabasePokemon <@ eDummy
, (\b s p -> b >>= \a -> if p (s a) then Just a else Nothing)
<$> bSelection <*> bShowDataItemPokemon <@> eFilter]

In the furture if we are going to deal with GUI with Haskell, we will consider an alternative library to work with.

Learned from AI

At first, we tried to use dynamic programming for this program. Yet, we find there are too many possibilities to calculate—hundreds of Pokemons with hundreds of moves. Also, there is no simple “winning-strategy” for this battle like the MagicSum game strategy. Instead, our AI now makes decisions based on the current status of the game. The strong-typed nature also makes it likely to have type mismatch. For example, when we are trying to calculate the best damage we could deal with in this stage, we had difficulties dealing with methods that take and produces Int, Integer, m Integer, IO Integer at the same time. That makes writing programs slower. However, due to the nature of functional programming, AI testing is surprisingly easy to do.

Is Functional Programming suitable for this program:

We think Functional Programming is suitable for this program. Due to its characteristics explained above, it makes the desining and fragment-testing very conveinent. However, we felt the actual implimentation is more challenging than OOP languages such as Java. As a terminal based game , but when expanding to a game with GUI
