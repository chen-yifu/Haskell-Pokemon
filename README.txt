Pokemon Battel Similator

Authors: David, Johnson, Yifu

What is the problem?

For the project, we are consturcting a smpiflied version of the battle system in the famous game Pokemon. The final result will be a one-on-one, consol based battle similator. User will be abole to select different moves in their turn to attack and deffend. The game ends if the one of the pokemon's HP reaches 0 and the user runs out of usable Pokemon.

What is the something extra?
Artificial Intelligence Agent
There are multiple levels of difficulties for the AI trainer:
Easy
Randomly chooses defence moves 50% of the time
Medium
Often uses more advanced moves
When health is below 25%, the trainer uses healing potion (max limit = 3)
Hard
Includes everything in Medium
Uses counter moves
Counters type
Counters multi-turn attack from enemy with defensive move
Makes optimal decisions based on game state (by a search algorithm)
Graphical User Interface
Colored Images for Pokemon and Background
Animated moves
Textbox with battle information
Battle Options
Number of pokemons per trainer
3v3
User-configured
User-defined pokemon
Customized name, abilities, type
Battle Interactions

We create comprehensive logic around the interaction mechanisms, which include following:

Pokemons
Type
Abilities
HP
Level
Attack
Defence
Special Attack
Additional damage for special abilities
Scaled by pokemon level
Special Defence
Additional resistance for special attack from enemies
Speed
Pokemon with higher speed moves first
Abilities
Type
Damage
If type counters the enemy, incurs 2x damage
Charges
Ability becomes unavailable when there's no charges left
Items
Healing potion
Buff potion
Terrain and Weather Effects
Enhances the pokemon with corresponding types