module Pokemon where

import Move
import Type

-- data Moves = Ember | FlameThrower |BasicAttack| FireBlast  deriving (Eq, Show)
data Pokemon = Pokemon{
  pokemonIndex::Int,
  pokemonName::[Char],
  health::Int,
  level::Int,
  pokemonHP:: Int,
  pokemonType1::Type,
  pokemonType2::Type,
  attack::Int,
  defence::Int,
  specialAttack::Int,
  specialDefence::Int,
  pokemonMoves::[Move]
  }  deriving (Eq,Show,Read)


--try not ot modify this
doDamage value pokemon =
  return pokemon {pokemonHP = pokemonHP pokemon - value}

--Here is the damage calculation part
calcDmg value pokemon = return (max (value - (div (defence pokemon) 2)) 0)


damageBase m
  | m == "Ember" = 20
  | m == "FlameThrower" = 30
  | m == "FireBlast" = 50
  | otherwise = 5

baseLevel:: Int
baseLevel = 20

baseHealth:: Int
baseHealth = 20

bulbasaur :: Pokemon
bulbasaur = Pokemon {
  pokemonIndex = 0,
  pokemonName = "Bulbasaur",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 49,
  defence = 49,
  specialAttack = 65,
  specialDefence = 65,
  pokemonMoves = [tackle, vineWhip, vineWhip, takeDown, razorLeaf, doubleEdge, seedBomb, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, echoedVoice, energyBall, frenzyPlant, skullBash, petalDance, magicalLeaf, leafStorm, powerWhip, sludge, gigaDrain, seedBomb, bind, snore, knockOff, gigaDrain]
}

ivysaur :: Pokemon
ivysaur = Pokemon {
  pokemonIndex = 1,
  pokemonName = "Ivysaur",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 62,
  defence = 63,
  specialAttack = 80,
  specialDefence = 80,
  pokemonMoves = [tackle, vineWhip, takeDown, razorLeaf, doubleEdge, solarBeam, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, echoedVoice, energyBall, frenzyPlant, skullBash, petalDance, magicalLeaf, leafStorm, powerWhip, sludge, gigaDrain, seedBomb, bind, snore, knockOff, gigaDrain, seedBomb]
}

venusaur :: Pokemon
venusaur = Pokemon {
  pokemonIndex = 2,
  pokemonName = "Venusaur",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 82,
  defence = 83,
  specialAttack = 100,
  specialDefence = 100,
  pokemonMoves = [petalDance, tackle, vineWhip, vineWhip, takeDown, razorLeaf, doubleEdge, petalBlizzard, solarBeam, venoshock, hiddenPower, hyperBeam, solarBeam, earthquake, sludgeBomb, facade, roundMove, echoedVoice, energyBall, gigaImpact, bulldoze, frenzyPlant, grassPledge, skullBash, petalDance, magicalLeaf, leafStorm, powerWhip, sludge, gigaDrain, seedBomb, bind, snore, knockOff, gigaDrain, outrage, seedBomb]
}

charmander :: Pokemon
charmander = Pokemon {
  pokemonIndex = 3,
  pokemonName = "Charmander",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 39,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 52,
  defence = 43,
  specialAttack = 60,
  specialDefence = 50,
  pokemonMoves = [petalDance, tackle, vineWhip, vineWhip, takeDown, razorLeaf, doubleEdge, petalBlizzard, solarBeam, venoshock, hiddenPower, hyperBeam, solarBeam, earthquake, sludgeBomb, facade, roundMove, echoedVoice, energyBall, gigaImpact, bulldoze, frenzyPlant, grassPledge, skullBash, petalDance, magicalLeaf, leafStorm, powerWhip, sludge, gigaDrain, seedBomb, bind, snore, knockOff, gigaDrain, outrage, seedBomb]
}

charmeleon :: Pokemon
charmeleon = Pokemon {
  pokemonIndex = 4,
  pokemonName = "Charmeleon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 58,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 64,
  defence = 58,
  specialAttack = 80,
  specialDefence = 65,
  pokemonMoves = [scratch, ember, fireFang, flameBurst, slash, flamethrower, fireSpin, inferno, dragonClaw, hiddenPower, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, shadowClaw, rockSlide, blastBurn, ancientPower, bite, outrage, crunch, dragonRush, metalClaw, flareBlitz, dragonPulse, focusPunch, airCutter, thunderPunch, firePunch, dragonPulse, ironTail, snore, heatWave, focusPunch]
}

charizard :: Pokemon
charizard = Pokemon {
  pokemonIndex = 5,
  pokemonName = "Charizard",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 78,
  pokemonType1 = Fire,
  pokemonType2 = Flying,
  attack = 84,
  defence = 78,
  specialAttack = 109,
  specialDefence = 85,
  pokemonMoves = [scratch, ember, ember, fireFang, flameBurst, slash, flamethrower, fireSpin, inferno, dragonClaw, hiddenPower, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, shadowClaw, rockSlide, blastBurn, ancientPower, bite, outrage, crunch, dragonRush, metalClaw, flareBlitz, dragonPulse, focusPunch, airCutter, thunderPunch, firePunch, dragonPulse, ironTail, snore, heatWave, focusPunch]
}

squirtle :: Pokemon
squirtle = Pokemon {
  pokemonIndex = 6,
  pokemonName = "Squirtle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 44,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 48,
  defence = 65,
  specialAttack = 50,
  specialDefence = 64,
  pokemonMoves = [wingAttack, flareBlitz, heatWave, dragonClaw, shadowClaw, airSlash, scratch, ember, ember, fireFang, flameBurst, slash, flamethrower, fireSpin, inferno, heatWave, flareBlitz, dragonClaw, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, steelWing, focusBlast, skyDrop, brutalSwing, shadowClaw, gigaImpact, fly, bulldoze, rockSlide, dragonTail, blastBurn, firePledge, ancientPower, bite, outrage, crunch, dragonRush, metalClaw, flareBlitz, dragonPulse, focusPunch, airCutter, thunderPunch, firePunch, dragonPulse, ironTail, snore, heatWave, airCutter, focusPunch, outrage]
}

wartortle :: Pokemon
wartortle = Pokemon {
  pokemonIndex = 7,
  pokemonName = "Wartortle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 59,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 63,
  defence = 80,
  specialAttack = 65,
  specialDefence = 80,
  pokemonMoves = [wingAttack, flareBlitz, heatWave, dragonClaw, shadowClaw, airSlash, scratch, ember, ember, fireFang, flameBurst, slash, flamethrower, fireSpin, inferno, heatWave, flareBlitz, dragonClaw, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, steelWing, focusBlast, skyDrop, brutalSwing, shadowClaw, gigaImpact, fly, bulldoze, rockSlide, dragonTail, blastBurn, firePledge, ancientPower, bite, outrage, crunch, dragonRush, metalClaw, flareBlitz, dragonPulse, focusPunch, airCutter, thunderPunch, firePunch, dragonPulse, ironTail, snore, heatWave, airCutter, focusPunch, outrage]
}

blastoise :: Pokemon
blastoise = Pokemon {
  pokemonIndex = 8,
  pokemonName = "Blastoise",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 79,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 83,
  defence = 100,
  specialAttack = 85,
  specialDefence = 105,
  pokemonMoves = [wingAttack, flareBlitz, heatWave, dragonClaw, shadowClaw, airSlash, scratch, ember, ember, fireFang, flameBurst, slash, flamethrower, fireSpin, inferno, heatWave, flareBlitz, dragonClaw, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, steelWing, focusBlast, skyDrop, brutalSwing, shadowClaw, gigaImpact, fly, bulldoze, rockSlide, dragonTail, blastBurn, firePledge, thunderPunch, firePunch, dragonPulse, ironTail, snore, heatWave, airCutter, focusPunch, outrage]
}

caterpie :: Pokemon
caterpie = Pokemon {
  pokemonIndex = 9,
  pokemonName = "Caterpie",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 30,
  defence = 35,
  specialAttack = 20,
  specialDefence = 20,
  pokemonMoves = [tackle, waterGun, bubble, bite, rapidSpin, waterPulse, aquaTail, skullBash, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, facade, roundMove, scald, surf, waterfall, hydroCannon, muddyWater, fakeOut, aquaJet, brine, dragonPulse, auraSphere, icePunch, icyWind, aquaTail, zenHeadbutt, dragonPulse, ironTail, snore, focusPunch, waterPulse]
}

metapod :: Pokemon
metapod = Pokemon {
  pokemonIndex = 10,
  pokemonName = "Metapod",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 20,
  defence = 55,
  specialAttack = 25,
  specialDefence = 25,
  pokemonMoves = [tackle, waterGun, waterGun, bubble, bite, rapidSpin, waterPulse, aquaTail, skullBash, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, facade, roundMove, scald, surf, waterfall, hydroCannon, muddyWater, fakeOut, aquaJet, brine, dragonPulse, auraSphere, icePunch, icyWind, aquaTail, zenHeadbutt, dragonPulse, ironTail, snore, focusPunch, waterPulse]
}

butterfree :: Pokemon
butterfree = Pokemon {
  pokemonIndex = 11,
  pokemonName = "Butterfree",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 45,
  defence = 50,
  specialAttack = 90,
  specialDefence = 80,
  pokemonMoves = [flashCannon, tackle, waterGun, waterGun, bubble, bite, rapidSpin, waterPulse, aquaTail, skullBash, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, roundMove, focusBlast, scald, gigaImpact, bulldoze, rockSlide, dragonTail, flashCannon, surf, darkPulse, waterfall, hydroCannon, waterPledge, muddyWater, fakeOut, aquaJet, brine, dragonPulse, auraSphere, signalBeam, icePunch, icyWind, aquaTail, zenHeadbutt, dragonPulse, ironTail, snore, focusPunch, waterPulse, outrage]
}

weedle :: Pokemon
weedle = Pokemon {
  pokemonIndex = 12,
  pokemonName = "Weedle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 35,
  defence = 30,
  specialAttack = 20,
  specialDefence = 20,
  pokemonMoves = [flashCannon, tackle, waterGun, waterGun, bubble, bite, rapidSpin, waterPulse, aquaTail, skullBash, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, roundMove, focusBlast, scald, gigaImpact, bulldoze, rockSlide, dragonTail, flashCannon, surf, darkPulse, waterfall, hydroCannon, waterPledge, muddyWater, fakeOut, aquaJet, brine, dragonPulse, auraSphere, signalBeam, icePunch, icyWind, aquaTail, zenHeadbutt, dragonPulse, ironTail, snore, focusPunch, waterPulse, outrage]
}

kakuna :: Pokemon
kakuna = Pokemon {
  pokemonIndex = 13,
  pokemonName = "Kakuna",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 25,
  defence = 50,
  specialAttack = 25,
  specialDefence = 25,
  pokemonMoves = [tackle, bugBite, bugBite, electroweb, snore]
}

beedrill :: Pokemon
beedrill = Pokemon {
  pokemonIndex = 14,
  pokemonName = "Beedrill",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 90,
  defence = 40,
  specialAttack = 45,
  specialDefence = 80,
  pokemonMoves = [bugBite, electroweb, tackle, bugBite]
}

pidgey :: Pokemon
pidgey = Pokemon {
  pokemonIndex = 15,
  pokemonName = "Pidgey",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 45,
  defence = 40,
  specialAttack = 35,
  specialDefence = 35,
  pokemonMoves = [gust, confusion, confusion, psybeam, silverWind, bugBuzz, airSlash, venoshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, energyBall, acrobatics, gigaImpact, infestation, dreamEater, uturn, bugBite, signalBeam, electroweb, snore, gigaDrain, airCutter, tackle, bugBite]
}

pidgeotto :: Pokemon
pidgeotto = Pokemon {
  pokemonIndex = 16,
  pokemonName = "Pidgeotto",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 63,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 60,
  defence = 55,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [poisonSting, bugBite, bugBite, electroweb]
}

pidgeot :: Pokemon
pidgeot = Pokemon {
  pokemonIndex = 17,
  pokemonName = "Pidgeot",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 83,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 80,
  defence = 75,
  specialAttack = 70,
  specialDefence = 70,
  pokemonMoves = [bugBite, electroweb, poisonSting, bugBite]
}

rattata :: Pokemon
rattata = Pokemon {
  pokemonIndex = 18,
  pokemonName = "Rattata",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 56,
  defence = 35,
  specialAttack = 25,
  specialDefence = 35,
  pokemonMoves = [twineedle, furyAttack, furyAttack, rage, pursuit, venoshock, assurance, pinMissile, poisonJab, fellStinger, venoshock, hiddenPower, hyperBeam, solarBeam, brickBreak, sludgeBomb, aerialAce, facade, thief, roundMove, falseSwipe, brutalSwing, acrobatics, payback, gigaImpact, xScissor, infestation, poisonJab, uturn, bugBite, drillRun, electroweb, snore, knockOff, gigaDrain, airCutter, poisonSting, bugBite]
}

raticate :: Pokemon
raticate = Pokemon {
  pokemonIndex = 19,
  pokemonName = "Raticate",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 81,
  defence = 60,
  specialAttack = 50,
  specialDefence = 70,
  pokemonMoves = [twineedle, furyAttack, furyAttack, rage, pursuit, venoshock, assurance, pinMissile, poisonJab, fellStinger, venoshock, hiddenPower, hyperBeam, solarBeam, brickBreak, sludgeBomb, aerialAce, facade, thief, roundMove, falseSwipe, brutalSwing, acrobatics, payback, gigaImpact, xScissor, infestation, poisonJab, uturn, bugBite, drillRun, electroweb, snore, knockOff, gigaDrain, airCutter, poisonSting, bugBite]
}

spearow :: Pokemon
spearow = Pokemon {
  pokemonIndex = 20,
  pokemonName = "Spearow",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 60,
  defence = 30,
  specialAttack = 31,
  specialDefence = 31,
  pokemonMoves = [tackle, gust, quickAttack, twister, wingAttack, airSlash, hurricane, hiddenPower, aerialAce, facade, thief, roundMove, steelWing, fly, uturn, pursuit, feintAttack, steelWing, airCutter, airSlash, braveBird, uproar, uproar, snore, heatWave, skyAttack, airCutter]
}

fearow :: Pokemon
fearow = Pokemon {
  pokemonIndex = 21,
  pokemonName = "Fearow",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 90,
  defence = 65,
  specialAttack = 61,
  specialDefence = 61,
  pokemonMoves = [tackle, gust, gust, quickAttack, twister, wingAttack, airSlash, hurricane, hiddenPower, aerialAce, facade, thief, roundMove, steelWing, fly, uturn, pursuit, feintAttack, steelWing, airCutter, airSlash, braveBird, uproar, uproar, snore, heatWave, skyAttack, airCutter]
}

ekans :: Pokemon
ekans = Pokemon {
  pokemonIndex = 22,
  pokemonName = "Ekans",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 60,
  defence = 44,
  specialAttack = 40,
  specialDefence = 54,
  pokemonMoves = [hurricane, tackle, gust, quickAttack, gust, quickAttack, twister, wingAttack, airSlash, hurricane, hiddenPower, hyperBeam, aerialAce, facade, thief, roundMove, steelWing, gigaImpact, fly, uturn, pursuit, feintAttack, steelWing, airCutter, airSlash, braveBird, uproar, uproar, snore, heatWave, skyAttack, airCutter]
}

arbok :: Pokemon
arbok = Pokemon {
  pokemonIndex = 23,
  pokemonName = "Arbok",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 95,
  defence = 69,
  specialAttack = 65,
  specialDefence = 79,
  pokemonMoves = [hurricane, tackle, gust, quickAttack, gust, quickAttack, twister, wingAttack, airSlash, hurricane, hiddenPower, hyperBeam, aerialAce, facade, thief, roundMove, steelWing, gigaImpact, fly, uturn, pursuit, feintAttack, steelWing, airCutter, airSlash, braveBird, uproar, uproar, snore, heatWave, skyAttack, airCutter]
}

pikachu :: Pokemon
pikachu = Pokemon {
  pokemonIndex = 24,
  pokemonName = "Pikachu",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 55,
  defence = 40,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [tackle, quickAttack, bite, pursuit, hyperFang, assurance, crunch, suckerPunch, doubleEdge, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, uturn, wildCharge, flameWheel, furySwipes, bite, uproar, lastResort, revenge, covet, uproar, lastResort, icyWind, zenHeadbutt, ironTail, snore, shockWave]
}

raichu :: Pokemon
raichu = Pokemon {
  pokemonIndex = 25,
  pokemonName = "Raichu",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 90,
  defence = 55,
  specialAttack = 90,
  specialDefence = 80,
  pokemonMoves = [tackle, quickAttack, bite, pursuit, hyperFang, assurance, crunch, suckerPunch, doubleEdge, hiddenPower, iceBeam, blizzard, shadowBall, sludgeBomb, facade, thief, roundMove, shadowClaw, uturn, snarl, darkPulse, furySwipes, uproar, revenge]
}

sandshrew :: Pokemon
sandshrew = Pokemon {
  pokemonIndex = 26,
  pokemonName = "Sandshrew",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 75,
  defence = 85,
  specialAttack = 20,
  specialDefence = 30,
  pokemonMoves = [tackle, quickAttack, quickAttack, bite, pursuit, hyperFang, assurance, crunch, suckerPunch, doubleEdge, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, gigaImpact, uturn, wildCharge, flameWheel, furySwipes, bite, uproar, lastResort, revenge, covet, uproar, lastResort, icyWind, zenHeadbutt, ironTail, snore, shockWave]
}

sandslash :: Pokemon
sandslash = Pokemon {
  pokemonIndex = 27,
  pokemonName = "Sandslash",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 100,
  defence = 110,
  specialAttack = 45,
  specialDefence = 55,
  pokemonMoves = [tackle, quickAttack, quickAttack, bite, pursuit, hyperFang, assurance, crunch, suckerPunch, doubleEdge, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, shadowBall, sludgeWave, sludgeBomb, facade, thief, roundMove, shadowClaw, gigaImpact, uturn, snarl, darkPulse, furySwipes, uproar, revenge]
}

nidoran :: Pokemon
nidoran = Pokemon {
  pokemonIndex = 31,
  pokemonName = "Nidoran",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 46,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 57,
  defence = 40,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [wrap, poisonSting, bite, acid, acidSpray, mudBomb, belch, gunkShot, venoshock, hiddenPower, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, thief, roundMove, brutalSwing, payback, bulldoze, rockSlide, infestation, poisonJab, darkPulse, pursuit, slam, poisonFang, poisonTail, ironTail, suckerPunch, seedBomb, gunkShot, aquaTail, ironTail, bind, snore, gigaDrain]
}

nidorina :: Pokemon
nidorina = Pokemon {
  pokemonIndex = 29,
  pokemonName = "Nidorina",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 62,
  defence = 67,
  specialAttack = 55,
  specialDefence = 55,
  pokemonMoves = [peck, pursuit, furyAttack, aerialAce, assurance, drillPeck, hiddenPower, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, falseSwipe, fly, uturn, feintAttack, quickAttack, triAttack, astonish, skyAttack, uproar, steelWing, razorWind, drillRun, uproar, snore, heatWave, skyAttack, airCutter]
}

nidoqueen :: Pokemon
nidoqueen = Pokemon {
  pokemonIndex = 30,
  pokemonName = "Nidoqueen",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Poison,
  pokemonType2 = Ground,
  attack = 92,
  defence = 87,
  specialAttack = 75,
  specialDefence = 85,
  pokemonMoves = [drillRun, pluck, peck, pursuit, pursuit, furyAttack, aerialAce, assurance, drillPeck, drillRun, hiddenPower, hyperBeam, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, falseSwipe, gigaImpact, fly, uturn, feintAttack, quickAttack, triAttack, astonish, skyAttack, uproar, steelWing, razorWind, drillRun, uproar, snore, heatWave, skyAttack, airCutter]
}

nidorino :: Pokemon
nidorino = Pokemon {
  pokemonIndex = 32,
  pokemonName = "Nidorino",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 61,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 72,
  defence = 57,
  specialAttack = 55,
  specialDefence = 55,
  pokemonMoves = [crunch, iceFang, thunderFang, fireFang, wrap, poisonSting, bite, poisonSting, bite, acid, acidSpray, mudBomb, belch, gunkShot, venoshock, hiddenPower, hyperBeam, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, thief, roundMove, brutalSwing, payback, gigaImpact, bulldoze, rockSlide, dragonTail, infestation, poisonJab, darkPulse, pursuit, slam, poisonFang, poisonTail, ironTail, suckerPunch, voltTackle, seedBomb, gunkShot, aquaTail, ironTail, bind, snore, gigaDrain]
}

nidoking :: Pokemon
nidoking = Pokemon {
  pokemonIndex = 33,
  pokemonName = "Nidoking",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 81,
  pokemonType1 = Poison,
  pokemonType2 = Ground,
  attack = 102,
  defence = 77,
  specialAttack = 85,
  specialDefence = 75,
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, thunderbolt, thunder, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge]
}

clefairy :: Pokemon
clefairy = Pokemon {
  pokemonIndex = 34,
  pokemonName = "Clefairy",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 45,
  defence = 48,
  specialAttack = 60,
  specialDefence = 65,
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, thunderbolt, thunder, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge]
}

clefable :: Pokemon
clefable = Pokemon {
  pokemonIndex = 35,
  pokemonName = "Clefable",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 70,
  defence = 73,
  specialAttack = 95,
  specialDefence = 90,
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, thunderbolt, thunder, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge]
}

vulpix :: Pokemon
vulpix = Pokemon {
  pokemonIndex = 36,
  pokemonName = "Vulpix",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 38,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 41,
  defence = 40,
  specialAttack = 50,
  specialDefence = 65,
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, thunderbolt, thunder, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge]
}

ninetales :: Pokemon
ninetales = Pokemon {
  pokemonIndex = 37,
  pokemonName = "Ninetales",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 73,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 76,
  defence = 75,
  specialAttack = 81,
  specialDefence = 100,
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, thunderbolt, thunder, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge]
}

jigglypuff :: Pokemon
jigglypuff = Pokemon {
  pokemonIndex = 38,
  pokemonName = "Jigglypuff",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 115,
  pokemonType1 = Normal,
  pokemonType2 = Fairy,
  attack = 45,
  defence = 20,
  specialAttack = 45,
  specialDefence = 25,
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, thunderbolt, thunder, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge]
}

wigglytuff :: Pokemon
wigglytuff = Pokemon {
  pokemonIndex = 39,
  pokemonName = "Wigglytuff",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 140,
  pokemonType1 = Normal,
  pokemonType2 = Fairy,
  attack = 70,
  defence = 45,
  specialAttack = 85,
  specialDefence = 50,
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, thunderbolt, thunder, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge]
}

zubat :: Pokemon
zubat = Pokemon {
  pokemonIndex = 40,
  pokemonName = "Zubat",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Poison,
  pokemonType2 = Flying,
  attack = 45,
  defence = 35,
  specialAttack = 30,
  specialDefence = 40,
  pokemonMoves = [thunderShock, quickAttack, thunderbolt, hiddenPower, hyperBeam, thunderbolt, thunder, brickBreak, facade, thief, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, voltSwitch, wildCharge, doubleSlap, fakeOut, thunderPunch, disarmingVoice, voltTackle, covet, signalBeam, thunderPunch, electroweb, ironTail, snore, knockOff, focusPunch, shockWave, feint, spark, nuzzle, discharge, slam, wildCharge, thunder]
}

golbat :: Pokemon
golbat = Pokemon {
  pokemonIndex = 41,
  pokemonName = "Golbat",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Poison,
  pokemonType2 = Flying,
  attack = 80,
  defence = 70,
  specialAttack = 65,
  specialDefence = 75,
  pokemonMoves = [psychic, thunderShock, quickAttack, thunderbolt, psyshock, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, brickBreak, facade, thief, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, voltSwitch, wildCharge, doubleSlap, fakeOut, thunderPunch, disarmingVoice, voltTackle, feint, spark, nuzzle, discharge, slam, wildCharge, thunder]
}

oddish :: Pokemon
oddish = Pokemon {
  pokemonIndex = 42,
  pokemonName = "Oddish",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 50,
  defence = 55,
  specialAttack = 75,
  specialDefence = 65,
  pokemonMoves = [scratch, poisonSting, rollout, rapidSpin, furyCutter, swift, furySwipes, sandTomb, slash, dig, earthquake, hiddenPower, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, shadowClaw, bulldoze, rockSlide, xScissor, poisonJab, rapidSpin, metalClaw, crushClaw, nightSlash, mudShot, chipAway, rockClimb, covet, earthPower, ironTail, snore, knockOff, focusPunch]
}

gloom :: Pokemon
gloom = Pokemon {
  pokemonIndex = 43,
  pokemonName = "Gloom",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 65,
  defence = 70,
  specialAttack = 85,
  specialDefence = 75,
  pokemonMoves = [scratch, powderSnow, iceBall, rapidSpin, furyCutter, metalClaw, swift, furySwipes, slash, ironHead, blizzard, hiddenPower, blizzard, earthquake, leechLife, brickBreak, aerialAce, facade, thief, roundMove, shadowClaw, bulldoze, frostBreath, rockSlide, xScissor, poisonJab, icicleSpear, metalClaw, crushClaw, nightSlash, icicleCrash, chipAway]
}

vileplume :: Pokemon
vileplume = Pokemon {
  pokemonIndex = 44,
  pokemonName = "Vileplume",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 80,
  defence = 85,
  specialAttack = 110,
  specialDefence = 90,
  pokemonMoves = [crushClaw, scratch, poisonSting, poisonSting, rollout, rapidSpin, furyCutter, swift, furySwipes, sandTomb, slash, dig, earthquake, hiddenPower, hyperBeam, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, rapidSpin, metalClaw, crushClaw, nightSlash, mudShot, chipAway, rockClimb, covet, earthPower, ironTail, snore, knockOff, focusPunch]
}

paras :: Pokemon
paras = Pokemon {
  pokemonIndex = 45,
  pokemonName = "Paras",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Bug,
  pokemonType2 = Grass,
  attack = 70,
  defence = 55,
  specialAttack = 45,
  specialDefence = 55,
  pokemonMoves = [icicleSpear, icicleCrash, slash, iceBall, metalClaw, hiddenPower, blizzard, hyperBeam, earthquake, leechLife, brickBreak, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, gigaImpact, bulldoze, frostBreath, rockSlide, xScissor, poisonJab, icicleSpear, metalClaw, crushClaw, nightSlash, icicleCrash, chipAway, scratch, powderSnow, rapidSpin, furyCutter, swift, furySwipes, ironHead, blizzard]
}

parasect :: Pokemon
parasect = Pokemon {
  pokemonIndex = 46,
  pokemonName = "Parasect",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Bug,
  pokemonType2 = Grass,
  attack = 95,
  defence = 80,
  specialAttack = 60,
  specialDefence = 80,
  pokemonMoves = [scratch, doubleKick, poisonSting, furySwipes, bite, crunch, poisonFang, venoshock, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, sludgeBomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, poisonJab, takeDown, pursuit, skullBash, ironTail, poisonTail, chipAway, ironTail, snore, shockWave, waterPulse]
}

venonat :: Pokemon
venonat = Pokemon {
  pokemonIndex = 47,
  pokemonName = "Venonat",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 55,
  defence = 50,
  specialAttack = 40,
  specialDefence = 55,
  pokemonMoves = [scratch, doubleKick, poisonSting, furySwipes, bite, crunch, poisonFang, venoshock, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, sludgeBomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, poisonJab, takeDown, pursuit, skullBash, ironTail, poisonTail, chipAway, ironTail, snore, shockWave, waterPulse]
}

venomoth :: Pokemon
venomoth = Pokemon {
  pokemonIndex = 48,
  pokemonName = "Venomoth",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 65,
  defence = 60,
  specialAttack = 90,
  specialDefence = 75,
  pokemonMoves = [superpower, scratch, doubleKick, poisonSting, chipAway, bodySlam, earthPower, superpower, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, shadowBall, brickBreak, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, focusBlast, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, poisonJab, surf, takeDown, pursuit, skullBash, ironTail, poisonTail, chipAway, drillRun, uproar, thunderPunch, firePunch, icePunch, earthPower, superpower, icyWind, aquaTail, dragonPulse, ironTail, snore, focusPunch, shockWave, waterPulse, outrage, furySwipes, bite, crunch, poisonFang]
}

diglett :: Pokemon
diglett = Pokemon {
  pokemonIndex = 49,
  pokemonName = "Diglett",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 10,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 55,
  defence = 25,
  specialAttack = 35,
  specialDefence = 45,
  pokemonMoves = [peck, doubleKick, poisonSting, furyAttack, hornAttack, poisonJab, venoshock, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, sludgeBomb, facade, thief, roundMove, echoedVoice, shadowClaw, smartStrike, poisonJab, takeDown, confusion, suckerPunch, headSmash, ironTail, poisonTail, chipAway, drillRun, ironTail, snore, shockWave, waterPulse]
}

dugtrio :: Pokemon
dugtrio = Pokemon {
  pokemonIndex = 50,
  pokemonName = "Dugtrio",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 100,
  defence = 50,
  specialAttack = 50,
  specialDefence = 70,
  pokemonMoves = [peck, doubleKick, poisonSting, furyAttack, hornAttack, poisonJab, venoshock, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, sludgeBomb, facade, thief, roundMove, echoedVoice, shadowClaw, smartStrike, poisonJab, takeDown, confusion, suckerPunch, headSmash, ironTail, poisonTail, chipAway, drillRun, ironTail, snore, shockWave, waterPulse]
}

meowth :: Pokemon
meowth = Pokemon {
  pokemonIndex = 51,
  pokemonName = "Meowth",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 45,
  defence = 35,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [megahorn, peck, doubleKick, poisonSting, chipAway, thrash, earthPower, megahorn, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, shadowBall, brickBreak, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, thief, roundMove, echoedVoice, focusBlast, shadowClaw, smartStrike, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, poisonJab, surf, takeDown, confusion, suckerPunch, headSmash, ironTail, poisonTail, chipAway, drillRun, uproar, thunderPunch, firePunch, icePunch, earthPower, superpower, icyWind, aquaTail, dragonPulse, ironTail, snore, focusPunch, shockWave, waterPulse, outrage, furyAttack, hornAttack, poisonJab]
}

persian :: Pokemon
persian = Pokemon {
  pokemonIndex = 52,
  pokemonName = "Persian",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 70,
  defence = 60,
  specialAttack = 65,
  specialDefence = 65,
  pokemonMoves = [disarmingVoice, pound, doubleSlap, wakeUpSlap, storedPower, bodySlam, moonblast, meteorMash, psyshock, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, roundMove, echoedVoice, chargeBeam, dreamEater, dazzlingGleam, covet, storedPower, covet, signalBeam, bounce, thunderPunch, firePunch, icePunch, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse, magicalLeaf]
}

psyduck :: Pokemon
psyduck = Pokemon {
  pokemonIndex = 53,
  pokemonName = "Psyduck",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 52,
  defence = 48,
  specialAttack = 65,
  specialDefence = 50,
  pokemonMoves = [disarmingVoice, doubleSlap, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, dreamEater, dazzlingGleam, covet, storedPower, covet, signalBeam, bounce, thunderPunch, firePunch, icePunch, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse, pound, wakeUpSlap, storedPower, bodySlam, moonblast, meteorMash, magicalLeaf]
}

golduck :: Pokemon
golduck = Pokemon {
  pokemonIndex = 54,
  pokemonName = "Golduck",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 82,
  defence = 78,
  specialAttack = 95,
  specialDefence = 80,
  pokemonMoves = [ember, quickAttack, fireSpin, payback, feintAttack, hex, flameBurst, extrasensory, flamethrower, fireBlast, inferno, hiddenPower, flamethrower, fireBlast, facade, flameCharge, roundMove, overheat, energyBall, payback, darkPulse, feintAttack, heatWave, flareBlitz, extrasensory, secretPower, hex, tailSlap, covet, foulPlay, zenHeadbutt, ironTail, snore, heatWave]
}

mankey :: Pokemon
mankey = Pokemon {
  pokemonIndex = 55,
  pokemonName = "Mankey",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 80,
  defence = 35,
  specialAttack = 35,
  specialDefence = 45,
  pokemonMoves = [powderSnow, iceShard, icyWind, payback, feintAttack, hex, auroraBeam, extrasensory, iceBeam, blizzard, hiddenPower, iceBeam, blizzard, facade, roundMove, payback, frostBreath, darkPulse, freezeDry, moonblast, secretPower, tailSlap, extrasensory]
}

primeape :: Pokemon
primeape = Pokemon {
  pokemonIndex = 56,
  pokemonName = "Primeape",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 105,
  defence = 60,
  specialAttack = 60,
  specialDefence = 70,
  pokemonMoves = [flamethrower, quickAttack, psyshock, hiddenPower, hyperBeam, solarBeam, flamethrower, fireBlast, facade, flameCharge, roundMove, overheat, energyBall, payback, gigaImpact, dreamEater, darkPulse, feintAttack, heatWave, flareBlitz, extrasensory, secretPower, hex, tailSlap, covet, foulPlay, zenHeadbutt, ironTail, snore, heatWave, ember, fireSpin, payback, feintAttack, hex, flameBurst, extrasensory, fireBlast, inferno]
}

growlithe :: Pokemon
growlithe = Pokemon {
  pokemonIndex = 57,
  pokemonName = "Growlithe",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 70,
  defence = 45,
  specialAttack = 70,
  specialDefence = 50,
  pokemonMoves = [dazzlingGleam, iceBeam, iceShard, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, payback, gigaImpact, frostBreath, dreamEater, darkPulse, dazzlingGleam, freezeDry, moonblast, secretPower, tailSlap, extrasensory, powderSnow, icyWind, payback, feintAttack, hex, auroraBeam, extrasensory, blizzard]
}

arcanine :: Pokemon
arcanine = Pokemon {
  pokemonIndex = 58,
  pokemonName = "Arcanine",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 110,
  defence = 80,
  specialAttack = 100,
  specialDefence = 80,
  pokemonMoves = [pound, disarmingVoice, doubleSlap, rollout, roundMove, wakeUpSlap, bodySlam, hyperVoice, doubleEdge, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, roundMove, echoedVoice, chargeBeam, dreamEater, wildCharge, dazzlingGleam, feintAttack, lastResort, covet, covet, bounce, thunderPunch, firePunch, icePunch, lastResort, icyWind, hyperVoice, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse]
}

poliwag :: Pokemon
poliwag = Pokemon {
  pokemonIndex = 59,
  pokemonName = "Poliwag",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 50,
  defence = 40,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [doubleEdge, playRough, doubleSlap, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, dreamEater, wildCharge, dazzlingGleam, feintAttack, lastResort, covet, covet, bounce, thunderPunch, firePunch, icePunch, lastResort, icyWind, hyperVoice, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse, pound, disarmingVoice, rollout, roundMove, wakeUpSlap, bodySlam, hyperVoice]
}

poliwhirl :: Pokemon
poliwhirl = Pokemon {
  pokemonIndex = 60,
  pokemonName = "Poliwhirl",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 65,
  defence = 65,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [absorb, astonish, bite, wingAttack, airCutter, swift, poisonFang, leechLife, venoshock, airSlash, venoshock, hiddenPower, leechLife, shadowBall, sludgeBomb, aerialAce, facade, thief, roundMove, steelWing, acrobatics, payback, fly, uturn, quickAttack, pursuit, feintAttack, gust, zenHeadbutt, braveBird, gigaDrain, steelWing, uproar, zenHeadbutt, snore, heatWave, gigaDrain, airCutter]
}

poliwrath :: Pokemon
poliwrath = Pokemon {
  pokemonIndex = 61,
  pokemonName = "Poliwrath",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Water,
  pokemonType2 = Fighting,
  attack = 95,
  defence = 95,
  specialAttack = 70,
  specialDefence = 90,
  pokemonMoves = [absorb, astonish, bite, astonish, bite, wingAttack, airCutter, swift, poisonFang, leechLife, venoshock, airSlash, venoshock, hiddenPower, hyperBeam, leechLife, shadowBall, sludgeBomb, aerialAce, facade, thief, roundMove, steelWing, acrobatics, payback, gigaImpact, fly, uturn, quickAttack, pursuit, feintAttack, gust, zenHeadbutt, braveBird, gigaDrain, steelWing, uproar, zenHeadbutt, snore, heatWave, gigaDrain, airCutter]
}

abra :: Pokemon
abra = Pokemon {
  pokemonIndex = 62,
  pokemonName = "Abra",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 25,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 20,
  defence = 15,
  specialAttack = 105,
  specialDefence = 55,
  pokemonMoves = [absorb, acid, megaDrain, gigaDrain, moonblast, petalDance, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, energyBall, infestation, dazzlingGleam, razorLeaf, secretPower, seedBomb, snore, gigaDrain]
}

kadabra :: Pokemon
kadabra = Pokemon {
  pokemonIndex = 63,
  pokemonName = "Kadabra",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 35,
  defence = 30,
  specialAttack = 120,
  specialDefence = 70,
  pokemonMoves = [absorb, acid, acid, megaDrain, gigaDrain, petalBlizzard, petalDance, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, energyBall, infestation, dazzlingGleam, razorLeaf, secretPower, seedBomb, snore, gigaDrain, drainPunch, moonblast]
}

alakazam :: Pokemon
alakazam = Pokemon {
  pokemonIndex = 64,
  pokemonName = "Alakazam",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 50,
  defence = 45,
  specialAttack = 135,
  specialDefence = 95,
  pokemonMoves = [megaDrain, petalBlizzard, petalDance, solarBeam, venoshock, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, roundMove, energyBall, gigaImpact, infestation, dazzlingGleam, razorLeaf, secretPower, seedBomb, snore, gigaDrain, drainPunch, absorb, acid, acid, gigaDrain, moonblast]
}

machop :: Pokemon
machop = Pokemon {
  pokemonIndex = 65,
  pokemonName = "Machop",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 80,
  defence = 50,
  specialAttack = 35,
  specialDefence = 35,
  pokemonMoves = [scratch, absorb, furyCutter, slash, gigaDrain, xScissor, venoshock, hiddenPower, solarBeam, leechLife, brickBreak, sludgeBomb, aerialAce, facade, thief, roundMove, energyBall, falseSwipe, xScissor, psybeam, pursuit, metalClaw, bugBite, crossPoison, fellStinger, bugBite, seedBomb, snore, knockOff, gigaDrain]
}

machoke :: Pokemon
machoke = Pokemon {
  pokemonIndex = 66,
  pokemonName = "Machoke",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 100,
  defence = 70,
  specialAttack = 50,
  specialDefence = 60,
  pokemonMoves = [crossPoison, scratch, absorb, absorb, furyCutter, slash, gigaDrain, xScissor, venoshock, hiddenPower, hyperBeam, solarBeam, leechLife, brickBreak, sludgeBomb, aerialAce, facade, thief, roundMove, energyBall, falseSwipe, gigaImpact, xScissor, psybeam, pursuit, metalClaw, bugBite, crossPoison, fellStinger, bugBite, seedBomb, snore, knockOff, gigaDrain]
}

machamp :: Pokemon
machamp = Pokemon {
  pokemonIndex = 67,
  pokemonName = "Machamp",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 130,
  defence = 80,
  specialAttack = 65,
  specialDefence = 85,
  pokemonMoves = [tackle, confusion, psybeam, signalBeam, leechLife, zenHeadbutt, poisonFang, psychic, venoshock, hiddenPower, solarBeam, leechLife, psychic, sludgeBomb, facade, thief, roundMove, infestation, gigaDrain, signalBeam, bugBite, secretPower, bugBite, signalBeam, zenHeadbutt, snore, gigaDrain]
}

bellsprout :: Pokemon
bellsprout = Pokemon {
  pokemonIndex = 68,
  pokemonName = "Bellsprout",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 75,
  defence = 35,
  specialAttack = 70,
  specialDefence = 30,
  pokemonMoves = [gust, bugBuzz, silverWind, tackle, confusion, psybeam, signalBeam, leechLife, zenHeadbutt, poisonFang, psychic, bugBuzz, venoshock, hiddenPower, hyperBeam, solarBeam, leechLife, psychic, sludgeBomb, aerialAce, facade, thief, roundMove, energyBall, acrobatics, gigaImpact, infestation, uturn, gigaDrain, signalBeam, bugBite, secretPower, bugBite, signalBeam, zenHeadbutt, snore, gigaDrain, airCutter]
}

weepinbell :: Pokemon
weepinbell = Pokemon {
  pokemonIndex = 69,
  pokemonName = "Weepinbell",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 90,
  defence = 50,
  specialAttack = 85,
  specialDefence = 45,
  pokemonMoves = [scratch, astonish, mudSlap, bulldoze, suckerPunch, mudBomb, earthPower, dig, slash, earthquake, hiddenPower, earthquake, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, bulldoze, rockSlide, feintAttack, ancientPower, pursuit, uproar, mudBomb, astonish, headbutt, earthPower, snore]
}

victreebel :: Pokemon
victreebel = Pokemon {
  pokemonIndex = 70,
  pokemonName = "Victreebel",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 105,
  defence = 65,
  specialAttack = 100,
  specialDefence = 70,
  pokemonMoves = [metalClaw, astonish, mudSlap, bulldoze, suckerPunch, mudBomb, earthPower, dig, ironHead, earthquake, hiddenPower, earthquake, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, bulldoze, rockSlide, flashCannon, feintAttack, ancientPower, pursuit, thrash, headbutt]
}

tentacool :: Pokemon
tentacool = Pokemon {
  pokemonIndex = 71,
  pokemonName = "Tentacool",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Water,
  pokemonType2 = Poison,
  attack = 40,
  defence = 35,
  specialAttack = 50,
  specialDefence = 100,
  pokemonMoves = [sandTomb, nightSlash, triAttack, scratch, astonish, mudSlap, bulldoze, suckerPunch, mudBomb, earthPower, dig, slash, earthquake, hiddenPower, hyperBeam, earthquake, sludgeWave, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, feintAttack, ancientPower, pursuit, uproar, mudBomb, astonish, headbutt, earthPower, snore]
}

tentacruel :: Pokemon
tentacruel = Pokemon {
  pokemonIndex = 72,
  pokemonName = "Tentacruel",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Water,
  pokemonType2 = Poison,
  attack = 70,
  defence = 65,
  specialAttack = 80,
  specialDefence = 120,
  pokemonMoves = [sandTomb, nightSlash, triAttack, metalClaw, astonish, mudSlap, bulldoze, suckerPunch, mudBomb, earthPower, dig, ironHead, earthquake, hiddenPower, hyperBeam, earthquake, sludgeWave, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, flashCannon, feintAttack, ancientPower, pursuit, thrash, headbutt]
}

geodude :: Pokemon
geodude = Pokemon {
  pokemonIndex = 73,
  pokemonName = "Geodude",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Rock,
  pokemonType2 = Ground,
  attack = 80,
  defence = 100,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [scratch, bite, fakeOut, furySwipes, feintAttack, payDay, slash, assurance, nightSlash, feint, hiddenPower, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, dreamEater, uturn, darkPulse, lastResort, ironTail, foulPlay, covet, seedBomb, gunkShot, uproar, foulPlay, lastResort, icyWind, hyperVoice, ironTail, snore, knockOff, shockWave, waterPulse]
}

graveler :: Pokemon
graveler = Pokemon {
  pokemonIndex = 74,
  pokemonName = "Graveler",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Rock,
  pokemonType2 = Ground,
  attack = 95,
  defence = 115,
  specialAttack = 45,
  specialDefence = 45,
  pokemonMoves = [scratch, bite, fakeOut, furySwipes, feintAttack, payDay, slash, assurance, nightSlash, feint, darkPulse, hiddenPower, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, dreamEater, uturn, darkPulse, foulPlay, covet]
}

golem :: Pokemon
golem = Pokemon {
  pokemonIndex = 75,
  pokemonName = "Golem",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Rock,
  pokemonType2 = Ground,
  attack = 120,
  defence = 130,
  specialAttack = 55,
  specialDefence = 65,
  pokemonMoves = [swift, playRough, scratch, bite, fakeOut, bite, fakeOut, furySwipes, feintAttack, powerGem, slash, assurance, nightSlash, feint, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, gigaImpact, dreamEater, uturn, darkPulse, lastResort, ironTail, foulPlay, covet, seedBomb, gunkShot, uproar, foulPlay, lastResort, icyWind, hyperVoice, ironTail, snore, knockOff, shockWave, waterPulse, payDay]
}

ponyta :: Pokemon
ponyta = Pokemon {
  pokemonIndex = 76,
  pokemonName = "Ponyta",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 85,
  defence = 55,
  specialAttack = 65,
  specialDefence = 65,
  pokemonMoves = [swift, playRough, scratch, bite, fakeOut, bite, fakeOut, furySwipes, feintAttack, powerGem, slash, assurance, nightSlash, feint, darkPulse, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, gigaImpact, dreamEater, uturn, snarl, darkPulse, foulPlay, covet, payDay]
}

rapidash :: Pokemon
rapidash = Pokemon {
  pokemonIndex = 77,
  pokemonName = "Rapidash",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 100,
  defence = 70,
  specialAttack = 80,
  specialDefence = 80,
  pokemonMoves = [scratch, waterGun, confusion, furySwipes, waterPulse, zenHeadbutt, aquaTail, hydroPump, psyshock, hiddenPower, iceBeam, blizzard, psychic, brickBreak, aerialAce, facade, roundMove, scald, shadowClaw, surf, waterfall, psybeam, futureSight, crossChop, mudBomb, secretPower, synchronoise, clearSmog, signalBeam, icePunch, icyWind, aquaTail, zenHeadbutt, ironTail, snore, focusPunch, waterPulse]
}

slowpoke :: Pokemon
slowpoke = Pokemon {
  pokemonIndex = 78,
  pokemonName = "Slowpoke",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Water,
  pokemonType2 = Psychic,
  attack = 65,
  defence = 65,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [aquaJet, scratch, waterGun, waterGun, confusion, furySwipes, waterPulse, zenHeadbutt, aquaTail, hydroPump, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, psychic, brickBreak, aerialAce, facade, lowSweep, roundMove, focusBlast, scald, shadowClaw, gigaImpact, surf, waterfall, psybeam, futureSight, crossChop, mudBomb, secretPower, synchronoise, clearSmog, signalBeam, icePunch, icyWind, aquaTail, zenHeadbutt, ironTail, snore, focusPunch, waterPulse]
}

slowbro :: Pokemon
slowbro = Pokemon {
  pokemonIndex = 79,
  pokemonName = "Slowbro",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Water,
  pokemonType2 = Psychic,
  attack = 75,
  defence = 110,
  specialAttack = 100,
  specialDefence = 80,
  pokemonMoves = [covet, scratch, furySwipes, karateChop, pursuit, crossChop, assurance, thrash, closeCombat, stompingTantrum, outrage, hiddenPower, smackDown, thunderbolt, thunder, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, overheat, focusBlast, acrobatics, payback, bulldoze, rockSlide, poisonJab, uturn, revenge, smellingSalts, closeCombat, focusPunch, nightSlash, powerTrip, covet, dualChop, seedBomb, gunkShot, uproar, thunderPunch, firePunch, icePunch, ironTail, snore, focusPunch, outrage]
}

magnemite :: Pokemon
magnemite = Pokemon {
  pokemonIndex = 80,
  pokemonName = "Magnemite",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 25,
  pokemonType1 = Electric,
  pokemonType2 = Steel,
  attack = 35,
  defence = 70,
  specialAttack = 95,
  specialDefence = 55,
  pokemonMoves = [rage, scratch, furySwipes, karateChop, pursuit, crossChop, assurance, thrash, closeCombat, stompingTantrum, outrage, hiddenPower, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, overheat, focusBlast, acrobatics, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, uturn, revenge, smellingSalts, closeCombat, focusPunch, nightSlash, powerTrip, covet, dualChop, seedBomb, gunkShot, uproar, thunderPunch, firePunch, icePunch, ironTail, snore, focusPunch, outrage, covet]
}

magneton :: Pokemon
magneton = Pokemon {
  pokemonIndex = 81,
  pokemonName = "Magneton",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Electric,
  pokemonType2 = Steel,
  attack = 60,
  defence = 95,
  specialAttack = 120,
  specialDefence = 70,
  pokemonMoves = [bite, ember, flameWheel, fireFang, takeDown, flameBurst, retaliate, flamethrower, crunch, heatWave, outrage, flareBlitz, hiddenPower, flamethrower, fireBlast, aerialAce, facade, flameCharge, thief, roundMove, overheat, wildCharge, snarl, bodySlam, crunch, thrash, fireSpin, heatWave, doubleEdge, flareBlitz, covet, ironTail, doubleKick, closeCombat, burnUp, covet, ironTail, snore, heatWave, outrage]
}

farfetch :: Pokemon
farfetch = Pokemon {
  pokemonIndex = 82,
  pokemonName = "Farfetch",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 52,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 90,
  defence = 55,
  specialAttack = 58,
  specialDefence = 62,
  pokemonMoves = [thunderFang, bite, fireFang, extremeSpeed, hiddenPower, hyperBeam, solarBeam, flamethrower, fireBlast, aerialAce, facade, flameCharge, thief, roundMove, overheat, gigaImpact, bulldoze, wildCharge, snarl, bodySlam, crunch, thrash, fireSpin, heatWave, doubleEdge, flareBlitz, covet, ironTail, doubleKick, closeCombat, burnUp, covet, ironHead, dragonPulse, ironTail, snore, heatWave, outrage, ember, flameWheel, takeDown, flameBurst, retaliate, flamethrower, crunch, heatWave, outrage, flareBlitz]
}

doduo :: Pokemon
doduo = Pokemon {
  pokemonIndex = 83,
  pokemonName = "Doduo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 85,
  defence = 45,
  specialAttack = 35,
  specialDefence = 35,
  pokemonMoves = [waterGun, bubble, doubleSlap, bodySlam, bubbleBeam, mudShot, wakeUpSlap, hydroPump, mudBomb, hiddenPower, iceBeam, blizzard, psychic, facade, thief, roundMove, scald, surf, waterfall, bubbleBeam, iceBall, mudShot, waterPulse, icyWind, snore, waterPulse]
}

dodrio :: Pokemon
dodrio = Pokemon {
  pokemonIndex = 84,
  pokemonName = "Dodrio",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 110,
  defence = 70,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [waterGun, waterGun, bubble, doubleSlap, bodySlam, bubbleBeam, mudShot, wakeUpSlap, hydroPump, mudBomb, hiddenPower, iceBeam, blizzard, earthquake, psychic, brickBreak, facade, thief, roundMove, scald, bulldoze, surf, waterfall, bubbleBeam, iceBall, mudShot, waterPulse, icePunch, icyWind, snore, focusPunch, waterPulse]
}

seel :: Pokemon
seel = Pokemon {
  pokemonIndex = 85,
  pokemonName = "Seel",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 45,
  defence = 55,
  specialAttack = 45,
  specialDefence = 70,
  pokemonMoves = [submission, circleThrow, bubbleBeam, doubleSlap, dynamicPunch, circleThrow, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, scald, payback, gigaImpact, bulldoze, rockSlide, poisonJab, surf, waterfall, bubbleBeam, iceBall, mudShot, waterPulse, icePunch, icyWind, snore, focusPunch, waterPulse, waterGun, waterGun, bubble, bodySlam, mudShot, wakeUpSlap, hydroPump, mudBomb]
}

dewgong :: Pokemon
dewgong = Pokemon {
  pokemonIndex = 86,
  pokemonName = "Dewgong",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Water,
  pokemonType2 = Ice,
  attack = 70,
  defence = 80,
  specialAttack = 70,
  specialDefence = 95,
  pokemonMoves = [psyshock, hiddenPower, psychic, shadowBall, facade, thief, roundMove, energyBall, chargeBeam, dreamEater, dazzlingGleam, knockOff, firePunch, thunderPunch, icePunch, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, ironTail, snore, knockOff, drainPunch, focusPunch, shockWave]
}

grimer :: Pokemon
grimer = Pokemon {
  pokemonIndex = 87,
  pokemonName = "Grimer",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 80,
  defence = 50,
  specialAttack = 40,
  specialDefence = 50,
  pokemonMoves = [confusion, confusion, psybeam, psychoCut, psychic, futureSight, psyshock, hiddenPower, psychic, shadowBall, facade, thief, roundMove, energyBall, chargeBeam, dreamEater, dazzlingGleam, knockOff, firePunch, thunderPunch, icePunch, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, ironTail, snore, knockOff, drainPunch, focusPunch, shockWave]
}

muk :: Pokemon
muk = Pokemon {
  pokemonIndex = 88,
  pokemonName = "Muk",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 105,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 105,
  defence = 75,
  specialAttack = 65,
  specialDefence = 100,
  pokemonMoves = [confusion, confusion, psybeam, psychoCut, psychic, futureSight, psyshock, hiddenPower, hyperBeam, psychic, shadowBall, facade, thief, roundMove, focusBlast, energyBall, chargeBeam, gigaImpact, dreamEater, dazzlingGleam, knockOff, firePunch, thunderPunch, icePunch, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, ironTail, snore, knockOff, drainPunch, focusPunch, shockWave]
}

shellder :: Pokemon
shellder = Pokemon {
  pokemonIndex = 89,
  pokemonName = "Shellder",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 65,
  defence = 100,
  specialAttack = 45,
  specialDefence = 25,
  pokemonMoves = [confusion, confusion, psybeam, psychoCut, psychic, futureSight, psyshock, hiddenPower, hyperBeam, psychic, shadowBall, facade, thief, roundMove, focusBlast, energyBall, chargeBeam, gigaImpact, dreamEater, dazzlingGleam, knockOff, firePunch, thunderPunch, icePunch, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, ironTail, snore, knockOff, drainPunch, focusPunch, shockWave]
}

cloyster :: Pokemon
cloyster = Pokemon {
  pokemonIndex = 90,
  pokemonName = "Cloyster",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Water,
  pokemonType2 = Ice,
  attack = 95,
  defence = 180,
  specialAttack = 85,
  specialDefence = 45,
  pokemonMoves = [karateChop, lowSweep, revenge, knockOff, vitalThrow, wakeUpSlap, dualChop, submission, crossChop, dynamicPunch, hiddenPower, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, payback, bulldoze, rockSlide, poisonJab, rollingKick, smellingSalts, closeCombat, firePunch, thunderPunch, icePunch, bulletPunch, knockOff, dualChop, thunderPunch, firePunch, icePunch, superpower, snore, knockOff, focusPunch]
}

gastly :: Pokemon
gastly = Pokemon {
  pokemonIndex = 91,
  pokemonName = "Gastly",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Ghost,
  pokemonType2 = Poison,
  attack = 35,
  defence = 30,
  specialAttack = 100,
  specialDefence = 35,
  pokemonMoves = [karateChop, karateChop, lowSweep, revenge, knockOff, vitalThrow, wakeUpSlap, dualChop, submission, crossChop, dynamicPunch, hiddenPower, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, payback, bulldoze, rockSlide, poisonJab, rollingKick, smellingSalts, closeCombat, firePunch, thunderPunch, icePunch, bulletPunch, knockOff, dualChop, thunderPunch, firePunch, icePunch, superpower, snore, knockOff, focusPunch]
}

haunter :: Pokemon
haunter = Pokemon {
  pokemonIndex = 92,
  pokemonName = "Haunter",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Ghost,
  pokemonType2 = Poison,
  attack = 50,
  defence = 45,
  specialAttack = 115,
  specialDefence = 55,
  pokemonMoves = [strength, karateChop, karateChop, lowSweep, revenge, knockOff, vitalThrow, wakeUpSlap, dualChop, submission, crossChop, dynamicPunch, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, rollingKick, smellingSalts, closeCombat, firePunch, thunderPunch, icePunch, bulletPunch, knockOff, dualChop, thunderPunch, firePunch, icePunch, superpower, snore, knockOff, focusPunch]
}

gengar :: Pokemon
gengar = Pokemon {
  pokemonIndex = 93,
  pokemonName = "Gengar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Ghost,
  pokemonType2 = Poison,
  attack = 65,
  defence = 60,
  specialAttack = 130,
  specialDefence = 75,
  pokemonMoves = [vineWhip, wrap, acid, knockOff, razorLeaf, poisonJab, slam, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, thief, roundMove, energyBall, infestation, poisonJab, leechLife, magicalLeaf, weatherBall, bulletSeed, gigaDrain, clearSmog, powerWhip, acidSpray, belch, seedBomb, bind, snore, knockOff, gigaDrain]
}

onix :: Pokemon
onix = Pokemon {
  pokemonIndex = 94,
  pokemonName = "Onix",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Rock,
  pokemonType2 = Ground,
  attack = 45,
  defence = 160,
  specialAttack = 30,
  specialDefence = 45,
  pokemonMoves = [vineWhip, wrap, wrap, acid, knockOff, razorLeaf, poisonJab, slam, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, thief, roundMove, energyBall, infestation, poisonJab, leechLife, magicalLeaf, weatherBall, bulletSeed, gigaDrain, clearSmog, powerWhip, acidSpray, belch, seedBomb, bind, snore, knockOff, gigaDrain]
}

drowzee :: Pokemon
drowzee = Pokemon {
  pokemonIndex = 95,
  pokemonName = "Drowzee",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 48,
  defence = 45,
  specialAttack = 43,
  specialDefence = 90,
  pokemonMoves = [leafTornado, vineWhip, razorLeaf, leafStorm, leafBlade, venoshock, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, thief, roundMove, energyBall, gigaImpact, infestation, poisonJab, leechLife, magicalLeaf, weatherBall, bulletSeed, gigaDrain, clearSmog, powerWhip, acidSpray, belch, seedBomb, bind, snore, knockOff, gigaDrain, wrap, wrap, acid, knockOff, poisonJab, slam]
}

hypno :: Pokemon
hypno = Pokemon {
  pokemonIndex = 96,
  pokemonName = "Hypno",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 73,
  defence = 70,
  specialAttack = 73,
  specialDefence = 115,
  pokemonMoves = [poisonSting, constrict, acid, waterPulse, wrap, acidSpray, bubbleBeam, poisonJab, brine, hex, sludgeWave, hydroPump, venoshock, hiddenPower, iceBeam, blizzard, sludgeWave, sludgeBomb, facade, thief, roundMove, scald, payback, infestation, poisonJab, surf, waterfall, dazzlingGleam, auroraBeam, rapidSpin, knockOff, muddyWater, bubble, icyWind, bind, snore, knockOff, gigaDrain, waterPulse]
}

krabby :: Pokemon
krabby = Pokemon {
  pokemonIndex = 97,
  pokemonName = "Krabby",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 105,
  defence = 90,
  specialAttack = 25,
  specialDefence = 25,
  pokemonMoves = [poisonSting, constrict, acid, constrict, acid, waterPulse, wrap, acidSpray, bubbleBeam, poisonJab, brine, hex, sludgeWave, hydroPump, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, sludgeWave, sludgeBomb, facade, thief, roundMove, scald, payback, gigaImpact, infestation, poisonJab, surf, waterfall, dazzlingGleam, auroraBeam, rapidSpin, knockOff, muddyWater, bubble, icyWind, bind, snore, knockOff, gigaDrain, waterPulse]
}

kingler :: Pokemon
kingler = Pokemon {
  pokemonIndex = 98,
  pokemonName = "Kingler",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 130,
  defence = 115,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [tackle, rollout, rockThrow, smackDown, bulldoze, selfDestruct, rockBlast, earthquake, explosion, doubleEdge, stoneEdge, hiddenPower, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, explosion, stoneEdge, bulldoze, rockSlide, megaPunch, hammerArm, focusPunch, rockClimb, thunderPunch, firePunch, earthPower, superpower, snore, focusPunch]
}

voltorb :: Pokemon
voltorb = Pokemon {
  pokemonIndex = 99,
  pokemonName = "Voltorb",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 30,
  defence = 50,
  specialAttack = 55,
  specialDefence = 55,
  pokemonMoves = [tackle, rollout, spark, rockThrow, smackDown, thunderPunch, selfDestruct, rockBlast, discharge, explosion, doubleEdge, stoneEdge, hiddenPower, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, chargeBeam, brutalSwing, explosion, stoneEdge, voltSwitch, bulldoze, rockSlide, rockClimb]
}

electrode :: Pokemon
electrode = Pokemon {
  pokemonIndex = 100,
  pokemonName = "Electrode",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 50,
  defence = 70,
  specialAttack = 80,
  specialDefence = 80,
  pokemonMoves = [tackle, rollout, rockThrow, smackDown, bulldoze, selfDestruct, rockBlast, earthquake, explosion, doubleEdge, stoneEdge, hiddenPower, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, explosion, stoneEdge, bulldoze, rockSlide, megaPunch, hammerArm, focusPunch, rockClimb, thunderPunch, firePunch, earthPower, superpower, snore, focusPunch]
}

exeggcute :: Pokemon
exeggcute = Pokemon {
  pokemonIndex = 101,
  pokemonName = "Exeggcute",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Grass,
  pokemonType2 = Psychic,
  attack = 40,
  defence = 80,
  specialAttack = 60,
  specialDefence = 45,
  pokemonMoves = [tackle, rollout, spark, rockThrow, smackDown, thunderPunch, selfDestruct, rockBlast, discharge, explosion, doubleEdge, stoneEdge, hiddenPower, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, chargeBeam, brutalSwing, explosion, stoneEdge, voltSwitch, bulldoze, rockSlide, rockClimb]
}

exeggutor :: Pokemon
exeggutor = Pokemon {
  pokemonIndex = 102,
  pokemonName = "Exeggutor",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Grass,
  pokemonType2 = Psychic,
  attack = 95,
  defence = 85,
  specialAttack = 125,
  specialDefence = 75,
  pokemonMoves = [tackle, steamroller, rockThrow, smackDown, bulldoze, selfDestruct, rockBlast, earthquake, explosion, doubleEdge, stoneEdge, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, focusBlast, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, megaPunch, hammerArm, focusPunch, rockClimb, ironHead, thunderPunch, firePunch, earthPower, superpower, snore, focusPunch, rollout]
}

cubone :: Pokemon
cubone = Pokemon {
  pokemonIndex = 103,
  pokemonName = "Cubone",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 50,
  defence = 95,
  specialAttack = 40,
  specialDefence = 50,
  pokemonMoves = [tackle, steamroller, spark, rockThrow, smackDown, thunderPunch, selfDestruct, rockBlast, discharge, explosion, doubleEdge, stoneEdge, hiddenPower, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, echoedVoice, focusBlast, chargeBeam, brutalSwing, explosion, gigaImpact, stoneEdge, voltSwitch, bulldoze, rockSlide, wildCharge, rockClimb, rollout]
}

marowak :: Pokemon
marowak = Pokemon {
  pokemonIndex = 104,
  pokemonName = "Marowak",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 80,
  defence = 110,
  specialAttack = 50,
  specialDefence = 80,
  pokemonMoves = [tackle, ember, flameWheel, stomp, flameCharge, fireSpin, takeDown, inferno, fireBlast, bounce, flareBlitz, hiddenPower, solarBeam, flamethrower, fireBlast, facade, flameCharge, roundMove, echoedVoice, overheat, wildCharge, flameWheel, thrash, doubleKick, doubleEdge, bounce, ironTail, snore, heatWave]
}

hitmonlee :: Pokemon
hitmonlee = Pokemon {
  pokemonIndex = 105,
  pokemonName = "Hitmonlee",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 120,
  defence = 53,
  specialAttack = 35,
  specialDefence = 110,
  pokemonMoves = [furyAttack, poisonJab, megahorn, quickAttack, ember, ember, flameWheel, stomp, flameCharge, fireSpin, takeDown, inferno, fireBlast, bounce, flareBlitz, hiddenPower, hyperBeam, solarBeam, flamethrower, fireBlast, facade, flameCharge, roundMove, echoedVoice, overheat, smartStrike, gigaImpact, poisonJab, wildCharge, flameWheel, thrash, doubleKick, doubleEdge, drillRun, bounce, ironTail, snore, heatWave, tackle]
}

hitmonchan :: Pokemon
hitmonchan = Pokemon {
  pokemonIndex = 106,
  pokemonName = "Hitmonchan",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 105,
  defence = 79,
  specialAttack = 35,
  specialDefence = 110,
  pokemonMoves = [tackle, waterGun, confusion, headbutt, waterPulse, zenHeadbutt, psychic, psyshock, hiddenPower, iceBeam, blizzard, earthquake, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, scald, bulldoze, dreamEater, surf, futureSight, stomp, snore, zenHeadbutt, belch, signalBeam, icyWind, aquaTail, zenHeadbutt, ironTail, snore, waterPulse]
}

lickitung :: Pokemon
lickitung = Pokemon {
  pokemonIndex = 107,
  pokemonName = "Lickitung",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 55,
  defence = 75,
  specialAttack = 60,
  specialDefence = 75,
  pokemonMoves = [tackle, waterGun, confusion, headbutt, waterPulse, zenHeadbutt, psychic, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, aerialAce, facade, roundMove, echoedVoice, focusBlast, scald, gigaImpact, bulldoze, dreamEater, surf, futureSight, stomp, snore, zenHeadbutt, belch, signalBeam, icePunch, foulPlay, icyWind, aquaTail, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, waterPulse]
}

koffing :: Pokemon
koffing = Pokemon {
  pokemonIndex = 108,
  pokemonName = "Koffing",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 65,
  defence = 95,
  specialAttack = 60,
  specialDefence = 45,
  pokemonMoves = [tackle, waterGun, confusion, headbutt, waterPulse, zenHeadbutt, psychic, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, aerialAce, facade, roundMove, echoedVoice, focusBlast, scald, gigaImpact, bulldoze, dreamEater, surf, futureSight, stomp, snore, zenHeadbutt, belch, signalBeam, icePunch, foulPlay, icyWind, aquaTail, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, waterPulse]
}

weezing :: Pokemon
weezing = Pokemon {
  pokemonIndex = 109,
  pokemonName = "Weezing",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 90,
  defence = 120,
  specialAttack = 85,
  specialDefence = 70,
  pokemonMoves = [tackle, thunderShock, magnetBomb, spark, mirrorShot, flashCannon, discharge, zapCannon, hiddenPower, thunderbolt, thunder, facade, roundMove, chargeBeam, explosion, voltSwitch, flashCannon, wildCharge, signalBeam, electroweb, snore, shockWave]
}

rhyhorn :: Pokemon
rhyhorn = Pokemon {
  pokemonIndex = 110,
  pokemonName = "Rhyhorn",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Ground,
  pokemonType2 = Rock,
  attack = 85,
  defence = 95,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [triAttack, zapCannon, tackle, thunderShock, magnetBomb, thunderShock, magnetBomb, spark, mirrorShot, flashCannon, discharge, zapCannon, hiddenPower, hyperBeam, thunderbolt, thunder, facade, roundMove, chargeBeam, explosion, gigaImpact, voltSwitch, flashCannon, wildCharge, signalBeam, electroweb, snore, shockWave]
}

rhydon :: Pokemon
rhydon = Pokemon {
  pokemonIndex = 111,
  pokemonName = "Rhydon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 105,
  pokemonType1 = Ground,
  pokemonType2 = Rock,
  attack = 130,
  defence = 120,
  specialAttack = 45,
  specialDefence = 45,
  pokemonMoves = [braveBird, poisonJab, peck, furyCutter, furyAttack, aerialAce, knockOff, slash, airCutter, nightSlash, acrobatics, feint, falseSwipe, airSlash, braveBird, hiddenPower, aerialAce, facade, thief, roundMove, steelWing, falseSwipe, brutalSwing, acrobatics, fly, poisonJab, uturn, steelWing, gust, quickAttack, covet, mudSlap, nightSlash, leafBlade, revenge, covet, uproar, lastResort, ironTail, snore, knockOff, heatWave, skyAttack, airCutter]
}

chansey :: Pokemon
chansey = Pokemon {
  pokemonIndex = 112,
  pokemonName = "Chansey",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 250,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 5,
  defence = 5,
  specialAttack = 35,
  specialDefence = 105,
  pokemonMoves = [peck, quickAttack, rage, furyAttack, pursuit, pluck, doubleHit, uproar, jumpKick, drillPeck, thrash, hiddenPower, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, fly, quickAttack, feintAttack, braveBird, assurance, uproar, snore, knockOff, airCutter]
}

tangela :: Pokemon
tangela = Pokemon {
  pokemonIndex = 113,
  pokemonName = "Tangela",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 55,
  defence = 115,
  specialAttack = 100,
  specialDefence = 40,
  pokemonMoves = [triAttack, peck, quickAttack, rage, quickAttack, rage, furyAttack, pursuit, pluck, doubleHit, uproar, jumpKick, drillPeck, thrash, hiddenPower, hyperBeam, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, payback, gigaImpact, fly, quickAttack, feintAttack, braveBird, assurance, uproar, snore, knockOff, skyAttack, airCutter]
}

kangaskhan :: Pokemon
kangaskhan = Pokemon {
  pokemonIndex = 114,
  pokemonName = "Kangaskhan",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 105,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 95,
  defence = 80,
  specialAttack = 40,
  specialDefence = 80,
  pokemonMoves = [headbutt, icyWind, iceShard, auroraBeam, aquaJet, brine, takeDown, dive, aquaTail, iceBeam, hiddenPower, iceBeam, blizzard, facade, thief, roundMove, echoedVoice, smartStrike, surf, waterfall, lick, slam, fakeOut, icicleSpear, signalBeam, waterPulse, ironTail, belch, signalBeam, drillRun, icyWind, aquaTail, ironTail, snore, waterPulse]
}

horsea :: Pokemon
horsea = Pokemon {
  pokemonIndex = 115,
  pokemonName = "Horsea",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 40,
  defence = 70,
  specialAttack = 70,
  specialDefence = 25,
  pokemonMoves = [headbutt, signalBeam, icyWind, signalBeam, icyWind, iceShard, auroraBeam, aquaJet, brine, takeDown, dive, aquaTail, iceBeam, hiddenPower, iceBeam, blizzard, hyperBeam, facade, thief, roundMove, echoedVoice, smartStrike, gigaImpact, frostBreath, surf, waterfall, lick, slam, fakeOut, icicleSpear, signalBeam, waterPulse, ironTail, belch, signalBeam, drillRun, icyWind, aquaTail, ironTail, snore, waterPulse]
}

seadra :: Pokemon
seadra = Pokemon {
  pokemonIndex = 116,
  pokemonName = "Seadra",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 65,
  defence = 95,
  specialAttack = 95,
  specialDefence = 45,
  pokemonMoves = [pound, mudSlap, sludge, mudBomb, sludgeBomb, sludgeWave, gunkShot, belch, venoshock, hiddenPower, thunderbolt, thunder, shadowBall, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, thief, roundMove, explosion, payback, rockSlide, infestation, poisonJab, lick, shadowPunch, shadowSneak, acidSpray, gunkShot, thunderPunch, firePunch, icePunch, snore, gigaDrain, shockWave]
}

goldeen :: Pokemon
goldeen = Pokemon {
  pokemonIndex = 117,
  pokemonName = "Goldeen",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 67,
  defence = 60,
  specialAttack = 35,
  specialDefence = 50,
  pokemonMoves = [pound, bite, acidSpray, poisonFang, knockOff, crunch, gunkShot, belch, venoshock, hiddenPower, shadowBall, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, thief, roundMove, brutalSwing, explosion, payback, stoneEdge, rockSlide, infestation, poisonJab, snarl, clearSmog, pursuit, assurance, shadowSneak]
}

seaking :: Pokemon
seaking = Pokemon {
  pokemonIndex = 118,
  pokemonName = "Seaking",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 92,
  defence = 65,
  specialAttack = 65,
  specialDefence = 80,
  pokemonMoves = [pound, mudSlap, mudSlap, sludge, mudBomb, sludgeBomb, sludgeWave, gunkShot, belch, venoshock, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, brickBreak, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, explosion, payback, gigaImpact, rockSlide, infestation, poisonJab, darkPulse, lick, shadowPunch, shadowSneak, acidSpray, gunkShot, thunderPunch, firePunch, icePunch, snore, gigaDrain, focusPunch, shockWave]
}

staryu :: Pokemon
staryu = Pokemon {
  pokemonIndex = 119,
  pokemonName = "Staryu",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 45,
  defence = 55,
  specialAttack = 70,
  specialDefence = 55,
  pokemonMoves = [pound, bite, bite, acidSpray, poisonFang, knockOff, crunch, gunkShot, belch, venoshock, hiddenPower, hyperBeam, shadowBall, brickBreak, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, brutalSwing, explosion, payback, gigaImpact, stoneEdge, rockSlide, infestation, poisonJab, snarl, darkPulse, clearSmog, pursuit, assurance, shadowSneak, mudSlap, sludge, mudBomb, sludgeBomb, sludgeWave]
}

starmie :: Pokemon
starmie = Pokemon {
  pokemonIndex = 120,
  pokemonName = "Starmie",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Water,
  pokemonType2 = Psychic,
  attack = 75,
  defence = 85,
  specialAttack = 100,
  specialDefence = 85,
  pokemonMoves = [tackle, waterGun, icicleSpear, clamp, iceShard, razorShell, auroraBeam, whirlpool, brine, iceBeam, hydroPump, hiddenPower, iceBeam, blizzard, facade, roundMove, explosion, payback, surf, bubbleBeam, takeDown, rapidSpin, icicleSpear, mudShot, rockBlast, waterPulse, avalanche, twineedle, icyWind, snore, waterPulse]
}

mr :: Pokemon
mr = Pokemon {
  pokemonIndex = 121,
  pokemonName = "Mr",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Psychic,
  pokemonType2 = Fairy,
  attack = 45,
  defence = 65,
  specialAttack = 100,
  specialDefence = 120,
  pokemonMoves = [hydroPump, auroraBeam, spikeCannon, icicleCrash, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, explosion, payback, smartStrike, gigaImpact, frostBreath, poisonJab, surf, bubbleBeam, takeDown, rapidSpin, icicleSpear, mudShot, rockBlast, waterPulse, avalanche, twineedle, signalBeam, icyWind, snore, waterPulse, tackle, waterGun, icicleSpear, clamp, iceShard, razorShell, whirlpool, brine, iceBeam]
}

scyther :: Pokemon
scyther = Pokemon {
  pokemonIndex = 122,
  pokemonName = "Scyther",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 110,
  defence = 80,
  specialAttack = 55,
  specialDefence = 80,
  pokemonMoves = [lick, suckerPunch, payback, shadowBall, dreamEater, darkPulse, hex, venoshock, hiddenPower, thunderbolt, psychic, shadowBall, sludgeBomb, facade, thief, roundMove, energyBall, explosion, payback, infestation, dreamEater, darkPulse, dazzlingGleam, astonish, firePunch, icePunch, thunderPunch, clearSmog, smog, uproar, thunderPunch, firePunch, icePunch, foulPlay, icyWind, snore, knockOff, gigaDrain]
}

jynx :: Pokemon
jynx = Pokemon {
  pokemonIndex = 123,
  pokemonName = "Jynx",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Ice,
  pokemonType2 = Psychic,
  attack = 50,
  defence = 35,
  specialAttack = 115,
  specialDefence = 95,
  pokemonMoves = [shadowPunch, lick, suckerPunch, payback, shadowBall, dreamEater, darkPulse, hex, venoshock, hiddenPower, thunderbolt, psychic, shadowBall, sludgeBomb, facade, thief, roundMove, energyBall, explosion, shadowClaw, payback, infestation, poisonJab, dreamEater, darkPulse, dazzlingGleam, astonish, firePunch, icePunch, thunderPunch, clearSmog, smog, uproar, thunderPunch, firePunch, icePunch, foulPlay, icyWind, snore, knockOff, gigaDrain]
}

electabuzz :: Pokemon
electabuzz = Pokemon {
  pokemonIndex = 124,
  pokemonName = "Electabuzz",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 83,
  defence = 57,
  specialAttack = 95,
  specialDefence = 85,
  pokemonMoves = [shadowPunch, lick, suckerPunch, payback, shadowBall, dreamEater, darkPulse, hex, venoshock, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, sludgeBomb, facade, thief, roundMove, focusBlast, energyBall, explosion, shadowClaw, payback, gigaImpact, infestation, poisonJab, dreamEater, darkPulse, dazzlingGleam, astonish, firePunch, icePunch, thunderPunch, clearSmog, smog, uproar, thunderPunch, firePunch, icePunch, foulPlay, icyWind, snore, knockOff, gigaDrain, drainPunch, focusPunch]
}

magmar :: Pokemon
magmar = Pokemon {
  pokemonIndex = 125,
  pokemonName = "Magmar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 95,
  defence = 57,
  specialAttack = 100,
  specialDefence = 85,
  pokemonMoves = [shadowPunch, lick, suckerPunch, payback, shadowBall, dreamEater, darkPulse, hex, venoshock, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, sludgeBomb, facade, thief, roundMove, focusBlast, energyBall, explosion, shadowClaw, payback, gigaImpact, infestation, poisonJab, dreamEater, darkPulse, dazzlingGleam, astonish, firePunch, icePunch, thunderPunch, clearSmog, smog, uproar, thunderPunch, firePunch, icePunch, foulPlay, icyWind, snore, knockOff, gigaDrain, drainPunch, focusPunch]
}

pinsir :: Pokemon
pinsir = Pokemon {
  pokemonIndex = 126,
  pokemonName = "Pinsir",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 125,
  defence = 100,
  specialAttack = 55,
  specialDefence = 70,
  pokemonMoves = [tackle, bind, rockThrow, rockTomb, rage, smackDown, dragonBreath, slam, rockSlide, sandTomb, ironTail, dig, stoneEdge, doubleEdge, hiddenPower, smackDown, earthquake, rockTomb, facade, roundMove, brutalSwing, explosion, payback, stoneEdge, bulldoze, rockSlide, dragonTail, flashCannon, rollout, rockBlast, rockClimb, ironHead, earthPower, dragonPulse, ironTail, bind, snore]
}

tauros :: Pokemon
tauros = Pokemon {
  pokemonIndex = 127,
  pokemonName = "Tauros",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 100,
  defence = 95,
  specialAttack = 40,
  specialDefence = 70,
  pokemonMoves = [pound, confusion, headbutt, psybeam, headbutt, synchronoise, zenHeadbutt, psychic, psyshock, futureSight, psyshock, hiddenPower, psychic, shadowBall, brickBreak, facade, thief, lowSweep, roundMove, dreamEater, dazzlingGleam, firePunch, thunderPunch, icePunch, psychoCut, secretPower, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, snore, drainPunch, focusPunch]
}

magikarp :: Pokemon
magikarp = Pokemon {
  pokemonIndex = 128,
  pokemonName = "Magikarp",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 20,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 10,
  defence = 55,
  specialAttack = 15,
  specialDefence = 20,
  pokemonMoves = [futureSight, pound, confusion, confusion, headbutt, psybeam, headbutt, synchronoise, zenHeadbutt, psychic, psyshock, futureSight, psyshock, hiddenPower, hyperBeam, psychic, shadowBall, brickBreak, facade, thief, lowSweep, roundMove, focusBlast, gigaImpact, dreamEater, dazzlingGleam, firePunch, thunderPunch, icePunch, psychoCut, secretPower, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, snore, drainPunch, focusPunch]
}

gyarados :: Pokemon
gyarados = Pokemon {
  pokemonIndex = 129,
  pokemonName = "Gyarados",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Water,
  pokemonType2 = Flying,
  attack = 125,
  defence = 79,
  specialAttack = 60,
  specialDefence = 100,
  pokemonMoves = [bubble, viceGrip, bubbleBeam, mudShot, metalClaw, stomp, slam, brine, crabhammer, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, facade, thief, roundMove, falseSwipe, scald, rockSlide, xScissor, surf, slam, knockOff, ancientPower, chipAway, superpower, icyWind, snore, knockOff, waterPulse]
}

lapras :: Pokemon
lapras = Pokemon {
  pokemonIndex = 130,
  pokemonName = "Lapras",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 130,
  pokemonType1 = Water,
  pokemonType2 = Ice,
  attack = 85,
  defence = 80,
  specialAttack = 85,
  specialDefence = 95,
  pokemonMoves = [bubble, viceGrip, viceGrip, bubbleBeam, mudShot, metalClaw, stomp, slam, brine, crabhammer, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, rockTomb, facade, thief, roundMove, falseSwipe, scald, gigaImpact, rockSlide, xScissor, surf, slam, knockOff, ancientPower, chipAway, superpower, icyWind, snore, knockOff, waterPulse]
}

ditto :: Pokemon
ditto = Pokemon {
  pokemonIndex = 131,
  pokemonName = "Ditto",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 48,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 48,
  defence = 48,
  specialAttack = 48,
  specialDefence = 48,
  pokemonMoves = [tackle, spark, rollout, chargeBeam, swift, selfDestruct, discharge, explosion, hiddenPower, thunderbolt, thunder, facade, thief, roundMove, chargeBeam, explosion, voltSwitch, wildCharge, signalBeam, foulPlay, snore, shockWave]
}

eevee :: Pokemon
eevee = Pokemon {
  pokemonIndex = 132,
  pokemonName = "Eevee",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 55,
  defence = 50,
  specialAttack = 45,
  specialDefence = 65,
  pokemonMoves = [tackle, spark, rollout, chargeBeam, swift, selfDestruct, discharge, explosion, hiddenPower, hyperBeam, thunderbolt, thunder, facade, thief, roundMove, chargeBeam, explosion, gigaImpact, voltSwitch, wildCharge, signalBeam, foulPlay, snore, shockWave]
}

vaporeon :: Pokemon
vaporeon = Pokemon {
  pokemonIndex = 133,
  pokemonName = "Vaporeon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 130,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 65,
  defence = 60,
  specialAttack = 110,
  specialDefence = 95,
  pokemonMoves = [barrage, uproar, bulletSeed, confusion, solarBeam, extrasensory, hiddenPower, solarBeam, psychic, sludgeBomb, facade, thief, roundMove, energyBall, explosion, infestation, dreamEater, ancientPower, leafStorm, gigaDrain, seedBomb, uproar, snore, gigaDrain]
}

jolteon :: Pokemon
jolteon = Pokemon {
  pokemonIndex = 134,
  pokemonName = "Jolteon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 65,
  defence = 60,
  specialAttack = 110,
  specialDefence = 95,
  pokemonMoves = [stomp, seedBomb, barrage, confusion, psyshock, eggBomb, woodHammer, leafStorm, psyshock, hiddenPower, hyperBeam, solarBeam, psychic, sludgeBomb, facade, thief, roundMove, energyBall, explosion, gigaImpact, infestation, dreamEater, ancientPower, leafStorm, gigaDrain, seedBomb, zenHeadbutt, snore, gigaDrain, uproar, bulletSeed, solarBeam, extrasensory]
}

flareon :: Pokemon
flareon = Pokemon {
  pokemonIndex = 135,
  pokemonName = "Flareon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 130,
  defence = 60,
  specialAttack = 95,
  specialDefence = 110,
  pokemonMoves = [dragonHammer, seedBomb, barrage, confusion, psyshock, eggBomb, woodHammer, leafStorm, psyshock, hiddenPower, hyperBeam, solarBeam, earthquake, psychic, brickBreak, flamethrower, sludgeBomb, facade, thief, roundMove, energyBall, brutalSwing, explosion, gigaImpact, bulldoze, dragonTail, infestation, dreamEater, dracoMeteor, ancientPower, leafStorm, gigaDrain, uproar, bulletSeed, solarBeam, extrasensory]
}

porygon :: Pokemon
porygon = Pokemon {
  pokemonIndex = 473,
  pokemonName = "Porygon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 80,
  defence = 70,
  specialAttack = 135,
  specialDefence = 75,
  pokemonMoves = [waterGun, aquaJet, tackle, rollout, headbutt, hyperFang, crunch, takeDown, superpower, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, shadowBall, facade, thief, roundMove, echoedVoice, scald, chargeBeam, gigaImpact, bulldoze, surf, waterfall, quickAttack, doubleEdge, furySwipes, rollout, aquaTail, rockClimb, skullBash, covet, lastResort, superpower, icyWind, aquaTail, ironTail, snore, focusPunch, shockWave, waterPulse]
}

omanyte :: Pokemon
omanyte = Pokemon {
  pokemonIndex = 137,
  pokemonName = "Omanyte",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Rock,
  pokemonType2 = Water,
  attack = 40,
  defence = 100,
  specialAttack = 90,
  specialDefence = 55,
  pokemonMoves = [boneClub, headbutt, boneClub, headbutt, bonemerang, rage, falseSwipe, thrash, stompingTantrum, doubleEdge, retaliate, boneRush, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, focusBlast, falseSwipe, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, ancientPower, skullBash, doubleKick, ironHead, chipAway, ironHead, uproar, thunderPunch, firePunch, earthPower, icyWind, ironTail, snore, knockOff, focusPunch, outrage]
}

omastar :: Pokemon
omastar = Pokemon {
  pokemonIndex = 138,
  pokemonName = "Omastar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Rock,
  pokemonType2 = Water,
  attack = 60,
  defence = 125,
  specialAttack = 115,
  specialDefence = 70,
  pokemonMoves = [boneClub, flameWheel, boneClub, flameWheel, hex, bonemerang, shadowBone, thrash, stompingTantrum, flareBlitz, retaliate, boneRush, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, thief, roundMove, echoedVoice, focusBlast, falseSwipe, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, dreamEater, darkPulse, ancientPower, skullBash, doubleKick, ironHead, chipAway, headbutt, rage, falseSwipe, doubleEdge]
}

kabuto :: Pokemon
kabuto = Pokemon {
  pokemonIndex = 139,
  pokemonName = "Kabuto",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Rock,
  pokemonType2 = Water,
  attack = 80,
  defence = 90,
  specialAttack = 55,
  specialDefence = 45,
  pokemonMoves = [doubleKick, closeCombat, megaKick, revenge, rollingKick, jumpKick, rollingKick, jumpKick, brickBreak, feint, highJumpKick, blazeKick, megaKick, closeCombat, hiddenPower, earthquake, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, stoneEdge, bulldoze, rockSlide, poisonJab, rapidSpin, highJumpKick, machPunch, vacuumWave, bulletPunch, pursuit, feint, covet, bounce, superpower, snore, knockOff, focusPunch, tackle, fakeOut]
}

kabutops :: Pokemon
kabutops = Pokemon {
  pokemonIndex = 140,
  pokemonName = "Kabutops",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Rock,
  pokemonType2 = Water,
  attack = 115,
  defence = 105,
  specialAttack = 65,
  specialDefence = 70,
  pokemonMoves = [cometPunch, closeCombat, focusPunch, revenge, pursuit, machPunch, pursuit, machPunch, bulletPunch, feint, vacuumWave, thunderPunch, icePunch, firePunch, skyUppercut, megaPunch, focusPunch, closeCombat, hiddenPower, earthquake, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, stoneEdge, bulldoze, rockSlide, rapidSpin, highJumpKick, machPunch, vacuumWave, bulletPunch, pursuit, feint, covet, thunderPunch, firePunch, icePunch, snore, drainPunch, focusPunch, tackle, fakeOut]
}

aerodactyl :: Pokemon
aerodactyl = Pokemon {
  pokemonIndex = 141,
  pokemonName = "Aerodactyl",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Rock,
  pokemonType2 = Flying,
  attack = 105,
  defence = 65,
  specialAttack = 60,
  specialDefence = 75,
  pokemonMoves = [lick, knockOff, wrap, stomp, slam, rollout, chipAway, powerWhip, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, brutalSwing, gigaImpact, bulldoze, rockSlide, dragonTail, dreamEater, surf, bodySlam, smellingSalts, snore, hammerArm, muddyWater, zenHeadbutt, belch, thunderPunch, firePunch, icePunch, icyWind, aquaTail, zenHeadbutt, ironTail, bind, snore, knockOff, focusPunch, shockWave, waterPulse]
}

snorlax :: Pokemon
snorlax = Pokemon {
  pokemonIndex = 142,
  pokemonName = "Snorlax",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 160,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 110,
  defence = 65,
  specialAttack = 65,
  specialDefence = 110,
  pokemonMoves = [tackle, smog, assurance, clearSmog, sludge, selfDestruct, sludgeBomb, explosion, belch, venoshock, hiddenPower, thunderbolt, thunder, shadowBall, flamethrower, sludgeBomb, fireBlast, facade, thief, roundMove, explosion, payback, infestation, darkPulse, psybeam, uproar, snore, shockWave]
}

articuno :: Pokemon
articuno = Pokemon {
  pokemonIndex = 143,
  pokemonName = "Articuno",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Ice,
  pokemonType2 = Flying,
  attack = 85,
  defence = 100,
  specialAttack = 95,
  specialDefence = 125,
  pokemonMoves = [doubleHit, tackle, smog, smog, assurance, clearSmog, sludge, selfDestruct, sludgeBomb, explosion, belch, venoshock, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, flamethrower, sludgeBomb, fireBlast, facade, thief, roundMove, explosion, payback, gigaImpact, infestation, darkPulse, psybeam, uproar, snore, shockWave]
}

zapdos :: Pokemon
zapdos = Pokemon {
  pokemonIndex = 144,
  pokemonName = "Zapdos",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Electric,
  pokemonType2 = Flying,
  attack = 90,
  defence = 85,
  specialAttack = 125,
  specialDefence = 90,
  pokemonMoves = [hornAttack, furyAttack, smackDown, stomp, bulldoze, chipAway, rockBlast, drillRun, takeDown, stoneEdge, earthquake, megahorn, hiddenPower, iceBeam, blizzard, smackDown, thunderbolt, thunder, earthquake, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, payback, smartStrike, stoneEdge, bulldoze, rockSlide, poisonJab, crunch, crushClaw, dragonRush, iceFang, fireFang, thunderFang, skullBash, ironTail, rockClimb, drillRun, uproar, earthPower, superpower, icyWind, aquaTail, dragonPulse, ironTail, snore, shockWave]
}

moltres :: Pokemon
moltres = Pokemon {
  pokemonIndex = 145,
  pokemonName = "Moltres",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Fire,
  pokemonType2 = Flying,
  attack = 100,
  defence = 90,
  specialAttack = 125,
  specialDefence = 85,
  pokemonMoves = [hammerArm, hornAttack, furyAttack, furyAttack, smackDown, stomp, bulldoze, chipAway, rockBlast, drillRun, takeDown, stoneEdge, earthquake, megahorn, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, brutalSwing, shadowClaw, payback, smartStrike, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, poisonJab, surf, crunch, crushClaw, dragonRush, iceFang, fireFang, thunderFang, skullBash, ironTail, rockClimb, drillRun, uproar, thunderPunch, firePunch, icePunch, earthPower, superpower, icyWind, aquaTail, dragonPulse, ironTail, snore, focusPunch, shockWave, outrage]
}

dratini :: Pokemon
dratini = Pokemon {
  pokemonIndex = 146,
  pokemonName = "Dratini",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 41,
  pokemonType1 = Dragon,
  pokemonType2 = None,
  attack = 64,
  defence = 45,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [doubleEdge, pound, doubleSlap, takeDown, eggBomb, doubleEdge, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, echoedVoice, chargeBeam, gigaImpact, bulldoze, rockSlide, dreamEater, wildCharge, dazzlingGleam, lastResort, mudBomb, covet, thunderPunch, firePunch, icePunch, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse]
}

dragonair :: Pokemon
dragonair = Pokemon {
  pokemonIndex = 147,
  pokemonName = "Dragonair",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 61,
  pokemonType1 = Dragon,
  pokemonType2 = None,
  attack = 84,
  defence = 65,
  specialAttack = 70,
  specialDefence = 70,
  pokemonMoves = [constrict, vineWhip, absorb, bind, megaDrain, knockOff, gigaDrain, ancientPower, slam, powerWhip, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, thief, roundMove, energyBall, gigaImpact, infestation, confusion, megaDrain, leafStorm, gigaDrain, seedBomb, bind, snore, knockOff, gigaDrain, shockWave]
}

dragonite :: Pokemon
dragonite = Pokemon {
  pokemonIndex = 148,
  pokemonName = "Dragonite",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 91,
  pokemonType1 = Dragon,
  pokemonType2 = Flying,
  attack = 134,
  defence = 95,
  specialAttack = 100,
  specialDefence = 100,
  pokemonMoves = [cometPunch, fakeOut, bite, doubleHit, rage, megaPunch, chipAway, dizzyPunch, crunch, outrage, suckerPunch, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, gigaImpact, bulldoze, rockSlide, surf, stomp, crushClaw, doubleEdge, hammerArm, focusPunch, uproar, circleThrow, covet, uproar, thunderPunch, firePunch, icePunch, icyWind, aquaTail, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse, outrage]
}

mewtwo :: Pokemon
mewtwo = Pokemon {
  pokemonIndex = 149,
  pokemonName = "Mewtwo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 106,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 110,
  defence = 90,
  specialAttack = 154,
  specialDefence = 90,
  pokemonMoves = [cometPunch, fakeOut, bite, doubleHit, rage, megaPunch, chipAway, dizzyPunch, crunch, outrage, suckerPunch, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, gigaImpact, bulldoze, rockSlide, surf, stomp, crushClaw, doubleEdge, hammerArm, focusPunch, uproar, circleThrow, covet, uproar, thunderPunch, firePunch, icePunch, icyWind, aquaTail, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse, outrage]
}

mew :: Pokemon
mew = Pokemon {
  pokemonIndex = 150,
  pokemonName = "Mew",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 100,
  defence = 100,
  specialAttack = 100,
  specialDefence = 100,
  pokemonMoves = [bubble, waterGun, twister, bubbleBeam, brine, dragonPulse, hydroPump, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, flashCannon, surf, waterfall, auroraBeam, octazooka, dragonBreath, signalBeam, razorWind, muddyWater, waterPulse, clearSmog, outrage, signalBeam, bounce, icyWind, dragonPulse, snore, waterPulse, outrage]
}

chikorita :: Pokemon
chikorita = Pokemon {
  pokemonIndex = 151,
  pokemonName = "Chikorita",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 49,
  defence = 65,
  specialAttack = 49,
  specialDefence = 65,
  pokemonMoves = [hydroPump, bubble, waterGun, waterGun, twister, bubbleBeam, brine, dragonPulse, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, scald, gigaImpact, flashCannon, surf, waterfall, auroraBeam, octazooka, dragonBreath, signalBeam, razorWind, muddyWater, waterPulse, clearSmog, outrage, signalBeam, bounce, icyWind, dragonPulse, snore, waterPulse, outrage]
}

bayleef :: Pokemon
bayleef = Pokemon {
  pokemonIndex = 152,
  pokemonName = "Bayleef",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 62,
  defence = 80,
  specialAttack = 63,
  specialDefence = 80,
  pokemonMoves = [peck, hornAttack, waterPulse, furyAttack, waterfall, megahorn, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, smartStrike, poisonJab, surf, waterfall, psybeam, hydroPump, mudSlap, aquaTail, bodySlam, mudShot, skullBash, signalBeam, signalBeam, drillRun, bounce, icyWind, aquaTail, snore, knockOff, waterPulse]
}

meganium :: Pokemon
meganium = Pokemon {
  pokemonIndex = 153,
  pokemonName = "Meganium",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 82,
  defence = 100,
  specialAttack = 83,
  specialDefence = 100,
  pokemonMoves = [megahorn, poisonJab, peck, hornAttack, waterPulse, furyAttack, waterfall, megahorn, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, scald, smartStrike, gigaImpact, poisonJab, surf, waterfall, psybeam, hydroPump, mudSlap, aquaTail, bodySlam, mudShot, skullBash, signalBeam, signalBeam, drillRun, bounce, icyWind, aquaTail, snore, knockOff, waterPulse]
}

cyndaquil :: Pokemon
cyndaquil = Pokemon {
  pokemonIndex = 154,
  pokemonName = "Cyndaquil",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 39,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 52,
  defence = 43,
  specialAttack = 60,
  specialDefence = 50,
  pokemonMoves = [tackle, waterGun, rapidSpin, swift, bubbleBeam, brine, powerGem, psychic, hydroPump, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, psychic, facade, roundMove, scald, flashCannon, surf, waterfall, dazzlingGleam, signalBeam, icyWind, snore, waterPulse]
}

quilava :: Pokemon
quilava = Pokemon {
  pokemonIndex = 155,
  pokemonName = "Quilava",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 58,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 64,
  defence = 58,
  specialAttack = 80,
  specialDefence = 65,
  pokemonMoves = [hydroPump, waterGun, rapidSpin, swift, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, psychic, facade, roundMove, scald, gigaImpact, dreamEater, flashCannon, surf, waterfall, dazzlingGleam, signalBeam, icyWind, snore, waterPulse, tackle, bubbleBeam, brine, powerGem, psychic]
}

typhlosion :: Pokemon
typhlosion = Pokemon {
  pokemonIndex = 156,
  pokemonName = "Typhlosion",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 78,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 84,
  defence = 78,
  specialAttack = 109,
  specialDefence = 85,
  pokemonMoves = [magicalLeaf, confusion, doubleSlap, psybeam, psychic, psyshock, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, aerialAce, facade, thief, roundMove, focusBlast, energyBall, chargeBeam, payback, gigaImpact, infestation, dreamEater, dazzlingGleam, futureSight, fakeOut, wakeUpSlap, icyWind, covet, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, icyWind, zenHeadbutt, snore, drainPunch, focusPunch, shockWave]
}

totodile :: Pokemon
totodile = Pokemon {
  pokemonIndex = 157,
  pokemonName = "Totodile",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 65,
  defence = 64,
  specialAttack = 44,
  specialDefence = 48,
  pokemonMoves = [vacuumWave, quickAttack, pursuit, falseSwipe, wingAttack, furyCutter, slash, razorWind, xScissor, nightSlash, doubleHit, airSlash, feint, hiddenPower, hyperBeam, brickBreak, aerialAce, facade, thief, roundMove, steelWing, falseSwipe, brutalSwing, gigaImpact, xScissor, uturn, razorWind, silverWind, bugBuzz, nightSlash, steelWing, bugBite, snore, knockOff, airCutter]
}

croconaw :: Pokemon
croconaw = Pokemon {
  pokemonIndex = 158,
  pokemonName = "Croconaw",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 80,
  defence = 80,
  specialAttack = 59,
  specialDefence = 63,
  pokemonMoves = [drainingKiss, pound, lick, powderSnow, lick, powderSnow, doubleSlap, icePunch, heartStamp, wakeUpSlap, avalanche, bodySlam, blizzard, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, psychic, shadowBall, brickBreak, facade, thief, roundMove, echoedVoice, focusBlast, energyBall, payback, gigaImpact, frostBreath, dreamEater, fakeOut, icePunch, wakeUpSlap, covet, signalBeam, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, drainPunch, focusPunch, waterPulse, confusion, psychic]
}

feraligatr :: Pokemon
feraligatr = Pokemon {
  pokemonIndex = 159,
  pokemonName = "Feraligatr",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 105,
  defence = 100,
  specialAttack = 79,
  specialDefence = 83,
  pokemonMoves = [quickAttack, thunderShock, thunderShock, swift, shockWave, thunderPunch, discharge, thunderbolt, thunder, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, brickBreak, facade, thief, lowSweep, roundMove, focusBlast, chargeBeam, gigaImpact, voltSwitch, wildCharge, karateChop, rollingKick, crossChop, firePunch, icePunch, dynamicPunch, feint, hammerArm, focusPunch, covet, dualChop, signalBeam, thunderPunch, firePunch, icePunch, electroweb, ironTail, snore, focusPunch, shockWave]
}

sentret :: Pokemon
sentret = Pokemon {
  pokemonIndex = 160,
  pokemonName = "Sentret",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 46,
  defence = 34,
  specialAttack = 35,
  specialDefence = 45,
  pokemonMoves = [smog, ember, ember, feintAttack, fireSpin, clearSmog, flameBurst, firePunch, lavaPlume, flamethrower, fireBlast, hiddenPower, hyperBeam, psychic, brickBreak, flamethrower, fireBlast, facade, flameCharge, thief, lowSweep, roundMove, overheat, focusBlast, gigaImpact, karateChop, megaPunch, crossChop, thunderPunch, machPunch, dynamicPunch, flareBlitz, ironTail, belch, covet, dualChop, thunderPunch, firePunch, ironTail, snore, heatWave, focusPunch]
}

furret :: Pokemon
furret = Pokemon {
  pokemonIndex = 161,
  pokemonName = "Furret",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 76,
  defence = 64,
  specialAttack = 45,
  specialDefence = 55,
  pokemonMoves = [viceGrip, bind, revenge, vitalThrow, doubleHit, brickBreak, xScissor, submission, stormThrow, thrash, superpower, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, thief, roundMove, focusBlast, falseSwipe, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, furyAttack, feintAttack, quickAttack, closeCombat, feint, bugBite, superpower, bugBite, superpower, bind, snore, knockOff, focusPunch]
}

hoothoot :: Pokemon
hoothoot = Pokemon {
  pokemonIndex = 162,
  pokemonName = "Hoothoot",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 30,
  defence = 30,
  specialAttack = 36,
  specialDefence = 56,
  pokemonMoves = [viceGrip, bind, revenge, vitalThrow, doubleHit, brickBreak, xScissor, submission, stormThrow, thrash, superpower, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, thief, roundMove, focusBlast, falseSwipe, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, furyAttack, feintAttack, quickAttack, closeCombat, feint, bugBite, superpower, bugBite, superpower, bind, snore, knockOff, focusPunch]
}

noctowl :: Pokemon
noctowl = Pokemon {
  pokemonIndex = 163,
  pokemonName = "Noctowl",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 50,
  defence = 50,
  specialAttack = 86,
  specialDefence = 96,
  pokemonMoves = [tackle, rage, hornAttack, pursuit, payback, zenHeadbutt, takeDown, thrash, gigaImpact, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, flamethrower, fireBlast, rockTomb, facade, roundMove, payback, smartStrike, gigaImpact, stoneEdge, bulldoze, rockSlide, wildCharge, surf, ironHead, uproar, icyWind, zenHeadbutt, ironTail, snore, shockWave, waterPulse, outrage]
}

ledyba :: Pokemon
ledyba = Pokemon {
  pokemonIndex = 164,
  pokemonName = "Ledyba",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 20,
  defence = 30,
  specialAttack = 40,
  specialDefence = 80,
  pokemonMoves = [tackle, bounce]
}

ledian :: Pokemon
ledian = Pokemon {
  pokemonIndex = 165,
  pokemonName = "Ledian",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 35,
  defence = 50,
  specialAttack = 55,
  specialDefence = 110,
  pokemonMoves = [bite, thrash, twister, iceFang, aquaTail, crunch, hydroPump, hurricane, hyperBeam, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, flamethrower, fireBlast, facade, roundMove, scald, brutalSwing, payback, gigaImpact, stoneEdge, bulldoze, dragonTail, surf, darkPulse, waterfall, ironHead, bounce, uproar, icyWind, aquaTail, dragonPulse, ironTail, snore, waterPulse, outrage, tackle]
}

spinarak :: Pokemon
spinarak = Pokemon {
  pokemonIndex = 166,
  pokemonName = "Spinarak",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 60,
  defence = 40,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [bite, thrash, twister, iceFang, aquaTail, crunch, hydroPump, hurricane, hyperBeam, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, flamethrower, fireBlast, facade, roundMove, scald, brutalSwing, payback, gigaImpact, stoneEdge, bulldoze, dragonTail, surf, darkPulse, waterfall, ironHead, bounce, uproar, icyWind, aquaTail, dragonPulse, ironTail, snore, waterPulse, outrage, tackle]
}

ariados :: Pokemon
ariados = Pokemon {
  pokemonIndex = 167,
  pokemonName = "Ariados",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 90,
  defence = 70,
  specialAttack = 60,
  specialDefence = 70,
  pokemonMoves = [waterGun, iceShard, waterPulse, bodySlam, iceBeam, brine, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, psychic, facade, roundMove, echoedVoice, smartStrike, gigaImpact, bulldoze, frostBreath, dreamEater, surf, waterfall, ancientPower, whirlpool, dragonPulse, avalanche, futureSight, freezeDry, signalBeam, ironHead, drillRun, icyWind, aquaTail, zenHeadbutt, dragonPulse, hyperVoice, ironTail, snore, shockWave, waterPulse, outrage]
}

chinchou :: Pokemon
chinchou = Pokemon {
  pokemonIndex = 169,
  pokemonName = "Chinchou",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Water,
  pokemonType2 = Electric,
  attack = 38,
  defence = 38,
  specialAttack = 56,
  specialDefence = 56,
  pokemonMoves = [covet, tackle, quickAttack, bite, swift, takeDown, doubleEdge, lastResort, hiddenPower, shadowBall, facade, roundMove, echoedVoice, covet, storedPower, synchronoise, covet, lastResort, hyperVoice, ironTail, snore]
}

lanturn :: Pokemon
lanturn = Pokemon {
  pokemonIndex = 170,
  pokemonName = "Lanturn",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 125,
  pokemonType1 = Water,
  pokemonType2 = Electric,
  attack = 58,
  defence = 58,
  specialAttack = 76,
  specialDefence = 76,
  pokemonMoves = [waterGun, tackle, quickAttack, waterPulse, auroraBeam, muddyWater, lastResort, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, shadowBall, facade, roundMove, echoedVoice, scald, gigaImpact, surf, waterfall, covet, storedPower, synchronoise, covet, signalBeam, lastResort, icyWind, aquaTail, hyperVoice, ironTail, snore, waterPulse, covet, bite, swift, takeDown, doubleEdge]
}

pichu :: Pokemon
pichu = Pokemon {
  pokemonIndex = 171,
  pokemonName = "Pichu",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 20,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 40,
  defence = 15,
  specialAttack = 35,
  specialDefence = 35,
  pokemonMoves = [thunderShock, tackle, quickAttack, doubleKick, thunderFang, pinMissile, discharge, lastResort, thunder, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, facade, roundMove, echoedVoice, chargeBeam, gigaImpact, voltSwitch, wildCharge, covet, storedPower, synchronoise, covet, signalBeam, lastResort, hyperVoice, ironTail, snore, shockWave, covet, bite, swift, takeDown, doubleEdge]
}

cleffa :: Pokemon
cleffa = Pokemon {
  pokemonIndex = 172,
  pokemonName = "Cleffa",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 25,
  defence = 28,
  specialAttack = 45,
  specialDefence = 55,
  pokemonMoves = [ember, tackle, quickAttack, bite, fireFang, fireSpin, smog, lavaPlume, lastResort, flareBlitz, hiddenPower, hyperBeam, shadowBall, flamethrower, fireBlast, facade, flameCharge, roundMove, echoedVoice, overheat, gigaImpact, covet, storedPower, synchronoise, covet, lastResort, superpower, hyperVoice, ironTail, snore, heatWave, covet, swift, takeDown, doubleEdge]
}

igglybuff :: Pokemon
igglybuff = Pokemon {
  pokemonIndex = 173,
  pokemonName = "Igglybuff",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Normal,
  pokemonType2 = Fairy,
  attack = 30,
  defence = 15,
  specialAttack = 40,
  specialDefence = 20,
  pokemonMoves = [tackle, psybeam, signalBeam, discharge, triAttack, zapCannon, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, aerialAce, facade, thief, roundMove, chargeBeam, gigaImpact, dreamEater, signalBeam, foulPlay, lastResort, electroweb, icyWind, zenHeadbutt, ironTail, snore, shockWave]
}

togepi :: Pokemon
togepi = Pokemon {
  pokemonIndex = 174,
  pokemonName = "Togepi",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 20,
  defence = 65,
  specialAttack = 40,
  specialDefence = 65,
  pokemonMoves = [constrict, bite, waterGun, rollout, mudShot, brine, ancientPower, rockBlast, hydroPump, hiddenPower, iceBeam, blizzard, smackDown, rockTomb, facade, thief, roundMove, scald, rockSlide, surf, waterfall, bubbleBeam, auroraBeam, slam, knockOff, muddyWater, waterPulse, whirlpool, earthPower, icyWind, bind, snore, knockOff, waterPulse]
}

togetic :: Pokemon
togetic = Pokemon {
  pokemonIndex = 175,
  pokemonName = "Togetic",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Fairy,
  pokemonType2 = Flying,
  attack = 40,
  defence = 85,
  specialAttack = 80,
  specialDefence = 105,
  pokemonMoves = [spikeCannon, hydroPump, constrict, bite, bite, waterGun, rollout, mudShot, brine, ancientPower, rockBlast, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, rockTomb, facade, thief, roundMove, scald, gigaImpact, stoneEdge, rockSlide, surf, waterfall, bubbleBeam, auroraBeam, slam, knockOff, muddyWater, waterPulse, whirlpool, earthPower, icyWind, bind, snore, knockOff, waterPulse]
}

natu :: Pokemon
natu = Pokemon {
  pokemonIndex = 176,
  pokemonName = "Natu",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Psychic,
  pokemonType2 = Flying,
  attack = 50,
  defence = 45,
  specialAttack = 70,
  specialDefence = 45,
  pokemonMoves = [scratch, absorb, mudShot, aquaJet, megaDrain, ancientPower, hiddenPower, iceBeam, blizzard, smackDown, rockTomb, aerialAce, facade, thief, roundMove, scald, rockSlide, surf, waterfall, bubbleBeam, auroraBeam, rapidSpin, knockOff, mudShot, icyWind, gigaDrain, takeDown, earthPower, icyWind, snore, knockOff, gigaDrain, waterPulse]
}

xatu :: Pokemon
xatu = Pokemon {
  pokemonIndex = 177,
  pokemonName = "Xatu",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Psychic,
  pokemonType2 = Flying,
  attack = 75,
  defence = 70,
  specialAttack = 95,
  specialDefence = 70,
  pokemonMoves = [slash, nightSlash, feint, scratch, absorb, absorb, mudShot, aquaJet, megaDrain, ancientPower, nightSlash, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, scald, gigaImpact, stoneEdge, rockSlide, xScissor, surf, waterfall, bubbleBeam, auroraBeam, rapidSpin, knockOff, mudShot, icyWind, gigaDrain, takeDown, earthPower, superpower, icyWind, aquaTail, snore, knockOff, gigaDrain, waterPulse]
}

mareep :: Pokemon
mareep = Pokemon {
  pokemonIndex = 178,
  pokemonName = "Mareep",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 40,
  defence = 40,
  specialAttack = 65,
  specialDefence = 45,
  pokemonMoves = [ironHead, iceFang, fireFang, thunderFang, wingAttack, bite, ancientPower, crunch, takeDown, skyDrop, ironHead, hyperBeam, rockSlide, gigaImpact, dragonClaw, hiddenPower, hyperBeam, smackDown, earthquake, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, steelWing, skyDrop, brutalSwing, payback, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, pursuit, steelWing, dragonBreath, assurance, ironHead, earthPower, aquaTail, dragonPulse, ironTail, snore, heatWave, skyAttack, airCutter]
}

flaaffy :: Pokemon
flaaffy = Pokemon {
  pokemonIndex = 179,
  pokemonName = "Flaaffy",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 55,
  defence = 55,
  specialAttack = 80,
  specialDefence = 60,
  pokemonMoves = [ironHead, iceFang, fireFang, thunderFang, wingAttack, bite, ancientPower, crunch, takeDown, skyDrop, ironHead, hyperBeam, rockSlide, gigaImpact, dragonClaw, hiddenPower, hyperBeam, smackDown, earthquake, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, steelWing, skyDrop, brutalSwing, payback, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, pursuit, steelWing, dragonBreath, assurance, ironHead, earthPower, aquaTail, dragonPulse, ironTail, snore, heatWave, skyAttack, airCutter]
}

ampharos :: Pokemon
ampharos = Pokemon {
  pokemonIndex = 180,
  pokemonName = "Ampharos",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 75,
  defence = 85,
  specialAttack = 115,
  specialDefence = 90,
  pokemonMoves = [tackle, lick, chipAway, bodySlam, snore, gigaImpact, rollout, crunch, highHorsepower, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, focusBlast, gigaImpact, bulldoze, rockSlide, wildCharge, surf, lick, doubleEdge, pursuit, zenHeadbutt, selfDestruct, belch, covet, ironHead, seedBomb, gunkShot, thunderPunch, firePunch, icePunch, lastResort, superpower, icyWind, zenHeadbutt, hyperVoice, snore, focusPunch, shockWave, waterPulse, outrage, lastResort, lastResort]
}

bellossom :: Pokemon
bellossom = Pokemon {
  pokemonIndex = 181,
  pokemonName = "Bellossom",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 80,
  defence = 95,
  specialAttack = 90,
  specialDefence = 100,
  pokemonMoves = [gust, powderSnow, iceShard, ancientPower, freezeDry, iceBeam, blizzard, hurricane, hiddenPower, iceBeam, blizzard, hyperBeam, aerialAce, facade, roundMove, steelWing, skyDrop, gigaImpact, fly, frostBreath, uturn, signalBeam, icyWind, snore, skyAttack, airCutter, waterPulse]
}

marill :: Pokemon
marill = Pokemon {
  pokemonIndex = 182,
  pokemonName = "Marill",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Water,
  pokemonType2 = Fairy,
  attack = 20,
  defence = 50,
  specialAttack = 20,
  specialDefence = 50,
  pokemonMoves = [peck, thunderShock, pluck, ancientPower, discharge, drillPeck, thunder, zapCannon, hiddenPower, hyperBeam, thunderbolt, thunder, aerialAce, facade, roundMove, steelWing, chargeBeam, skyDrop, gigaImpact, voltSwitch, fly, uturn, wildCharge, signalBeam, snore, heatWave, skyAttack, airCutter, shockWave]
}

azumarill :: Pokemon
azumarill = Pokemon {
  pokemonIndex = 183,
  pokemonName = "Azumarill",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Water,
  pokemonType2 = Fairy,
  attack = 50,
  defence = 80,
  specialAttack = 60,
  specialDefence = 80,
  pokemonMoves = [wingAttack, ember, fireSpin, ancientPower, flamethrower, airSlash, heatWave, solarBeam, skyAttack, hurricane, burnUp, hiddenPower, hyperBeam, solarBeam, flamethrower, fireBlast, aerialAce, facade, flameCharge, roundMove, overheat, steelWing, skyDrop, gigaImpact, fly, uturn, snore, heatWave, skyAttack, airCutter]
}

sudowoodo :: Pokemon
sudowoodo = Pokemon {
  pokemonIndex = 184,
  pokemonName = "Sudowoodo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Rock,
  pokemonType2 = None,
  attack = 100,
  defence = 115,
  specialAttack = 30,
  specialDefence = 65,
  pokemonMoves = [wrap, twister, slam, dragonTail, aquaTail, dragonRush, outrage, hyperBeam, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, flamethrower, fireBlast, facade, roundMove, brutalSwing, dragonTail, surf, waterfall, dracoMeteor, dragonBreath, dragonRush, extremeSpeed, waterPulse, aquaJet, dragonPulse, ironTail, icyWind, aquaTail, dragonPulse, ironTail, bind, snore, shockWave, waterPulse, outrage]
}

politoed :: Pokemon
politoed = Pokemon {
  pokemonIndex = 185,
  pokemonName = "Politoed",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 75,
  defence = 75,
  specialAttack = 90,
  specialDefence = 100,
  pokemonMoves = [wrap, twister, twister, slam, dragonTail, aquaTail, dragonRush, outrage, hyperBeam, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, flamethrower, fireBlast, facade, roundMove, brutalSwing, dragonTail, surf, waterfall, dracoMeteor, dragonBreath, dragonRush, extremeSpeed, waterPulse, aquaJet, dragonPulse, ironTail, icyWind, aquaTail, dragonPulse, ironTail, bind, snore, shockWave, waterPulse, outrage]
}

hoppip :: Pokemon
hoppip = Pokemon {
  pokemonIndex = 186,
  pokemonName = "Hoppip",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Grass,
  pokemonType2 = Flying,
  attack = 35,
  defence = 40,
  specialAttack = 35,
  specialDefence = 55,
  pokemonMoves = [wingAttack, hurricane, firePunch, thunderPunch, wrap, twister, twister, slam, dragonTail, aquaTail, dragonRush, outrage, hyperBeam, hurricane, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, steelWing, focusBlast, skyDrop, brutalSwing, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, dragonTail, surf, waterfall, dracoMeteor, dragonBreath, dragonRush, extremeSpeed, waterPulse, aquaJet, dragonPulse, ironTail, ironHead, thunderPunch, firePunch, icePunch, superpower, icyWind, aquaTail, dragonPulse, ironTail, bind, snore, heatWave, airCutter, focusPunch, shockWave, waterPulse, outrage]
}

skiploom :: Pokemon
skiploom = Pokemon {
  pokemonIndex = 187,
  pokemonName = "Skiploom",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Grass,
  pokemonType2 = Flying,
  attack = 45,
  defence = 50,
  specialAttack = 45,
  specialDefence = 65,
  pokemonMoves = [confusion, swift, futureSight, psychoCut, psychic, auraSphere, psystrike, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, dreamEater, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, icyWind, aquaTail, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse]
}

jumpluff :: Pokemon
jumpluff = Pokemon {
  pokemonIndex = 188,
  pokemonName = "Jumpluff",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Grass,
  pokemonType2 = Flying,
  attack = 55,
  defence = 70,
  specialAttack = 55,
  specialDefence = 95,
  pokemonMoves = [confusion, swift, futureSight, psychoCut, psychic, auraSphere, psystrike, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, dreamEater, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, icyWind, aquaTail, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse]
}

aipom :: Pokemon
aipom = Pokemon {
  pokemonIndex = 189,
  pokemonName = "Aipom",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 70,
  defence = 55,
  specialAttack = 40,
  specialDefence = 55,
  pokemonMoves = [confusion, swift, futureSight, psychoCut, psychic, auraSphere, psystrike, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, dreamEater, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, icyWind, aquaTail, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse]
}

sunkern :: Pokemon
sunkern = Pokemon {
  pokemonIndex = 190,
  pokemonName = "Sunkern",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 30,
  defence = 30,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [pound, megaPunch, psychic, ancientPower, auraSphere, dragonClaw, psyshock, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, leechLife, psychic, shadowBall, brickBreak, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, aerialAce, facade, flameCharge, thief, lowSweep, roundMove, echoedVoice, overheat, steelWing, focusBlast, energyBall, falseSwipe, scald, chargeBeam, skyDrop, brutalSwing, acrobatics, explosion, shadowClaw, payback, smartStrike, gigaImpact, stoneEdge, voltSwitch, fly, bulldoze, frostBreath, rockSlide, xScissor, dragonTail, infestation, poisonJab, dreamEater, uturn, flashCannon, wildCharge, surf, snarl, darkPulse, waterfall, dazzlingGleam, bugBite, covet, dualChop, signalBeam, ironHead, seedBomb, drillRun, bounce, gunkShot, uproar, thunderPunch, firePunch, icePunch, earthPower, foulPlay, lastResort, superpower, electroweb, icyWind, aquaTail, zenHeadbutt, dragonPulse, hyperVoice, ironTail, bind, snore, knockOff, heatWave, skyAttack, gigaDrain, drainPunch, airCutter, focusPunch, shockWave, waterPulse, outrage]
}

sunflora :: Pokemon
sunflora = Pokemon {
  pokemonIndex = 191,
  pokemonName = "Sunflora",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 75,
  defence = 55,
  specialAttack = 105,
  specialDefence = 85,
  pokemonMoves = [tackle, razorLeaf, magicalLeaf, bodySlam, solarBeam, hiddenPower, solarBeam, facade, roundMove, echoedVoice, energyBall, frenzyPlant, vineWhip, ancientPower, leafStorm, bodySlam, seedBomb, ironTail, snore, gigaDrain]
}

yanma :: Pokemon
yanma = Pokemon {
  pokemonIndex = 192,
  pokemonName = "Yanma",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 65,
  defence = 45,
  specialAttack = 75,
  specialDefence = 45,
  pokemonMoves = [tackle, razorLeaf, razorLeaf, magicalLeaf, bodySlam, solarBeam, hiddenPower, solarBeam, facade, roundMove, echoedVoice, energyBall, frenzyPlant, vineWhip, ancientPower, leafStorm, bodySlam, seedBomb, ironTail, snore, gigaDrain]
}

wooper :: Pokemon
wooper = Pokemon {
  pokemonIndex = 193,
  pokemonName = "Wooper",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Water,
  pokemonType2 = Ground,
  attack = 45,
  defence = 45,
  specialAttack = 25,
  specialDefence = 25,
  pokemonMoves = [petalDance, petalBlizzard, tackle, razorLeaf, razorLeaf, magicalLeaf, bodySlam, solarBeam, petalBlizzard, hiddenPower, hyperBeam, solarBeam, earthquake, facade, roundMove, echoedVoice, energyBall, gigaImpact, bulldoze, dragonTail, frenzyPlant, grassPledge, vineWhip, ancientPower, leafStorm, bodySlam, seedBomb, ironTail, snore, gigaDrain, outrage]
}

quagsire :: Pokemon
quagsire = Pokemon {
  pokemonIndex = 194,
  pokemonName = "Quagsire",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Water,
  pokemonType2 = Ground,
  attack = 85,
  defence = 85,
  specialAttack = 65,
  specialDefence = 65,
  pokemonMoves = [tackle, ember, quickAttack, flameWheel, flameCharge, swift, lavaPlume, flamethrower, inferno, rollout, doubleEdge, burnUp, hiddenPower, flamethrower, fireBlast, aerialAce, facade, flameCharge, roundMove, overheat, wildCharge, blastBurn, furySwipes, quickAttack, thrash, covet, crushClaw, doubleEdge, doubleKick, flareBlitz, extrasensory, flameBurst, covet, snore, heatWave]
}

espeon :: Pokemon
espeon = Pokemon {
  pokemonIndex = 195,
  pokemonName = "Espeon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 65,
  defence = 60,
  specialAttack = 130,
  specialDefence = 95,
  pokemonMoves = [tackle, ember, quickAttack, flameWheel, swift, flameCharge, lavaPlume, flamethrower, inferno, rollout, doubleEdge, burnUp, hiddenPower, brickBreak, flamethrower, fireBlast, aerialAce, facade, flameCharge, roundMove, overheat, wildCharge, blastBurn, furySwipes, quickAttack, thrash, covet, crushClaw, doubleEdge, doubleKick, flareBlitz, extrasensory, flameBurst, covet, snore, heatWave, focusPunch]
}

umbreon :: Pokemon
umbreon = Pokemon {
  pokemonIndex = 196,
  pokemonName = "Umbreon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Dark,
  pokemonType2 = None,
  attack = 65,
  defence = 110,
  specialAttack = 60,
  specialDefence = 130,
  pokemonMoves = [doubleEdge, tackle, ember, ember, quickAttack, flameWheel, swift, flameCharge, lavaPlume, flamethrower, inferno, rollout, doubleEdge, burnUp, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, overheat, focusBlast, shadowClaw, gigaImpact, bulldoze, rockSlide, wildCharge, blastBurn, firePledge, furySwipes, quickAttack, thrash, covet, crushClaw, doubleEdge, doubleKick, flareBlitz, extrasensory, flameBurst, covet, thunderPunch, firePunch, snore, heatWave, focusPunch]
}

murkrow :: Pokemon
murkrow = Pokemon {
  pokemonIndex = 197,
  pokemonName = "Murkrow",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Dark,
  pokemonType2 = Flying,
  attack = 85,
  defence = 42,
  specialAttack = 85,
  specialDefence = 42,
  pokemonMoves = [scratch, waterGun, rage, bite, iceFang, crunch, chipAway, slash, thrash, aquaTail, superpower, hydroPump, dragonClaw, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, aerialAce, facade, roundMove, scald, shadowClaw, rockSlide, surf, waterfall, hydroCannon, crunch, thrash, hydroPump, ancientPower, icePunch, metalClaw, aquaJet, waterPulse, uproar, icePunch, superpower, icyWind, aquaTail, ironTail, snore, focusPunch, waterPulse]
}

slowking :: Pokemon
slowking = Pokemon {
  pokemonIndex = 198,
  pokemonName = "Slowking",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Water,
  pokemonType2 = Psychic,
  attack = 75,
  defence = 80,
  specialAttack = 100,
  specialDefence = 110,
  pokemonMoves = [scratch, waterGun, waterGun, rage, bite, iceFang, crunch, chipAway, slash, thrash, aquaTail, superpower, hydroPump, dragonClaw, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, aerialAce, facade, roundMove, scald, shadowClaw, rockSlide, surf, waterfall, hydroCannon, crunch, thrash, hydroPump, ancientPower, icePunch, metalClaw, aquaJet, waterPulse, uproar, icePunch, superpower, icyWind, aquaTail, ironTail, snore, focusPunch, waterPulse]
}

misdreavus :: Pokemon
misdreavus = Pokemon {
  pokemonIndex = 199,
  pokemonName = "Misdreavus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Ghost,
  pokemonType2 = None,
  attack = 60,
  defence = 60,
  specialAttack = 85,
  specialDefence = 85,
  pokemonMoves = [scratch, waterGun, rage, waterGun, rage, bite, iceFang, crunch, chipAway, slash, thrash, aquaTail, superpower, hydroPump, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, brickBreak, rockTomb, aerialAce, facade, roundMove, focusBlast, scald, shadowClaw, gigaImpact, bulldoze, rockSlide, dragonTail, surf, waterfall, hydroCannon, waterPledge, crunch, thrash, hydroPump, ancientPower, icePunch, metalClaw, aquaJet, waterPulse, uproar, icePunch, superpower, icyWind, aquaTail, dragonPulse, ironTail, snore, focusPunch, waterPulse, outrage]
}

unown :: Pokemon
unown = Pokemon {
  pokemonIndex = 200,
  pokemonName = "Unown",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 48,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 72,
  defence = 48,
  specialAttack = 72,
  specialDefence = 48,
  pokemonMoves = [scratch, quickAttack, furySwipes, slam, suckerPunch, hyperVoice, hiddenPower, iceBeam, solarBeam, thunderbolt, shadowBall, brickBreak, flamethrower, facade, thief, roundMove, echoedVoice, chargeBeam, brutalSwing, shadowClaw, uturn, surf, doubleEdge, pursuit, slash, lastResort, covet, ironTail, covet, uproar, thunderPunch, firePunch, icePunch, lastResort, aquaTail, hyperVoice, ironTail, snore, knockOff, focusPunch, shockWave, waterPulse]
}

wobbuffet :: Pokemon
wobbuffet = Pokemon {
  pokemonIndex = 201,
  pokemonName = "Wobbuffet",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 190,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 33,
  defence = 58,
  specialAttack = 33,
  specialDefence = 58,
  pokemonMoves = [scratch, quickAttack, quickAttack, furySwipes, slam, suckerPunch, hyperVoice, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, flamethrower, facade, thief, roundMove, echoedVoice, focusBlast, chargeBeam, brutalSwing, shadowClaw, gigaImpact, uturn, surf, doubleEdge, pursuit, slash, lastResort, covet, ironTail, covet, uproar, thunderPunch, firePunch, icePunch, lastResort, aquaTail, hyperVoice, ironTail, snore, knockOff, focusPunch, shockWave, waterPulse]
}

girafarig :: Pokemon
girafarig = Pokemon {
  pokemonIndex = 202,
  pokemonName = "Girafarig",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Normal,
  pokemonType2 = Psychic,
  attack = 80,
  defence = 65,
  specialAttack = 90,
  specialDefence = 65,
  pokemonMoves = [tackle, peck, confusion, echoedVoice, zenHeadbutt, extrasensory, takeDown, airSlash, uproar, moonblast, synchronoise, dreamEater, hiddenPower, psychic, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, fly, dreamEater, feintAttack, wingAttack, skyAttack, uproar, zenHeadbutt, hyperVoice, snore, heatWave, skyAttack, airCutter]
}

pineco :: Pokemon
pineco = Pokemon {
  pokemonIndex = 203,
  pokemonName = "Pineco",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 65,
  defence = 90,
  specialAttack = 35,
  specialDefence = 35,
  pokemonMoves = [dreamEater, skyAttack, tackle, peck, confusion, echoedVoice, zenHeadbutt, extrasensory, takeDown, airSlash, uproar, moonblast, synchronoise, dreamEater, hiddenPower, hyperBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, gigaImpact, fly, dreamEater, feintAttack, wingAttack, skyAttack, uproar, zenHeadbutt, hyperVoice, snore, heatWave, skyAttack, airCutter]
}

forretress :: Pokemon
forretress = Pokemon {
  pokemonIndex = 204,
  pokemonName = "Forretress",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Bug,
  pokemonType2 = Steel,
  attack = 90,
  defence = 140,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [tackle, swift, machPunch, silverWind, cometPunch, bugBuzz, airSlash, doubleEdge, hiddenPower, solarBeam, brickBreak, aerialAce, facade, thief, roundMove, acrobatics, infestation, uturn, psybeam, silverWind, bugBuzz, knockOff, bugBite, focusPunch, drainPunch, dizzyPunch, bugBite, uproar, thunderPunch, icePunch, snore, knockOff, gigaDrain, drainPunch, airCutter, focusPunch]
}

dunsparce :: Pokemon
dunsparce = Pokemon {
  pokemonIndex = 205,
  pokemonName = "Dunsparce",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 70,
  defence = 70,
  specialAttack = 65,
  specialDefence = 65,
  pokemonMoves = [tackle, swift, swift, machPunch, silverWind, cometPunch, bugBuzz, airSlash, doubleEdge, hiddenPower, hyperBeam, solarBeam, brickBreak, aerialAce, facade, thief, roundMove, focusBlast, acrobatics, gigaImpact, infestation, uturn, psybeam, silverWind, bugBuzz, knockOff, bugBite, focusPunch, drainPunch, dizzyPunch, bugBite, uproar, thunderPunch, icePunch, snore, knockOff, gigaDrain, drainPunch, airCutter, focusPunch]
}

gligar :: Pokemon
gligar = Pokemon {
  pokemonIndex = 206,
  pokemonName = "Gligar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Ground,
  pokemonType2 = Flying,
  attack = 75,
  defence = 105,
  specialAttack = 35,
  specialDefence = 65,
  pokemonMoves = [poisonSting, constrict, absorb, infestation, shadowSneak, furySwipes, suckerPunch, pinMissile, psychic, poisonJab, crossPoison, venoshock, hiddenPower, solarBeam, leechLife, psychic, sludgeBomb, facade, thief, roundMove, xScissor, infestation, poisonJab, psybeam, pursuit, signalBeam, twineedle, electroweb, nightSlash, megahorn, bugBite, signalBeam, bounce, foulPlay, electroweb, snore, gigaDrain]
}

steelix :: Pokemon
steelix = Pokemon {
  pokemonIndex = 207,
  pokemonName = "Steelix",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Steel,
  pokemonType2 = Ground,
  attack = 85,
  defence = 200,
  specialAttack = 55,
  specialDefence = 65,
  pokemonMoves = [fellStinger, bugBite, poisonSting, constrict, absorb, absorb, infestation, shadowSneak, furySwipes, suckerPunch, pinMissile, psychic, poisonJab, crossPoison, venoshock, hiddenPower, hyperBeam, solarBeam, leechLife, psychic, sludgeBomb, facade, thief, roundMove, smartStrike, gigaImpact, xScissor, infestation, poisonJab, psybeam, pursuit, signalBeam, twineedle, electroweb, nightSlash, megahorn, bugBite, signalBeam, bounce, foulPlay, electroweb, snore, gigaDrain]
}

snubbull :: Pokemon
snubbull = Pokemon {
  pokemonIndex = 208,
  pokemonName = "Snubbull",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 80,
  defence = 50,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [crossPoison, absorb, astonish, bite, astonish, bite, wingAttack, airCutter, swift, poisonFang, leechLife, venoshock, airSlash, venoshock, hiddenPower, hyperBeam, leechLife, shadowBall, sludgeBomb, aerialAce, facade, thief, roundMove, steelWing, acrobatics, payback, gigaImpact, fly, xScissor, uturn, darkPulse, quickAttack, pursuit, feintAttack, gust, zenHeadbutt, braveBird, gigaDrain, steelWing, uproar, zenHeadbutt, snore, heatWave, skyAttack, gigaDrain, airCutter]
}

granbull :: Pokemon
granbull = Pokemon {
  pokemonIndex = 209,
  pokemonName = "Granbull",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 120,
  defence = 75,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [bubble, waterGun, bubbleBeam, spark, signalBeam, discharge, takeDown, hydroPump, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, facade, roundMove, scald, chargeBeam, voltSwitch, wildCharge, surf, waterfall, dazzlingGleam, psybeam, whirlpool, shockWave, brine, waterPulse, signalBeam, bounce, icyWind, snore, shockWave, waterPulse]
}

qwilfish :: Pokemon
qwilfish = Pokemon {
  pokemonIndex = 210,
  pokemonName = "Qwilfish",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Water,
  pokemonType2 = Poison,
  attack = 95,
  defence = 85,
  specialAttack = 55,
  specialDefence = 55,
  pokemonMoves = [bubble, waterGun, bubbleBeam, spark, signalBeam, discharge, takeDown, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, facade, roundMove, scald, chargeBeam, gigaImpact, voltSwitch, wildCharge, surf, waterfall, dazzlingGleam, psybeam, whirlpool, shockWave, brine, waterPulse, signalBeam, bounce, icyWind, aquaTail, snore, shockWave, waterPulse]
}

scizor :: Pokemon
scizor = Pokemon {
  pokemonIndex = 211,
  pokemonName = "Scizor",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Bug,
  pokemonType2 = Steel,
  attack = 130,
  defence = 100,
  specialAttack = 55,
  specialDefence = 80,
  pokemonMoves = [thunderShock, hiddenPower, thunderbolt, thunder, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge, doubleSlap, fakeOut, thunderPunch, disarmingVoice, voltTackle, covet, signalBeam, uproar, thunderPunch, electroweb, ironTail, snore, shockWave]
}

shuckle :: Pokemon
shuckle = Pokemon {
  pokemonIndex = 212,
  pokemonName = "Shuckle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 20,
  pokemonType1 = Bug,
  pokemonType2 = Rock,
  attack = 10,
  defence = 230,
  specialAttack = 10,
  specialDefence = 230,
  pokemonMoves = [pound, magicalLeaf, psyshock, hiddenPower, solarBeam, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, dreamEater, covet, storedPower, covet, signalBeam, uproar, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, shockWave, waterPulse]
}

heracross :: Pokemon
heracross = Pokemon {
  pokemonIndex = 213,
  pokemonName = "Heracross",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Bug,
  pokemonType2 = Fighting,
  attack = 125,
  defence = 75,
  specialAttack = 40,
  specialDefence = 95,
  pokemonMoves = [pound, hiddenPower, solarBeam, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, dreamEater, wildCharge, feintAttack, lastResort, covet, covet, bounce, uproar, lastResort, icyWind, hyperVoice, snore, shockWave, waterPulse]
}

sneasel :: Pokemon
sneasel = Pokemon {
  pokemonIndex = 214,
  pokemonName = "Sneasel",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Dark,
  pokemonType2 = Ice,
  attack = 95,
  defence = 55,
  specialAttack = 35,
  specialDefence = 75,
  pokemonMoves = [ancientPower, doubleEdge, lastResort, psyshock, hiddenPower, solarBeam, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, dreamEater, dazzlingGleam, peck, futureSight, extrasensory, secretPower, storedPower, covet, signalBeam, uproar, lastResort, zenHeadbutt, hyperVoice, snore, shockWave, waterPulse]
}

teddiursa :: Pokemon
teddiursa = Pokemon {
  pokemonIndex = 215,
  pokemonName = "Teddiursa",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 80,
  defence = 50,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [magicalLeaf, fairyWind, ancientPower, doubleEdge, lastResort, psyshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, brickBreak, flamethrower, fireBlast, aerialAce, facade, roundMove, echoedVoice, steelWing, smartStrike, gigaImpact, fly, dreamEater, dazzlingGleam, peck, futureSight, extrasensory, secretPower, storedPower, covet, signalBeam, lastResort, zenHeadbutt, hyperVoice, snore, heatWave, drainPunch, airCutter, focusPunch, shockWave, waterPulse]
}

ursaring :: Pokemon
ursaring = Pokemon {
  pokemonIndex = 216,
  pokemonName = "Ursaring",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 130,
  defence = 75,
  specialAttack = 75,
  specialDefence = 75,
  pokemonMoves = [peck, storedPower, ominousWind, psychic, futureSight, psyshock, hiddenPower, solarBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, dreamEater, uturn, dazzlingGleam, drillPeck, quickAttack, feintAttack, steelWing, zenHeadbutt, suckerPunch, synchronoise, signalBeam, zenHeadbutt, snore, heatWave, skyAttack, gigaDrain, airCutter]
}

slugma :: Pokemon
slugma = Pokemon {
  pokemonIndex = 217,
  pokemonName = "Slugma",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 40,
  defence = 40,
  specialAttack = 70,
  specialDefence = 40,
  pokemonMoves = [airSlash, peck, storedPower, ominousWind, psychic, futureSight, psyshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, gigaImpact, fly, dreamEater, uturn, dazzlingGleam, drillPeck, quickAttack, feintAttack, steelWing, zenHeadbutt, suckerPunch, synchronoise, signalBeam, foulPlay, zenHeadbutt, snore, heatWave, skyAttack, gigaDrain, airCutter]
}

magcargo :: Pokemon
magcargo = Pokemon {
  pokemonIndex = 218,
  pokemonName = "Magcargo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Fire,
  pokemonType2 = Rock,
  attack = 50,
  defence = 120,
  specialAttack = 90,
  specialDefence = 80,
  pokemonMoves = [tackle, thunderShock, takeDown, powerGem, discharge, signalBeam, thunder, hiddenPower, thunderbolt, thunder, facade, roundMove, echoedVoice, chargeBeam, wildCharge, takeDown, bodySlam, ironTail, signalBeam, electroweb, ironTail, snore, shockWave]
}

swinub :: Pokemon
swinub = Pokemon {
  pokemonIndex = 219,
  pokemonName = "Swinub",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Ice,
  pokemonType2 = Ground,
  attack = 50,
  defence = 40,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [tackle, thunderShock, thunderShock, takeDown, powerGem, discharge, signalBeam, thunder, hiddenPower, thunderbolt, thunder, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge, takeDown, bodySlam, ironTail, signalBeam, thunderPunch, firePunch, electroweb, ironTail, snore, focusPunch, shockWave]
}

piloswine :: Pokemon
piloswine = Pokemon {
  pokemonIndex = 220,
  pokemonName = "Piloswine",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Ice,
  pokemonType2 = Ground,
  attack = 100,
  defence = 80,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [thunderPunch, zapCannon, dragonPulse, firePunch, tackle, thunderShock, thunderShock, takeDown, powerGem, discharge, signalBeam, thunder, dragonPulse, hiddenPower, hyperBeam, thunderbolt, thunder, brickBreak, facade, roundMove, echoedVoice, focusBlast, chargeBeam, brutalSwing, gigaImpact, voltSwitch, bulldoze, wildCharge, takeDown, bodySlam, ironTail, signalBeam, thunderPunch, firePunch, electroweb, dragonPulse, ironTail, snore, focusPunch, shockWave, outrage]
}

corsola :: Pokemon
corsola = Pokemon {
  pokemonIndex = 221,
  pokemonName = "Corsola",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Water,
  pokemonType2 = Rock,
  attack = 55,
  defence = 95,
  specialAttack = 65,
  specialDefence = 95,
  pokemonMoves = [thunderPunch, zapCannon, dragonPulse, firePunch, tackle, thunderShock, thunderShock, takeDown, powerGem, discharge, signalBeam, thunder, dragonPulse, hiddenPower, hyperBeam, thunderbolt, thunder, brickBreak, facade, roundMove, echoedVoice, focusBlast, chargeBeam, brutalSwing, gigaImpact, voltSwitch, bulldoze, wildCharge, takeDown, bodySlam, ironTail, signalBeam, thunderPunch, firePunch, electroweb, dragonPulse, ironTail, snore, focusPunch, shockWave, outrage]
}

remoraid :: Pokemon
remoraid = Pokemon {
  pokemonIndex = 222,
  pokemonName = "Remoraid",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 65,
  defence = 35,
  specialAttack = 65,
  specialDefence = 35,
  pokemonMoves = [magicalLeaf, leafStorm, leafBlade, megaDrain, petalBlizzard, petalDance, leafStorm, venoshock, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, roundMove, energyBall, gigaImpact, infestation, dazzlingGleam, razorLeaf, secretPower, seedBomb, uproar, snore, gigaDrain, drainPunch, absorb, acid, acid, gigaDrain, moonblast]
}

octillery :: Pokemon
octillery = Pokemon {
  pokemonIndex = 223,
  pokemonName = "Octillery",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 105,
  defence = 75,
  specialAttack = 105,
  specialDefence = 75,
  pokemonMoves = [tackle, waterGun, bubble, rollout, bubbleBeam, aquaTail, playRough, doubleEdge, superpower, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, facade, roundMove, scald, surf, waterfall, slam, bodySlam, muddyWater, aquaJet, futureSight, superpower, covet, bounce, icePunch, superpower, icyWind, aquaTail, hyperVoice, ironTail, snore, knockOff, focusPunch, waterPulse, slam, bounce]
}

delibird :: Pokemon
delibird = Pokemon {
  pokemonIndex = 224,
  pokemonName = "Delibird",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Ice,
  pokemonType2 = Flying,
  attack = 55,
  defence = 45,
  specialAttack = 65,
  specialDefence = 45,
  pokemonMoves = [tackle, waterGun, bubble, rollout, bubbleBeam, aquaTail, playRough, doubleEdge, superpower, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, facade, roundMove, focusBlast, scald, gigaImpact, bulldoze, surf, waterfall, slam, bodySlam, muddyWater, aquaJet, futureSight, superpower, covet, bounce, icePunch, superpower, icyWind, aquaTail, hyperVoice, ironTail, snore, knockOff, focusPunch, waterPulse, slam, bounce]
}

mantine :: Pokemon
mantine = Pokemon {
  pokemonIndex = 225,
  pokemonName = "Mantine",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Water,
  pokemonType2 = Flying,
  attack = 40,
  defence = 70,
  specialAttack = 80,
  specialDefence = 140,
  pokemonMoves = [slam, woodHammer, rockThrow, rockThrow, feintAttack, rockTomb, rockSlide, suckerPunch, doubleEdge, stoneEdge, hammerArm, headSmash, hiddenPower, smackDown, earthquake, brickBreak, rockTomb, facade, thief, roundMove, explosion, stoneEdge, bulldoze, rockSlide, selfDestruct, headbutt, rollout, sandTomb, covet, thunderPunch, firePunch, icePunch, earthPower, foulPlay, snore, focusPunch]
}

skarmory :: Pokemon
skarmory = Pokemon {
  pokemonIndex = 226,
  pokemonName = "Skarmory",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Steel,
  pokemonType2 = Flying,
  attack = 80,
  defence = 140,
  specialAttack = 40,
  specialDefence = 70,
  pokemonMoves = [bubbleBeam, doubleSlap, bounce, hyperVoice, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, brickBreak, facade, thief, roundMove, echoedVoice, focusBlast, scald, payback, gigaImpact, bulldoze, surf, waterfall, bubbleBeam, iceBall, mudShot, waterPulse, bounce, icePunch, icyWind, hyperVoice, snore, focusPunch, waterPulse, waterGun, waterGun, bubble, bodySlam, mudShot, wakeUpSlap, hydroPump, mudBomb]
}

houndour :: Pokemon
houndour = Pokemon {
  pokemonIndex = 227,
  pokemonName = "Houndour",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Dark,
  pokemonType2 = Fire,
  attack = 60,
  defence = 30,
  specialAttack = 80,
  specialDefence = 50,
  pokemonMoves = [tackle, fairyWind, bulletSeed, megaDrain, acrobatics, uturn, gigaDrain, bounce, hiddenPower, solarBeam, aerialAce, facade, roundMove, energyBall, acrobatics, infestation, uturn, dazzlingGleam, confusion, doubleEdge, seedBomb, seedBomb, bounce, snore, gigaDrain]
}

houndoom :: Pokemon
houndoom = Pokemon {
  pokemonIndex = 228,
  pokemonName = "Houndoom",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Dark,
  pokemonType2 = Fire,
  attack = 90,
  defence = 50,
  specialAttack = 110,
  specialDefence = 80,
  pokemonMoves = [tackle, tackle, fairyWind, bulletSeed, megaDrain, acrobatics, uturn, gigaDrain, bounce, hiddenPower, solarBeam, aerialAce, facade, roundMove, energyBall, acrobatics, infestation, uturn, dazzlingGleam, confusion, doubleEdge, seedBomb, seedBomb, bounce, snore, gigaDrain]
}

kingdra :: Pokemon
kingdra = Pokemon {
  pokemonIndex = 229,
  pokemonName = "Kingdra",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Water,
  pokemonType2 = Dragon,
  attack = 95,
  defence = 95,
  specialAttack = 95,
  specialDefence = 95,
  pokemonMoves = [tackle, tackle, fairyWind, bulletSeed, megaDrain, acrobatics, uturn, gigaDrain, bounce, hiddenPower, hyperBeam, solarBeam, aerialAce, facade, roundMove, energyBall, acrobatics, gigaImpact, infestation, uturn, dazzlingGleam, confusion, doubleEdge, seedBomb, seedBomb, bounce, snore, gigaDrain]
}

phanpy :: Pokemon
phanpy = Pokemon {
  pokemonIndex = 230,
  pokemonName = "Phanpy",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 60,
  defence = 60,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [scratch, astonish, furySwipes, swift, doubleHit, lastResort, hiddenPower, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, aerialAce, facade, thief, lowSweep, roundMove, acrobatics, shadowClaw, payback, dreamEater, uturn, pursuit, slam, doubleSlap, fakeOut, covet, bounce, revenge, covet, seedBomb, bounce, gunkShot, uproar, thunderPunch, firePunch, icePunch, foulPlay, lastResort, ironTail, snore, knockOff, focusPunch, shockWave, waterPulse]
}

donphan :: Pokemon
donphan = Pokemon {
  pokemonIndex = 231,
  pokemonName = "Donphan",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 120,
  defence = 120,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [absorb, megaDrain, razorLeaf, gigaDrain, solarBeam, doubleEdge, seedBomb, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, energyBall, seedBomb, uproar, earthPower, snore, gigaDrain]
}

porygon2 :: Pokemon
porygon2 = Pokemon {
  pokemonIndex = 232,
  pokemonName = "Porygon2",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 80,
  defence = 90,
  specialAttack = 105,
  specialDefence = 95,
  pokemonMoves = [absorb, pound, megaDrain, razorLeaf, gigaDrain, bulletSeed, petalDance, solarBeam, doubleEdge, leafStorm, petalBlizzard, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, roundMove, energyBall, gigaImpact, seedBomb, uproar, earthPower, snore, gigaDrain, seedBomb]
}

stantler :: Pokemon
stantler = Pokemon {
  pokemonIndex = 233,
  pokemonName = "Stantler",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 73,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 95,
  defence = 62,
  specialAttack = 85,
  specialDefence = 65,
  pokemonMoves = [tackle, quickAttack, uproar, pursuit, ancientPower, wingAttack, uturn, airSlash, bugBuzz, hiddenPower, solarBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, dreamEater, uturn, leechLife, signalBeam, silverWind, feint, feintAttack, pursuit, doubleEdge, secretPower, bugBite, signalBeam, uproar, snore, gigaDrain, airCutter]
}

smeargle :: Pokemon
smeargle = Pokemon {
  pokemonIndex = 234,
  pokemonName = "Smeargle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 20,
  defence = 35,
  specialAttack = 20,
  specialDefence = 45,
  pokemonMoves = [waterGun, mudShot, slam, mudBomb, earthquake, muddyWater, hiddenPower, iceBeam, blizzard, earthquake, sludgeWave, sludgeBomb, facade, roundMove, scald, bulldoze, infestation, surf, waterfall, bodySlam, ancientPower, doubleKick, acidSpray, icePunch, earthPower, icyWind, aquaTail, ironTail, snore, waterPulse]
}

tyrogue :: Pokemon
tyrogue = Pokemon {
  pokemonIndex = 235,
  pokemonName = "Tyrogue",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 35,
  defence = 35,
  specialAttack = 35,
  specialDefence = 35,
  pokemonMoves = [waterGun, mudShot, slam, mudBomb, earthquake, muddyWater, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, brickBreak, sludgeWave, sludgeBomb, rockTomb, facade, thief, roundMove, focusBlast, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, infestation, surf, waterfall, bodySlam, ancientPower, doubleKick, acidSpray, icePunch, earthPower, icyWind, aquaTail, ironTail, snore, focusPunch, waterPulse]
}

hitmontop :: Pokemon
hitmontop = Pokemon {
  pokemonIndex = 236,
  pokemonName = "Hitmontop",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 95,
  defence = 95,
  specialAttack = 35,
  specialDefence = 110,
  pokemonMoves = [confusion, tackle, quickAttack, swift, psybeam, futureSight, psychic, lastResort, psyshock, hiddenPower, hyperBeam, psychic, shadowBall, facade, roundMove, echoedVoice, gigaImpact, dreamEater, dazzlingGleam, covet, storedPower, synchronoise, covet, signalBeam, lastResort, zenHeadbutt, hyperVoice, ironTail, snore, covet, bite, takeDown, doubleEdge]
}

smoochum :: Pokemon
smoochum = Pokemon {
  pokemonIndex = 237,
  pokemonName = "Smoochum",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Ice,
  pokemonType2 = Psychic,
  attack = 30,
  defence = 15,
  specialAttack = 85,
  specialDefence = 65,
  pokemonMoves = [pursuit, tackle, quickAttack, feintAttack, assurance, lastResort, hiddenPower, hyperBeam, psychic, shadowBall, facade, roundMove, echoedVoice, payback, gigaImpact, dreamEater, snarl, darkPulse, covet, storedPower, synchronoise, covet, foulPlay, lastResort, hyperVoice, ironTail, snore, covet, bite, swift, takeDown, doubleEdge]
}

elekid :: Pokemon
elekid = Pokemon {
  pokemonIndex = 238,
  pokemonName = "Elekid",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 63,
  defence = 37,
  specialAttack = 65,
  specialDefence = 55,
  pokemonMoves = [peck, astonish, pursuit, wingAttack, assurance, feintAttack, foulPlay, suckerPunch, hiddenPower, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, payback, fly, dreamEater, snarl, darkPulse, drillPeck, wingAttack, skyAttack, feintAttack, braveBird, assurance, uproar, foulPlay, icyWind, snore, heatWave, skyAttack, airCutter]
}

magby :: Pokemon
magby = Pokemon {
  pokemonIndex = 239,
  pokemonName = "Magby",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 75,
  defence = 37,
  specialAttack = 70,
  specialDefence = 55,
  pokemonMoves = [powerGem, hiddenPower, tackle, waterGun, confusion, headbutt, waterPulse, zenHeadbutt, psychic, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, roundMove, echoedVoice, focusBlast, scald, gigaImpact, bulldoze, dragonTail, dreamEater, surf, futureSight, stomp, snore, zenHeadbutt, belch, signalBeam, icePunch, foulPlay, icyWind, aquaTail, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, waterPulse]
}

miltank :: Pokemon
miltank = Pokemon {
  pokemonIndex = 240,
  pokemonName = "Miltank",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 80,
  defence = 105,
  specialAttack = 40,
  specialDefence = 70,
  pokemonMoves = [astonish, hex, psybeam, payback, shadowBall, powerGem, hiddenPower, thunderbolt, thunder, psychic, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, chargeBeam, payback, dreamEater, darkPulse, dazzlingGleam, suckerPunch, shadowSneak, ominousWind, uproar, foulPlay, icyWind, hyperVoice, snore, shockWave]
}

blissey :: Pokemon
blissey = Pokemon {
  pokemonIndex = 241,
  pokemonName = "Blissey",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 255,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 10,
  defence = 10,
  specialAttack = 75,
  specialDefence = 135,
  pokemonMoves = [hiddenPower]
}

entei :: Pokemon
entei = Pokemon {
  pokemonIndex = 243,
  pokemonName = "Entei",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 115,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 115,
  defence = 85,
  specialAttack = 90,
  specialDefence = 75,
  pokemonMoves = [astonish, tackle, confusion, assurance, stomp, psybeam, doubleHit, zenHeadbutt, crunch, psychic, psyshock, hiddenPower, thunderbolt, thunder, earthquake, psychic, shadowBall, facade, thief, roundMove, echoedVoice, energyBall, chargeBeam, bulldoze, dreamEater, dazzlingGleam, takeDown, futureSight, doubleKick, razorWind, secretPower, signalBeam, uproar, foulPlay, zenHeadbutt, hyperVoice, ironTail, snore, shockWave]
}

suicune :: Pokemon
suicune = Pokemon {
  pokemonIndex = 244,
  pokemonName = "Suicune",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 75,
  defence = 115,
  specialAttack = 90,
  specialDefence = 115,
  pokemonMoves = [tackle, selfDestruct, bugBite, takeDown, rapidSpin, payback, explosion, doubleEdge, venoshock, hiddenPower, solarBeam, earthquake, rockTomb, facade, roundMove, explosion, payback, bulldoze, rockSlide, pinMissile, swift, sandTomb, revenge, doubleEdge, bugBite, drillRun, snore, gigaDrain]
}

larvitar :: Pokemon
larvitar = Pokemon {
  pokemonIndex = 245,
  pokemonName = "Larvitar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Rock,
  pokemonType2 = Ground,
  attack = 64,
  defence = 50,
  specialAttack = 45,
  specialDefence = 50,
  pokemonMoves = [mirrorShot, mirrorShot, zapCannon, tackle, selfDestruct, bugBite, selfDestruct, bugBite, takeDown, rapidSpin, payback, explosion, doubleEdge, zapCannon, venoshock, hiddenPower, hyperBeam, solarBeam, earthquake, rockTomb, facade, roundMove, explosion, payback, gigaImpact, voltSwitch, bulldoze, rockSlide, flashCannon, pinMissile, swift, sandTomb, revenge, doubleEdge, bugBite, signalBeam, drillRun, snore, gigaDrain]
}

pupitar :: Pokemon
pupitar = Pokemon {
  pokemonIndex = 246,
  pokemonName = "Pupitar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Rock,
  pokemonType2 = Ground,
  attack = 84,
  defence = 70,
  specialAttack = 65,
  specialDefence = 70,
  pokemonMoves = [rage, rollout, pursuit, ancientPower, bodySlam, drillRun, takeDown, dig, doubleEdge, airSlash, dragonRush, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, earthquake, shadowBall, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, chargeBeam, bulldoze, rockSlide, poisonJab, dreamEater, wildCharge, ancientPower, bite, headbutt, astonish, snore, secretPower, hex, drillRun, lastResort, aquaTail, zenHeadbutt, ironTail, bind, snore, airCutter, shockWave, waterPulse]
}

tyranitar :: Pokemon
tyranitar = Pokemon {
  pokemonIndex = 247,
  pokemonName = "Tyranitar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Rock,
  pokemonType2 = Dark,
  attack = 134,
  defence = 110,
  specialAttack = 95,
  specialDefence = 100,
  pokemonMoves = [poisonSting, knockOff, quickAttack, furyCutter, feintAttack, acrobatics, slash, uturn, xScissor, skyUppercut, venoshock, hiddenPower, earthquake, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, steelWing, falseSwipe, acrobatics, payback, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, uturn, darkPulse, metalClaw, wingAttack, razorWind, sandTomb, doubleEdge, feint, nightSlash, crossPoison, rockClimb, poisonTail, bugBite, earthPower, aquaTail, ironTail, snore, knockOff, airCutter]
}

lugia :: Pokemon
lugia = Pokemon {
  pokemonIndex = 248,
  pokemonName = "Lugia",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 106,
  pokemonType1 = Psychic,
  pokemonType2 = Flying,
  attack = 90,
  defence = 130,
  specialAttack = 90,
  specialDefence = 154,
  pokemonMoves = [thunderFang, iceFang, fireFang, tackle, bind, rockThrow, rockTomb, rage, smackDown, dragonBreath, slam, rockSlide, crunch, ironTail, dig, stoneEdge, doubleEdge, hiddenPower, hyperBeam, smackDown, earthquake, rockTomb, facade, roundMove, brutalSwing, explosion, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, flashCannon, darkPulse, rollout, rockBlast, rockClimb, ironHead, earthPower, aquaTail, dragonPulse, ironTail, bind, snore, sandTomb]
}

ho :: Pokemon
ho = Pokemon {
  pokemonIndex = 249,
  pokemonName = "Ho",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 106,
  pokemonType1 = Fire,
  pokemonType2 = Flying,
  attack = 130,
  defence = 90,
  specialAttack = 110,
  specialDefence = 154,
  pokemonMoves = [thunderFang, iceFang, fireFang, tackle, bind, rockThrow, rockTomb, rage, smackDown, dragonBreath, slam, rockSlide, crunch, ironTail, dig, stoneEdge, doubleEdge, hiddenPower, hyperBeam, smackDown, earthquake, rockTomb, facade, roundMove, brutalSwing, explosion, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, flashCannon, darkPulse, rollout, rockBlast, rockClimb, ironHead, earthPower, aquaTail, dragonPulse, ironTail, bind, snore, sandTomb]
}

celebi :: Pokemon
celebi = Pokemon {
  pokemonIndex = 250,
  pokemonName = "Celebi",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Psychic,
  pokemonType2 = Grass,
  attack = 100,
  defence = 100,
  specialAttack = 100,
  specialDefence = 100,
  pokemonMoves = [iceFang, fireFang, thunderFang, tackle, bite, lick, headbutt, rage, playRough, payback, crunch, hiddenPower, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, sludgeBomb, fireBlast, facade, thief, roundMove, overheat, payback, bulldoze, wildCharge, snarl, dazzlingGleam, feintAttack, crunch, snore, smellingSalts, closeCombat, iceFang, fireFang, thunderFang, focusPunch, doubleEdge, covet, thunderPunch, firePunch, icePunch, lastResort, superpower, hyperVoice, snore, focusPunch, shockWave, waterPulse]
}

treecko :: Pokemon
treecko = Pokemon {
  pokemonIndex = 251,
  pokemonName = "Treecko",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 45,
  defence = 35,
  specialAttack = 65,
  specialDefence = 55,
  pokemonMoves = [outrage, iceFang, fireFang, thunderFang, tackle, bite, lick, headbutt, rage, playRough, payback, crunch, outrage, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, thief, roundMove, overheat, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, wildCharge, snarl, dazzlingGleam, feintAttack, crunch, snore, smellingSalts, closeCombat, iceFang, fireFang, thunderFang, focusPunch, doubleEdge, covet, thunderPunch, firePunch, icePunch, lastResort, superpower, hyperVoice, ironTail, snore, focusPunch, shockWave, waterPulse, outrage]
}

grovyle :: Pokemon
grovyle = Pokemon {
  pokemonIndex = 252,
  pokemonName = "Grovyle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 65,
  defence = 45,
  specialAttack = 85,
  specialDefence = 65,
  pokemonMoves = [fellStinger, hydroPump, waterGun, tackle, poisonSting, bubble, rollout, revenge, brine, pinMissile, takeDown, aquaTail, poisonJab, hydroPump, fellStinger, venoshock, hiddenPower, iceBeam, blizzard, shadowBall, sludgeWave, sludgeBomb, facade, roundMove, scald, explosion, payback, poisonJab, surf, waterfall, bubbleBeam, astonish, signalBeam, aquaJet, waterPulse, brine, acidSpray, signalBeam, bounce, icyWind, aquaTail, snore, shockWave, waterPulse]
}

sceptile :: Pokemon
sceptile = Pokemon {
  pokemonIndex = 253,
  pokemonName = "Sceptile",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 85,
  defence = 65,
  specialAttack = 105,
  specialDefence = 85,
  pokemonMoves = [feint, bulletPunch, quickAttack, pursuit, falseSwipe, metalClaw, furyCutter, slash, razorWind, xScissor, nightSlash, doubleHit, ironHead, feint, venoshock, hiddenPower, hyperBeam, brickBreak, aerialAce, facade, thief, roundMove, steelWing, falseSwipe, brutalSwing, acrobatics, gigaImpact, xScissor, uturn, flashCannon, razorWind, silverWind, bugBuzz, nightSlash, steelWing, bugBite, ironHead, superpower, snore, knockOff, airCutter, vacuumWave, wingAttack, airSlash]
}

torchic :: Pokemon
torchic = Pokemon {
  pokemonIndex = 254,
  pokemonName = "Torchic",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 60,
  defence = 40,
  specialAttack = 70,
  specialDefence = 50,
  pokemonMoves = [feint, bulletPunch, quickAttack, pursuit, falseSwipe, metalClaw, furyCutter, slash, razorWind, xScissor, nightSlash, doubleHit, ironHead, feint, venoshock, hiddenPower, hyperBeam, brickBreak, aerialAce, facade, thief, roundMove, steelWing, falseSwipe, brutalSwing, acrobatics, gigaImpact, xScissor, uturn, flashCannon, razorWind, silverWind, bugBuzz, nightSlash, steelWing, bugBite, ironHead, superpower, snore, knockOff, airCutter, vacuumWave, wingAttack, airSlash]
}

combusken :: Pokemon
combusken = Pokemon {
  pokemonIndex = 255,
  pokemonName = "Combusken",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Fire,
  pokemonType2 = Fighting,
  attack = 85,
  defence = 60,
  specialAttack = 85,
  specialDefence = 60,
  pokemonMoves = [constrict, rollout, wrap, struggleBug, rockThrow, rockSlide, bugBite, stoneEdge, venoshock, hiddenPower, smackDown, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, roundMove, stoneEdge, bulldoze, rockSlide, infestation, knockOff, sandTomb, mudSlap, acid, rockBlast, bugBite, earthPower, bind, snore, knockOff]
}

blaziken :: Pokemon
blaziken = Pokemon {
  pokemonIndex = 256,
  pokemonName = "Blaziken",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Fire,
  pokemonType2 = Fighting,
  attack = 120,
  defence = 70,
  specialAttack = 110,
  specialDefence = 70,
  pokemonMoves = [armThrust, bulletSeed, nightSlash, tackle, hornAttack, feint, aerialAce, chipAway, furyAttack, brickBreak, pinMissile, takeDown, megahorn, closeCombat, venoshock, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, falseSwipe, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, revenge, pursuit, doubleEdge, focusPunch, megahorn, rockBlast, bugBite, snore, knockOff, focusPunch]
}

mudkip :: Pokemon
mudkip = Pokemon {
  pokemonIndex = 257,
  pokemonName = "Mudkip",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 70,
  defence = 50,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [armThrust, bulletSeed, nightSlash, tackle, hornAttack, feint, aerialAce, chipAway, furyAttack, brickBreak, pinMissile, takeDown, megahorn, closeCombat, venoshock, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, falseSwipe, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, revenge, pursuit, doubleEdge, focusPunch, megahorn, rockBlast, bugBite, snore, knockOff, focusPunch]
}

marshtomp :: Pokemon
marshtomp = Pokemon {
  pokemonIndex = 258,
  pokemonName = "Marshtomp",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Water,
  pokemonType2 = Ground,
  attack = 85,
  defence = 70,
  specialAttack = 60,
  specialDefence = 70,
  pokemonMoves = [scratch, quickAttack, feintAttack, icyWind, furySwipes, metalClaw, slash, iceShard, hiddenPower, iceBeam, blizzard, shadowBall, brickBreak, aerialAce, facade, thief, lowSweep, roundMove, falseSwipe, shadowClaw, payback, xScissor, poisonJab, dreamEater, surf, snarl, darkPulse, bite, crushClaw, fakeOut, doubleHit, pursuit, iceShard, icePunch, avalanche, feint, icicleCrash, throatChop, icePunch, foulPlay, icyWind, ironTail, snore, knockOff, focusPunch]
}

swampert :: Pokemon
swampert = Pokemon {
  pokemonIndex = 259,
  pokemonName = "Swampert",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Water,
  pokemonType2 = Ground,
  attack = 110,
  defence = 90,
  specialAttack = 85,
  specialDefence = 90,
  pokemonMoves = [covet, scratch, lick, furySwipes, feintAttack, slash, snore, thrash, hiddenPower, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, shadowClaw, payback, bulldoze, rockSlide, crunch, takeDown, metalClaw, crossChop, doubleEdge, closeCombat, nightSlash, chipAway, playRough, covet, seedBomb, gunkShot, thunderPunch, firePunch, icePunch, lastResort, superpower, hyperVoice, snore, focusPunch]
}

poochyena :: Pokemon
poochyena = Pokemon {
  pokemonIndex = 260,
  pokemonName = "Poochyena",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Dark,
  pokemonType2 = None,
  attack = 55,
  defence = 35,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [hammerArm, covet, scratch, lick, furySwipes, feintAttack, slash, snore, thrash, hammerArm, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, crunch, takeDown, metalClaw, crossChop, doubleEdge, closeCombat, nightSlash, chipAway, playRough, covet, seedBomb, gunkShot, uproar, thunderPunch, firePunch, icePunch, lastResort, superpower, hyperVoice, snore, focusPunch]
}

mightyena :: Pokemon
mightyena = Pokemon {
  pokemonIndex = 261,
  pokemonName = "Mightyena",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Dark,
  pokemonType2 = None,
  attack = 90,
  defence = 70,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [smog, ember, rockThrow, incinerate, clearSmog, ancientPower, flameBurst, rockSlide, lavaPlume, bodySlam, flamethrower, earthPower, hiddenPower, flamethrower, fireBlast, rockTomb, facade, flameCharge, roundMove, overheat, rockSlide, infestation, heatWave, rollout, inferno, earthPower, earthPower, snore, heatWave]
}

zigzagoon :: Pokemon
zigzagoon = Pokemon {
  pokemonIndex = 262,
  pokemonName = "Zigzagoon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 38,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 30,
  defence = 41,
  specialAttack = 30,
  specialDefence = 41,
  pokemonMoves = [earthPower, smog, ember, rockThrow, ember, rockThrow, incinerate, clearSmog, ancientPower, flameBurst, rockSlide, lavaPlume, bodySlam, flamethrower, earthPower, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, flamethrower, fireBlast, rockTomb, facade, flameCharge, roundMove, overheat, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, infestation, heatWave, rollout, inferno, earthPower, earthPower, snore, heatWave]
}

linoone :: Pokemon
linoone = Pokemon {
  pokemonIndex = 263,
  pokemonName = "Linoone",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 78,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 70,
  defence = 61,
  specialAttack = 50,
  specialDefence = 61,
  pokemonMoves = [tackle, powderSnow, mudSlap, mudBomb, icyWind, iceShard, takeDown, earthquake, blizzard, hiddenPower, iceBeam, blizzard, earthquake, rockTomb, facade, roundMove, bulldoze, rockSlide, takeDown, bite, bodySlam, ancientPower, mudShot, icicleSpear, doubleEdge, mudShot, avalanche, icicleCrash, freezeDry, earthPower, superpower, icyWind, snore]
}

wurmple :: Pokemon
wurmple = Pokemon {
  pokemonIndex = 264,
  pokemonName = "Wurmple",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 45,
  defence = 35,
  specialAttack = 20,
  specialDefence = 30,
  pokemonMoves = [furyAttack, ancientPower, peck, powderSnow, powderSnow, mudSlap, mudBomb, icyWind, iceFang, takeDown, thrash, earthquake, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, roundMove, gigaImpact, stoneEdge, bulldoze, rockSlide, takeDown, bite, bodySlam, ancientPower, mudShot, icicleSpear, doubleEdge, mudShot, avalanche, icicleCrash, freezeDry, earthPower, superpower, icyWind, snore, tackle, iceShard]
}

silcoon :: Pokemon
silcoon = Pokemon {
  pokemonIndex = 265,
  pokemonName = "Silcoon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 35,
  defence = 55,
  specialAttack = 25,
  specialDefence = 25,
  pokemonMoves = [tackle, bubble, bubbleBeam, ancientPower, spikeCannon, brine, rockBlast, powerGem, earthPower, hiddenPower, iceBeam, blizzard, earthquake, psychic, shadowBall, rockTomb, facade, roundMove, scald, explosion, stoneEdge, bulldoze, rockSlide, surf, icicleSpear, waterPulse, headSmash, liquidation, earthPower, icyWind, snore, waterPulse]
}

beautifly :: Pokemon
beautifly = Pokemon {
  pokemonIndex = 266,
  pokemonName = "Beautifly",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 70,
  defence = 50,
  specialAttack = 100,
  specialDefence = 50,
  pokemonMoves = [waterGun, psybeam, auroraBeam, bubbleBeam, waterPulse, signalBeam, iceBeam, bulletSeed, hydroPump, hyperBeam, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, psychic, flamethrower, fireBlast, facade, thief, roundMove, scald, chargeBeam, surf, waterfall, auroraBeam, octazooka, rockBlast, snore, mudShot, swift, acidSpray, waterPulse, signalBeam, seedBomb, bounce, gunkShot, icyWind, snore, waterPulse]
}

cascoon :: Pokemon
cascoon = Pokemon {
  pokemonIndex = 267,
  pokemonName = "Cascoon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 35,
  defence = 55,
  specialAttack = 25,
  specialDefence = 25,
  pokemonMoves = [octazooka, gunkShot, rockBlast, waterGun, constrict, psybeam, auroraBeam, constrict, psybeam, auroraBeam, bubbleBeam, signalBeam, iceBeam, bulletSeed, hydroPump, hyperBeam, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, psychic, sludgeWave, flamethrower, sludgeBomb, fireBlast, facade, thief, roundMove, energyBall, scald, chargeBeam, payback, gigaImpact, flashCannon, surf, waterfall, auroraBeam, octazooka, rockBlast, snore, mudShot, swift, acidSpray, waterPulse, signalBeam, seedBomb, bounce, gunkShot, icyWind, bind, snore, waterPulse, waterPulse]
}

dustox :: Pokemon
dustox = Pokemon {
  pokemonIndex = 268,
  pokemonName = "Dustox",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 50,
  defence = 70,
  specialAttack = 50,
  specialDefence = 90,
  pokemonMoves = [drillPeck, hiddenPower, iceBeam, blizzard, brickBreak, aerialAce, facade, thief, roundMove, brutalSwing, fly, frostBreath, auroraBeam, quickAttack, futureSight, rapidSpin, iceBall, iceShard, icePunch, fakeOut, icyWind, freezeDry, signalBeam, seedBomb, bounce, gunkShot, icePunch, icyWind, snore, skyAttack, focusPunch, waterPulse]
}

lotad :: Pokemon
lotad = Pokemon {
  pokemonIndex = 269,
  pokemonName = "Lotad",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Water,
  pokemonType2 = Grass,
  attack = 30,
  defence = 30,
  specialAttack = 40,
  specialDefence = 50,
  pokemonMoves = [psybeam, bulletSeed, signalBeam, tackle, bubble, bubbleBeam, bubbleBeam, wingAttack, headbutt, waterPulse, takeDown, airSlash, bounce, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, aerialAce, facade, roundMove, scald, acrobatics, gigaImpact, bulldoze, rockSlide, surf, waterfall, twister, hydroPump, slam, signalBeam, signalBeam, ironHead, seedBomb, bounce, gunkShot, icyWind, aquaTail, snore, waterPulse]
}

lombre :: Pokemon
lombre = Pokemon {
  pokemonIndex = 270,
  pokemonName = "Lombre",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Water,
  pokemonType2 = Grass,
  attack = 50,
  defence = 50,
  specialAttack = 60,
  specialDefence = 70,
  pokemonMoves = [peck, metalClaw, airCutter, furyAttack, feint, swift, steelWing, slash, airSlash, nightSlash, hiddenPower, rockTomb, aerialAce, facade, thief, roundMove, steelWing, skyDrop, payback, fly, rockSlide, xScissor, flashCannon, darkPulse, drillPeck, pursuit, skyAttack, braveBird, assurance, ironHead, icyWind, snore, skyAttack, airCutter]
}

ludicolo :: Pokemon
ludicolo = Pokemon {
  pokemonIndex = 271,
  pokemonName = "Ludicolo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Water,
  pokemonType2 = Grass,
  attack = 70,
  defence = 70,
  specialAttack = 90,
  specialDefence = 100,
  pokemonMoves = [ember, smog, bite, fireFang, feintAttack, foulPlay, flamethrower, crunch, inferno, hiddenPower, solarBeam, shadowBall, flamethrower, sludgeBomb, fireBlast, facade, flameCharge, thief, roundMove, overheat, payback, dreamEater, snarl, darkPulse, fireSpin, rage, pursuit, fireFang, thunderFang, feint, suckerPunch, uproar, foulPlay, hyperVoice, ironTail, snore, heatWave]
}

seedot :: Pokemon
seedot = Pokemon {
  pokemonIndex = 272,
  pokemonName = "Seedot",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 40,
  defence = 50,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [inferno, thunderFang, ember, smog, smog, bite, fireFang, feintAttack, foulPlay, flamethrower, crunch, inferno, hiddenPower, hyperBeam, solarBeam, shadowBall, flamethrower, sludgeBomb, fireBlast, facade, flameCharge, thief, roundMove, overheat, payback, gigaImpact, dreamEater, snarl, darkPulse, fireSpin, rage, pursuit, fireFang, thunderFang, feint, suckerPunch, uproar, foulPlay, hyperVoice, ironTail, snore, heatWave]
}

nuzleaf :: Pokemon
nuzleaf = Pokemon {
  pokemonIndex = 273,
  pokemonName = "Nuzleaf",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Grass,
  pokemonType2 = Dark,
  attack = 70,
  defence = 40,
  specialAttack = 60,
  specialDefence = 40,
  pokemonMoves = [inferno, thunderFang, ember, smog, smog, bite, fireFang, feintAttack, foulPlay, flamethrower, crunch, inferno, hiddenPower, hyperBeam, solarBeam, shadowBall, flamethrower, sludgeBomb, fireBlast, facade, flameCharge, thief, roundMove, overheat, payback, gigaImpact, dreamEater, snarl, darkPulse, fireSpin, rage, pursuit, fireFang, thunderFang, feint, suckerPunch, uproar, foulPlay, hyperVoice, ironTail, snore, heatWave]
}

shiftry :: Pokemon
shiftry = Pokemon {
  pokemonIndex = 274,
  pokemonName = "Shiftry",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Grass,
  pokemonType2 = Dark,
  attack = 100,
  defence = 60,
  specialAttack = 90,
  specialDefence = 60,
  pokemonMoves = [hydroPump, bubble, waterGun, waterGun, twister, bubbleBeam, brine, dragonPulse, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, scald, gigaImpact, flashCannon, surf, waterfall, dracoMeteor, auroraBeam, octazooka, dragonBreath, signalBeam, razorWind, muddyWater, waterPulse, clearSmog, outrage, signalBeam, ironHead, bounce, icyWind, dragonPulse, snore, waterPulse, outrage]
}

taillow :: Pokemon
taillow = Pokemon {
  pokemonIndex = 275,
  pokemonName = "Taillow",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 55,
  defence = 30,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [tackle, rollout, slam, takeDown, lastResort, doubleEdge, hiddenPower, earthquake, rockTomb, facade, roundMove, echoedVoice, bulldoze, rockSlide, bodySlam, ancientPower, snore, iceShard, headSmash, mudSlap, playRough, seedBomb, gunkShot, earthPower, lastResort, superpower, hyperVoice, ironTail, snore, knockOff]
}

swellow :: Pokemon
swellow = Pokemon {
  pokemonIndex = 276,
  pokemonName = "Swellow",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 85,
  defence = 60,
  specialAttack = 75,
  specialDefence = 50,
  pokemonMoves = [furyAttack, fireFang, thunderFang, hornAttack, bulldoze, rapidSpin, rollout, assurance, knockOff, slam, earthquake, gigaImpact, hiddenPower, hyperBeam, earthquake, rockTomb, facade, roundMove, echoedVoice, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, bodySlam, ancientPower, snore, iceShard, headSmash, mudSlap, playRough, seedBomb, bounce, gunkShot, earthPower, lastResort, superpower, hyperVoice, ironTail, snore, knockOff, tackle, takeDown, lastResort, doubleEdge]
}

wingull :: Pokemon
wingull = Pokemon {
  pokemonIndex = 277,
  pokemonName = "Wingull",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Water,
  pokemonType2 = Flying,
  attack = 30,
  defence = 30,
  specialAttack = 55,
  specialDefence = 30,
  pokemonMoves = [zapCannon, tackle, psybeam, signalBeam, discharge, triAttack, zapCannon, hyperBeam, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, aerialAce, facade, thief, roundMove, chargeBeam, gigaImpact, dreamEater, signalBeam, foulPlay, lastResort, electroweb, icyWind, zenHeadbutt, ironTail, snore, shockWave]
}

pelipper :: Pokemon
pelipper = Pokemon {
  pokemonIndex = 278,
  pokemonName = "Pelipper",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Water,
  pokemonType2 = Flying,
  attack = 50,
  defence = 100,
  specialAttack = 95,
  specialDefence = 70,
  pokemonMoves = [tackle, astonish, stomp, takeDown, zenHeadbutt, jumpKick, psyshock, hiddenPower, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, facade, thief, roundMove, energyBall, chargeBeam, gigaImpact, bulldoze, dreamEater, wildCharge, bite, extrasensory, thrash, doubleKick, zenHeadbutt, megahorn, rage, signalBeam, bounce, uproar, lastResort, zenHeadbutt, ironTail, snore, shockWave]
}

kirlia :: Pokemon
kirlia = Pokemon {
  pokemonIndex = 280,
  pokemonName = "Kirlia",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 38,
  pokemonType1 = Psychic,
  pokemonType2 = Fairy,
  attack = 35,
  defence = 35,
  specialAttack = 65,
  specialDefence = 55,
  pokemonMoves = [tackle, fakeOut, hiddenPower, earthquake, brickBreak, facade, thief, lowSweep, roundMove, bulldoze, rockSlide, rapidSpin, highJumpKick, machPunch, vacuumWave, bulletPunch, pursuit, feint, covet, uproar, snore]
}

gardevoir :: Pokemon
gardevoir = Pokemon {
  pokemonIndex = 281,
  pokemonName = "Gardevoir",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 68,
  pokemonType1 = Psychic,
  pokemonType2 = Fairy,
  attack = 65,
  defence = 65,
  specialAttack = 125,
  specialDefence = 115,
  pokemonMoves = [rollingKick, closeCombat, revenge, pursuit, quickAttack, pursuit, quickAttack, rapidSpin, feint, tripleKick, closeCombat, hiddenPower, earthquake, brickBreak, aerialAce, facade, thief, lowSweep, roundMove, stoneEdge, bulldoze, rockSlide, rapidSpin, highJumpKick, machPunch, vacuumWave, bulletPunch, pursuit, feint, covet, snore, tackle, fakeOut]
}

surskit :: Pokemon
surskit = Pokemon {
  pokemonIndex = 282,
  pokemonName = "Surskit",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Bug,
  pokemonType2 = Water,
  attack = 30,
  defence = 32,
  specialAttack = 50,
  specialDefence = 52,
  pokemonMoves = [pound, lick, powderSnow, confusion, heartStamp, avalanche, psychic, blizzard, psyshock, hiddenPower, iceBeam, blizzard, psychic, shadowBall, facade, thief, roundMove, echoedVoice, payback, frostBreath, dreamEater, fakeOut, icePunch, wakeUpSlap, covet, signalBeam, uproar, icePunch, icyWind, zenHeadbutt, snore, waterPulse]
}

masquerain :: Pokemon
masquerain = Pokemon {
  pokemonIndex = 283,
  pokemonName = "Masquerain",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 60,
  defence = 62,
  specialAttack = 100,
  specialDefence = 82,
  pokemonMoves = [quickAttack, thunderShock, swift, shockWave, thunderPunch, discharge, thunderbolt, thunder, hiddenPower, thunderbolt, thunder, psychic, brickBreak, facade, thief, roundMove, chargeBeam, voltSwitch, wildCharge, karateChop, rollingKick, crossChop, firePunch, icePunch, dynamicPunch, feint, hammerArm, focusPunch, covet, dualChop, signalBeam, uproar, thunderPunch, firePunch, icePunch, electroweb, snore, focusPunch, shockWave]
}

shroomish :: Pokemon
shroomish = Pokemon {
  pokemonIndex = 284,
  pokemonName = "Shroomish",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 40,
  defence = 60,
  specialAttack = 40,
  specialDefence = 60,
  pokemonMoves = [smog, ember, feintAttack, fireSpin, clearSmog, flameBurst, firePunch, lavaPlume, flamethrower, fireBlast, hiddenPower, psychic, brickBreak, flamethrower, fireBlast, facade, flameCharge, thief, roundMove, overheat, karateChop, megaPunch, crossChop, thunderPunch, machPunch, dynamicPunch, flareBlitz, ironTail, belch, covet, dualChop, uproar, thunderPunch, firePunch, ironTail, snore, heatWave, focusPunch]
}

breloom :: Pokemon
breloom = Pokemon {
  pokemonIndex = 285,
  pokemonName = "Breloom",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Grass,
  pokemonType2 = Fighting,
  attack = 130,
  defence = 80,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [tackle, stomp, rollout, bodySlam, zenHeadbutt, wakeUpSlap, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, rockTomb, facade, roundMove, echoedVoice, focusBlast, gigaImpact, bulldoze, rockSlide, surf, dizzyPunch, hammerArm, doubleEdge, heartStamp, belch, ironHead, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, ironTail, snore, focusPunch, shockWave, waterPulse]
}

slakoth :: Pokemon
slakoth = Pokemon {
  pokemonIndex = 286,
  pokemonName = "Slakoth",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 60,
  defence = 60,
  specialAttack = 35,
  specialDefence = 35,
  pokemonMoves = [doubleEdge, pound, doubleSlap, takeDown, eggBomb, doubleEdge, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, bulldoze, rockSlide, dreamEater, wildCharge, dazzlingGleam, lastResort, mudBomb, covet, thunderPunch, firePunch, icePunch, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse]
}

vigoroth :: Pokemon
vigoroth = Pokemon {
  pokemonIndex = 287,
  pokemonName = "Vigoroth",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 80,
  defence = 80,
  specialAttack = 55,
  specialDefence = 55,
  pokemonMoves = [extrasensory, discharge, bite, thunderShock, quickAttack, spark, crunch, thunderFang, discharge, extrasensory, thunder, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, facade, roundMove, chargeBeam, gigaImpact, voltSwitch, bulldoze, wildCharge, snarl, signalBeam, ironHead, ironTail, snore, shockWave]
}

slaking :: Pokemon
slaking = Pokemon {
  pokemonIndex = 288,
  pokemonName = "Slaking",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 150,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 160,
  defence = 100,
  specialAttack = 95,
  specialDefence = 65,
  pokemonMoves = [sacredFire, extrasensory, lavaPlume, bite, ember, fireSpin, stomp, flamethrower, fireFang, lavaPlume, extrasensory, fireBlast, hiddenPower, hyperBeam, solarBeam, shadowBall, flamethrower, fireBlast, facade, flameCharge, roundMove, overheat, gigaImpact, stoneEdge, bulldoze, snarl, ironHead, ironTail, snore, heatWave]
}

nincada :: Pokemon
nincada = Pokemon {
  pokemonIndex = 289,
  pokemonName = "Nincada",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 31,
  pokemonType1 = Bug,
  pokemonType2 = Ground,
  attack = 45,
  defence = 90,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [bite, bubbleBeam, bubbleBeam, gust, auroraBeam, iceFang, extrasensory, hydroPump, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, shadowBall, facade, roundMove, scald, gigaImpact, bulldoze, surf, snarl, waterfall, signalBeam, ironHead, icyWind, ironTail, snore, waterPulse]
}

ninjask :: Pokemon
ninjask = Pokemon {
  pokemonIndex = 290,
  pokemonName = "Ninjask",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 61,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 90,
  defence = 45,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [bite, chipAway, rockSlide, thrash, darkPulse, payback, crunch, earthquake, stoneEdge, hyperBeam, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, roundMove, payback, stoneEdge, bulldoze, rockSlide, snarl, darkPulse, pursuit, stomp, outrage, ancientPower, assurance, ironHead, ironTail, ironHead, uproar, earthPower, superpower, ironTail, snore, outrage]
}

shedinja :: Pokemon
shedinja = Pokemon {
  pokemonIndex = 291,
  pokemonName = "Shedinja",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 1,
  pokemonType1 = Bug,
  pokemonType2 = Ghost,
  attack = 90,
  defence = 45,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [bite, chipAway, rockSlide, thrash, darkPulse, payback, crunch, earthquake, stoneEdge, hyperBeam, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, roundMove, payback, stoneEdge, bulldoze, rockSlide, snarl, darkPulse, pursuit, stomp, outrage, ancientPower, assurance, ironHead, ironTail, ironHead, uproar, earthPower, superpower, ironTail, snore, outrage]
}

whismur :: Pokemon
whismur = Pokemon {
  pokemonIndex = 292,
  pokemonName = "Whismur",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 64,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 51,
  defence = 23,
  specialAttack = 51,
  specialDefence = 23,
  pokemonMoves = [thunderFang, iceFang, fireFang, bite, chipAway, rockSlide, thrash, darkPulse, payback, crunch, earthquake, stoneEdge, hyperBeam, gigaImpact, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, focusBlast, brutalSwing, shadowClaw, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, surf, snarl, darkPulse, pursuit, stomp, outrage, ancientPower, assurance, ironHead, ironTail, ironHead, uproar, thunderPunch, firePunch, icePunch, earthPower, foulPlay, superpower, aquaTail, dragonPulse, ironTail, snore, focusPunch, shockWave, waterPulse, outrage]
}

loudred :: Pokemon
loudred = Pokemon {
  pokemonIndex = 293,
  pokemonName = "Loudred",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 84,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 71,
  defence = 43,
  specialAttack = 71,
  specialDefence = 43,
  pokemonMoves = [thunderFang, iceFang, fireFang, bite, chipAway, rockSlide, thrash, darkPulse, payback, crunch, earthquake, stoneEdge, hyperBeam, gigaImpact, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, focusBlast, brutalSwing, shadowClaw, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, surf, snarl, darkPulse, pursuit, stomp, outrage, ancientPower, assurance, ironHead, ironTail, ironHead, uproar, thunderPunch, firePunch, icePunch, earthPower, foulPlay, superpower, aquaTail, dragonPulse, ironTail, snore, focusPunch, shockWave, waterPulse, outrage]
}

exploud :: Pokemon
exploud = Pokemon {
  pokemonIndex = 294,
  pokemonName = "Exploud",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 104,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 91,
  defence = 63,
  specialAttack = 91,
  specialDefence = 73,
  pokemonMoves = [weatherBall, gust, dragonRush, extrasensory, hydroPump, aeroblast, ancientPower, futureSight, skyAttack, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, aerialAce, facade, roundMove, echoedVoice, steelWing, chargeBeam, skyDrop, gigaImpact, fly, bulldoze, dragonTail, dreamEater, surf, waterfall, signalBeam, ironHead, earthPower, icyWind, aquaTail, zenHeadbutt, dragonPulse, hyperVoice, ironTail, snore, skyAttack, gigaDrain, airCutter, shockWave, waterPulse]
}

makuhita :: Pokemon
makuhita = Pokemon {
  pokemonIndex = 295,
  pokemonName = "Makuhita",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 72,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 60,
  defence = 30,
  specialAttack = 20,
  specialDefence = 30,
  pokemonMoves = [weatherBall, gust, braveBird, extrasensory, fireBlast, sacredFire, ancientPower, futureSight, skyAttack, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, flamethrower, fireBlast, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, steelWing, chargeBeam, skyDrop, gigaImpact, fly, bulldoze, dreamEater, signalBeam, ironHead, earthPower, zenHeadbutt, hyperVoice, snore, heatWave, skyAttack, gigaDrain, airCutter, shockWave]
}

hariyama :: Pokemon
hariyama = Pokemon {
  pokemonIndex = 296,
  pokemonName = "Hariyama",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 144,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 120,
  defence = 60,
  specialAttack = 40,
  specialDefence = 60,
  pokemonMoves = [confusion, magicalLeaf, ancientPower, futureSight, leafStorm, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, aerialAce, facade, roundMove, echoedVoice, energyBall, chargeBeam, gigaImpact, dreamEater, uturn, dazzlingGleam, signalBeam, seedBomb, uproar, earthPower, lastResort, zenHeadbutt, snore, gigaDrain, shockWave, waterPulse]
}

azurill :: Pokemon
azurill = Pokemon {
  pokemonIndex = 297,
  pokemonName = "Azurill",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Normal,
  pokemonType2 = Fairy,
  attack = 20,
  defence = 40,
  specialAttack = 20,
  specialDefence = 40,
  pokemonMoves = [pound, absorb, quickAttack, megaDrain, pursuit, gigaDrain, slam, energyBall, hiddenPower, solarBeam, brickBreak, rockTomb, aerialAce, facade, roundMove, energyBall, acrobatics, rockSlide, frenzyPlant, crunch, dragonBreath, crushClaw, doubleKick, magicalLeaf, leafStorm, razorWind, bulletSeed, seedBomb, thunderPunch, ironTail, snore, gigaDrain, drainPunch, focusPunch]
}

nosepass :: Pokemon
nosepass = Pokemon {
  pokemonIndex = 298,
  pokemonName = "Nosepass",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Rock,
  pokemonType2 = None,
  attack = 45,
  defence = 135,
  specialAttack = 45,
  specialDefence = 90,
  pokemonMoves = [furyCutter, pound, absorb, quickAttack, absorb, quickAttack, megaDrain, pursuit, leafBlade, slam, xScissor, falseSwipe, leafStorm, hiddenPower, solarBeam, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, energyBall, falseSwipe, acrobatics, rockSlide, xScissor, frenzyPlant, crunch, dragonBreath, crushClaw, doubleKick, magicalLeaf, leafStorm, razorWind, bulletSeed, seedBomb, thunderPunch, ironTail, snore, gigaDrain, drainPunch, focusPunch, gigaDrain, energyBall]
}

skitty :: Pokemon
skitty = Pokemon {
  pokemonIndex = 299,
  pokemonName = "Skitty",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 45,
  defence = 45,
  specialAttack = 35,
  specialDefence = 35,
  pokemonMoves = [dualChop, furyCutter, leafStorm, nightSlash, pound, absorb, quickAttack, absorb, quickAttack, megaDrain, pursuit, leafBlade, slam, xScissor, falseSwipe, leafStorm, dragonClaw, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, falseSwipe, brutalSwing, acrobatics, gigaImpact, bulldoze, rockSlide, xScissor, frenzyPlant, grassPledge, crunch, dragonBreath, crushClaw, doubleKick, magicalLeaf, leafStorm, razorWind, bulletSeed, dualChop, seedBomb, thunderPunch, dragonPulse, ironTail, snore, gigaDrain, drainPunch, focusPunch, outrage, gigaDrain, energyBall]
}

delcatty :: Pokemon
delcatty = Pokemon {
  pokemonIndex = 300,
  pokemonName = "Delcatty",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 65,
  defence = 65,
  specialAttack = 55,
  specialDefence = 55,
  pokemonMoves = [dualChop, furyCutter, leafStorm, nightSlash, pound, absorb, quickAttack, absorb, quickAttack, megaDrain, pursuit, leafBlade, slam, xScissor, falseSwipe, leafStorm, dragonClaw, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, falseSwipe, brutalSwing, acrobatics, gigaImpact, bulldoze, rockSlide, xScissor, frenzyPlant, grassPledge, crunch, dragonBreath, crushClaw, doubleKick, magicalLeaf, leafStorm, razorWind, bulletSeed, dualChop, seedBomb, thunderPunch, dragonPulse, ironTail, snore, gigaDrain, drainPunch, focusPunch, outrage, gigaDrain, energyBall]
}

sableye :: Pokemon
sableye = Pokemon {
  pokemonIndex = 301,
  pokemonName = "Sableye",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Dark,
  pokemonType2 = Ghost,
  attack = 75,
  defence = 75,
  specialAttack = 65,
  specialDefence = 65,
  pokemonMoves = [scratch, ember, peck, fireSpin, quickAttack, flameBurst, slash, flamethrower, hiddenPower, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, shadowClaw, rockSlide, blastBurn, smellingSalts, crushClaw, nightSlash, lastResort, feint, flameBurst, bounce, lastResort, snore, heatWave]
}

mawile :: Pokemon
mawile = Pokemon {
  pokemonIndex = 302,
  pokemonName = "Mawile",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Steel,
  pokemonType2 = Fairy,
  attack = 85,
  defence = 85,
  specialAttack = 55,
  specialDefence = 55,
  pokemonMoves = [doubleKick, scratch, ember, ember, peck, flameCharge, quickAttack, slash, skyUppercut, flareBlitz, hiddenPower, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, lowSweep, roundMove, echoedVoice, overheat, focusBlast, shadowClaw, rockSlide, poisonJab, blastBurn, smellingSalts, crushClaw, nightSlash, lastResort, feint, flameBurst, dualChop, bounce, thunderPunch, firePunch, lastResort, snore, heatWave, focusPunch, fireSpin, flameBurst, flamethrower]
}

aron :: Pokemon
aron = Pokemon {
  pokemonIndex = 303,
  pokemonName = "Aron",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Steel,
  pokemonType2 = Rock,
  attack = 70,
  defence = 100,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [blazeKick, doubleKick, flareBlitz, firePunch, highJumpKick, scratch, ember, ember, peck, flameCharge, quickAttack, slash, braveBird, skyUppercut, flareBlitz, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, lowSweep, roundMove, echoedVoice, overheat, focusBlast, acrobatics, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, blastBurn, firePledge, smellingSalts, crushClaw, nightSlash, lastResort, feint, flameBurst, dualChop, bounce, thunderPunch, firePunch, lastResort, superpower, snore, knockOff, heatWave, focusPunch, fireSpin, flameBurst, flamethrower]
}

lairon :: Pokemon
lairon = Pokemon {
  pokemonIndex = 304,
  pokemonName = "Lairon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Steel,
  pokemonType2 = Rock,
  attack = 90,
  defence = 140,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [blazeKick, doubleKick, flareBlitz, firePunch, highJumpKick, scratch, ember, ember, peck, flameCharge, quickAttack, slash, braveBird, skyUppercut, flareBlitz, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, lowSweep, roundMove, echoedVoice, overheat, focusBlast, acrobatics, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, blastBurn, firePledge, smellingSalts, crushClaw, nightSlash, lastResort, feint, flameBurst, dualChop, bounce, thunderPunch, firePunch, lastResort, superpower, snore, knockOff, heatWave, focusPunch, fireSpin, flameBurst, flamethrower]
}

aggron :: Pokemon
aggron = Pokemon {
  pokemonIndex = 305,
  pokemonName = "Aggron",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Steel,
  pokemonType2 = Rock,
  attack = 110,
  defence = 180,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [tackle, waterGun, mudSlap, rockThrow, whirlpool, takeDown, hydroPump, hiddenPower, iceBeam, blizzard, sludgeWave, rockTomb, facade, roundMove, echoedVoice, scald, rockSlide, surf, waterfall, hydroCannon, uproar, stomp, iceBall, ancientPower, whirlpool, bite, doubleEdge, mudBomb, sludge, avalanche, uproar, earthPower, superpower, icyWind, aquaTail, ironTail, snore, waterPulse]
}

meditite :: Pokemon
meditite = Pokemon {
  pokemonIndex = 306,
  pokemonName = "Meditite",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Fighting,
  pokemonType2 = Psychic,
  attack = 40,
  defence = 55,
  specialAttack = 40,
  specialDefence = 55,
  pokemonMoves = [mudShot, tackle, waterGun, mudSlap, waterGun, mudSlap, mudBomb, rockSlide, muddyWater, takeDown, earthquake, hiddenPower, iceBeam, blizzard, earthquake, brickBreak, sludgeWave, rockTomb, facade, roundMove, echoedVoice, scald, bulldoze, rockSlide, surf, waterfall, hydroCannon, uproar, stomp, iceBall, ancientPower, whirlpool, bite, doubleEdge, mudBomb, sludge, avalanche, uproar, icePunch, earthPower, superpower, icyWind, aquaTail, ironTail, snore, waterPulse, rockThrow, whirlpool, hydroPump]
}

medicham :: Pokemon
medicham = Pokemon {
  pokemonIndex = 307,
  pokemonName = "Medicham",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Fighting,
  pokemonType2 = Psychic,
  attack = 60,
  defence = 75,
  specialAttack = 60,
  specialDefence = 75,
  pokemonMoves = [mudShot, hammerArm, tackle, waterGun, mudSlap, waterGun, mudSlap, mudBomb, rockSlide, muddyWater, takeDown, earthquake, hammerArm, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, brickBreak, sludgeWave, rockTomb, facade, roundMove, echoedVoice, focusBlast, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, surf, waterfall, hydroCannon, waterPledge, uproar, stomp, iceBall, ancientPower, whirlpool, bite, doubleEdge, mudBomb, sludge, avalanche, uproar, icePunch, earthPower, superpower, icyWind, aquaTail, ironTail, snore, focusPunch, waterPulse, outrage, rockThrow, whirlpool, hydroPump]
}

electrike :: Pokemon
electrike = Pokemon {
  pokemonIndex = 308,
  pokemonName = "Electrike",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 45,
  defence = 40,
  specialAttack = 65,
  specialDefence = 40,
  pokemonMoves = [mudShot, hammerArm, tackle, waterGun, mudSlap, waterGun, mudSlap, mudBomb, rockSlide, muddyWater, takeDown, earthquake, hammerArm, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, brickBreak, sludgeWave, rockTomb, facade, roundMove, echoedVoice, focusBlast, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, surf, waterfall, hydroCannon, waterPledge, uproar, stomp, iceBall, ancientPower, whirlpool, bite, doubleEdge, mudBomb, sludge, avalanche, uproar, icePunch, earthPower, superpower, icyWind, aquaTail, ironTail, snore, focusPunch, waterPulse, outrage, rockThrow, whirlpool, hydroPump]
}

manectric :: Pokemon
manectric = Pokemon {
  pokemonIndex = 309,
  pokemonName = "Manectric",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 75,
  defence = 60,
  specialAttack = 105,
  specialDefence = 60,
  pokemonMoves = [tackle, bite, assurance, crunch, takeDown, suckerPunch, playRough, hiddenPower, shadowBall, facade, thief, roundMove, payback, snarl, darkPulse, astonish, poisonFang, covet, suckerPunch, iceFang, fireFang, thunderFang, playRough, covet, uproar, foulPlay, hyperVoice, ironTail, snore]
}

plusle :: Pokemon
plusle = Pokemon {
  pokemonIndex = 310,
  pokemonName = "Plusle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 50,
  defence = 40,
  specialAttack = 85,
  specialDefence = 75,
  pokemonMoves = [snarl, fireFang, thunderFang, iceFang, crunch, thief, tackle, bite, bite, assurance, crunch, takeDown, suckerPunch, playRough, hiddenPower, hyperBeam, shadowBall, facade, thief, roundMove, payback, gigaImpact, snarl, darkPulse, astonish, poisonFang, covet, suckerPunch, iceFang, fireFang, thunderFang, playRough, covet, uproar, foulPlay, hyperVoice, ironTail, snore]
}

minun :: Pokemon
minun = Pokemon {
  pokemonIndex = 311,
  pokemonName = "Minun",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 40,
  defence = 50,
  specialAttack = 75,
  specialDefence = 85,
  pokemonMoves = [tackle, headbutt, pinMissile, covet, takeDown, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, shadowBall, facade, thief, roundMove, echoedVoice, chargeBeam, surf, pursuit, mudSlap, rockClimb, covet, seedBomb, gunkShot, lastResort, icyWind, hyperVoice, ironTail, snore, shockWave, waterPulse]
}

volbeat :: Pokemon
volbeat = Pokemon {
  pokemonIndex = 312,
  pokemonName = "Volbeat",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 73,
  defence = 75,
  specialAttack = 47,
  specialDefence = 85,
  pokemonMoves = [playRough, tackle, headbutt, furySwipes, covet, slash, doubleEdge, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, shadowBall, facade, thief, roundMove, echoedVoice, chargeBeam, shadowClaw, gigaImpact, surf, pursuit, mudSlap, rockClimb, covet, seedBomb, gunkShot, lastResort, icyWind, hyperVoice, ironTail, snore, shockWave, waterPulse, pinMissile, takeDown]
}

illumise :: Pokemon
illumise = Pokemon {
  pokemonIndex = 313,
  pokemonName = "Illumise",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 47,
  defence = 75,
  specialAttack = 73,
  specialDefence = 85,
  pokemonMoves = [tackle, poisonSting, bugBite, bugBite, electroweb, snore]
}

roselia :: Pokemon
roselia = Pokemon {
  pokemonIndex = 314,
  pokemonName = "Roselia",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 60,
  defence = 45,
  specialAttack = 100,
  specialDefence = 80,
  pokemonMoves = [bugBite, electroweb, tackle, poisonSting, bugBite]
}

gulpin :: Pokemon
gulpin = Pokemon {
  pokemonIndex = 315,
  pokemonName = "Gulpin",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 43,
  defence = 53,
  specialAttack = 43,
  specialDefence = 53,
  pokemonMoves = [gust, absorb, airCutter, megaDrain, silverWind, gigaDrain, bugBuzz, rage, venoshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, energyBall, acrobatics, gigaImpact, infestation, uturn, bugBite, signalBeam, electroweb, snore, gigaDrain, airCutter, tackle, poisonSting, bugBite]
}

swalot :: Pokemon
swalot = Pokemon {
  pokemonIndex = 316,
  pokemonName = "Swalot",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 73,
  defence = 83,
  specialAttack = 73,
  specialDefence = 83,
  pokemonMoves = [bugBite, electroweb]
}

carvanha :: Pokemon
carvanha = Pokemon {
  pokemonIndex = 317,
  pokemonName = "Carvanha",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Water,
  pokemonType2 = Dark,
  attack = 90,
  defence = 20,
  specialAttack = 65,
  specialDefence = 20,
  pokemonMoves = [gust, confusion, venoshock, psybeam, silverWind, bugBuzz, venoshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, sludgeBomb, aerialAce, facade, thief, roundMove, energyBall, acrobatics, gigaImpact, infestation, uturn, bugBite, signalBeam, electroweb, snore, gigaDrain, airCutter]
}

sharpedo :: Pokemon
sharpedo = Pokemon {
  pokemonIndex = 318,
  pokemonName = "Sharpedo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Water,
  pokemonType2 = Dark,
  attack = 120,
  defence = 40,
  specialAttack = 95,
  specialDefence = 40,
  pokemonMoves = [astonish, absorb, bubble, megaDrain, bubbleBeam, gigaDrain, zenHeadbutt, energyBall, hiddenPower, iceBeam, blizzard, solarBeam, facade, thief, roundMove, echoedVoice, energyBall, scald, surf, razorLeaf, waterGun, gigaDrain, seedBomb, uproar, icyWind, zenHeadbutt, snore, gigaDrain, waterPulse]
}

wailmer :: Pokemon
wailmer = Pokemon {
  pokemonIndex = 319,
  pokemonName = "Wailmer",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 130,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 70,
  defence = 35,
  specialAttack = 70,
  specialDefence = 35,
  pokemonMoves = [astonish, absorb, bubble, furySwipes, fakeOut, bubbleBeam, uproar, knockOff, zenHeadbutt, hydroPump, hiddenPower, iceBeam, blizzard, solarBeam, brickBreak, facade, thief, roundMove, echoedVoice, energyBall, scald, surf, waterfall, razorLeaf, waterGun, gigaDrain, seedBomb, uproar, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, knockOff, gigaDrain, drainPunch, waterPulse, megaDrain, gigaDrain, energyBall]
}

wailord :: Pokemon
wailord = Pokemon {
  pokemonIndex = 320,
  pokemonName = "Wailord",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 170,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 90,
  defence = 45,
  specialAttack = 90,
  specialDefence = 45,
  pokemonMoves = [astonish, megaDrain, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, brickBreak, facade, thief, roundMove, echoedVoice, focusBlast, energyBall, scald, gigaImpact, surf, waterfall, razorLeaf, waterGun, gigaDrain, seedBomb, uproar, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, knockOff, gigaDrain, drainPunch, focusPunch, waterPulse, absorb, bubble, furySwipes, fakeOut, bubbleBeam, uproar, knockOff, zenHeadbutt, hydroPump, gigaDrain, energyBall]
}

numel :: Pokemon
numel = Pokemon {
  pokemonIndex = 321,
  pokemonName = "Numel",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Fire,
  pokemonType2 = Ground,
  attack = 60,
  defence = 40,
  specialAttack = 65,
  specialDefence = 45,
  pokemonMoves = [explosion, hiddenPower, solarBeam, shadowBall, facade, roundMove, energyBall, falseSwipe, explosion, quickAttack, razorWind, takeDown, foulPlay, bulletSeed, seedBomb, foulPlay, snore, gigaDrain]
}

camerupt :: Pokemon
camerupt = Pokemon {
  pokemonIndex = 322,
  pokemonName = "Camerupt",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Fire,
  pokemonType2 = Ground,
  attack = 100,
  defence = 70,
  specialAttack = 105,
  specialDefence = 75,
  pokemonMoves = [razorLeaf, pound, fakeOut, razorWind, feintAttack, leafBlade, extrasensory, hiddenPower, hyperBeam, solarBeam, shadowBall, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, energyBall, falseSwipe, explosion, payback, rockSlide, snarl, darkPulse, quickAttack, razorWind, takeDown, foulPlay, bulletSeed, seedBomb, foulPlay, snore, gigaDrain, explosion]
}

torkoal :: Pokemon
torkoal = Pokemon {
  pokemonIndex = 323,
  pokemonName = "Torkoal",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 85,
  defence = 140,
  specialAttack = 85,
  specialDefence = 70,
  pokemonMoves = [razorLeaf, feintAttack, leafTornado, hurricane, leafStorm, hiddenPower, hyperBeam, solarBeam, shadowBall, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, focusBlast, energyBall, falseSwipe, brutalSwing, explosion, payback, gigaImpact, rockSlide, xScissor, snarl, darkPulse, quickAttack, razorWind, takeDown, foulPlay, bulletSeed, seedBomb, bounce, foulPlay, icyWind, snore, knockOff, gigaDrain, pound, fakeOut, razorWind, leafBlade, extrasensory, explosion]
}

spoink :: Pokemon
spoink = Pokemon {
  pokemonIndex = 324,
  pokemonName = "Spoink",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 25,
  defence = 35,
  specialAttack = 70,
  specialDefence = 80,
  pokemonMoves = [peck, quickAttack, wingAttack, aerialAce, airSlash, braveBird, hiddenPower, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, fly, uturn, pursuit, rage, skyAttack, braveBird, steelWing, boomburst, hurricane, snore, heatWave, skyAttack, airCutter]
}

grumpig :: Pokemon
grumpig = Pokemon {
  pokemonIndex = 325,
  pokemonName = "Grumpig",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 45,
  defence = 65,
  specialAttack = 90,
  specialDefence = 110,
  pokemonMoves = [braveBird, airSlash, pluck, peck, quickAttack, quickAttack, wingAttack, aerialAce, airSlash, braveBird, hiddenPower, hyperBeam, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, gigaImpact, fly, uturn, pursuit, rage, skyAttack, braveBird, steelWing, boomburst, hurricane, snore, heatWave, skyAttack, airCutter]
}

spinda :: Pokemon
spinda = Pokemon {
  pokemonIndex = 326,
  pokemonName = "Spinda",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 60,
  defence = 60,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [waterGun, wingAttack, waterPulse, quickAttack, airCutter, pursuit, aerialAce, airSlash, hurricane, hiddenPower, iceBeam, blizzard, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, scald, fly, uturn, twister, gust, knockOff, brine, uproar, icyWind, snore, knockOff, skyAttack, airCutter, shockWave, waterPulse]
}

trapinch :: Pokemon
trapinch = Pokemon {
  pokemonIndex = 327,
  pokemonName = "Trapinch",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 100,
  defence = 45,
  specialAttack = 45,
  specialDefence = 45,
  pokemonMoves = [hurricane, hydroPump, waterGun, wingAttack, wingAttack, waterPulse, payback, brine, hydroPump, hurricane, hiddenPower, iceBeam, blizzard, hyperBeam, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, scald, skyDrop, payback, gigaImpact, fly, uturn, surf, twister, gust, knockOff, brine, seedBomb, gunkShot, uproar, icyWind, snore, knockOff, skyAttack, airCutter, shockWave, waterPulse, quickAttack, airCutter, pursuit, aerialAce, airSlash]
}

vibrava :: Pokemon
vibrava = Pokemon {
  pokemonIndex = 328,
  pokemonName = "Vibrava",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Ground,
  pokemonType2 = Dragon,
  attack = 70,
  defence = 50,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [confusion, disarmingVoice, magicalLeaf, drainingKiss, psychic, futureSight, dreamEater, storedPower, psyshock, hiddenPower, thunderbolt, psychic, shadowBall, facade, thief, roundMove, echoedVoice, chargeBeam, dreamEater, dazzlingGleam, shadowSneak, synchronoise, signalBeam, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave]
}

flygon :: Pokemon
flygon = Pokemon {
  pokemonIndex = 329,
  pokemonName = "Flygon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Ground,
  pokemonType2 = Dragon,
  attack = 100,
  defence = 80,
  specialAttack = 80,
  specialDefence = 80,
  pokemonMoves = [confusion, confusion, disarmingVoice, magicalLeaf, drainingKiss, psychic, futureSight, dreamEater, storedPower, psyshock, hiddenPower, thunderbolt, psychic, shadowBall, facade, thief, roundMove, echoedVoice, chargeBeam, dreamEater, dazzlingGleam, shadowSneak, synchronoise, signalBeam, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave]
}

cacnea :: Pokemon
cacnea = Pokemon {
  pokemonIndex = 330,
  pokemonName = "Cacnea",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 85,
  defence = 40,
  specialAttack = 85,
  specialDefence = 40,
  pokemonMoves = [moonblast, storedPower, confusion, confusion, disarmingVoice, magicalLeaf, drainingKiss, psychic, futureSight, dreamEater, storedPower, moonblast, psyshock, hiddenPower, hyperBeam, thunderbolt, psychic, shadowBall, facade, thief, roundMove, echoedVoice, focusBlast, energyBall, chargeBeam, gigaImpact, dreamEater, dazzlingGleam, shadowSneak, synchronoise, signalBeam, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave]
}

cacturne :: Pokemon
cacturne = Pokemon {
  pokemonIndex = 331,
  pokemonName = "Cacturne",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Grass,
  pokemonType2 = Dark,
  attack = 115,
  defence = 60,
  specialAttack = 115,
  specialDefence = 60,
  pokemonMoves = [moonblast, storedPower, confusion, confusion, disarmingVoice, magicalLeaf, drainingKiss, psychic, futureSight, dreamEater, storedPower, moonblast, psyshock, hiddenPower, hyperBeam, thunderbolt, psychic, shadowBall, facade, thief, roundMove, echoedVoice, focusBlast, energyBall, chargeBeam, gigaImpact, dreamEater, dazzlingGleam, shadowSneak, synchronoise, signalBeam, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave]
}

swablu :: Pokemon
swablu = Pokemon {
  pokemonIndex = 332,
  pokemonName = "Swablu",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 40,
  defence = 60,
  specialAttack = 40,
  specialDefence = 75,
  pokemonMoves = [bubble, quickAttack, bubbleBeam, aquaJet, hiddenPower, iceBeam, blizzard, solarBeam, shadowBall, facade, thief, roundMove, scald, infestation, mudShot, psybeam, hydroPump, signalBeam, bugBite, aquaJet, fellStinger, lunge, bugBite, signalBeam, icyWind, snore, gigaDrain, waterPulse]
}

altaria :: Pokemon
altaria = Pokemon {
  pokemonIndex = 333,
  pokemonName = "Altaria",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Dragon,
  pokemonType2 = Flying,
  attack = 70,
  defence = 90,
  specialAttack = 70,
  specialDefence = 105,
  pokemonMoves = [bugBuzz, ominousWind, bubble, quickAttack, quickAttack, gust, airCutter, silverWind, airSlash, bugBuzz, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, shadowBall, aerialAce, facade, thief, roundMove, energyBall, scald, gigaImpact, infestation, uturn, mudShot, psybeam, hydroPump, signalBeam, bugBite, aquaJet, fellStinger, lunge, bugBite, signalBeam, icyWind, snore, gigaDrain, airCutter, waterPulse, bubbleBeam, aquaJet]
}

zangoose :: Pokemon
zangoose = Pokemon {
  pokemonIndex = 334,
  pokemonName = "Zangoose",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 73,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 115,
  defence = 60,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [absorb, tackle, megaDrain, headbutt, gigaDrain, seedBomb, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, energyBall, falseSwipe, wakeUpSlap, seedBomb, bulletSeed, focusPunch, drainPunch, seedBomb, snore, gigaDrain, drainPunch, focusPunch]
}

seviper :: Pokemon
seviper = Pokemon {
  pokemonIndex = 335,
  pokemonName = "Seviper",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 73,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 100,
  defence = 60,
  specialAttack = 100,
  specialDefence = 60,
  pokemonMoves = [machPunch, absorb, tackle, megaDrain, headbutt, feint, forcePalm, skyUppercut, seedBomb, dynamicPunch, venoshock, hiddenPower, hyperBeam, solarBeam, brickBreak, sludgeBomb, rockTomb, facade, lowSweep, roundMove, focusBlast, energyBall, falseSwipe, gigaImpact, stoneEdge, rockSlide, wakeUpSlap, seedBomb, bulletSeed, focusPunch, drainPunch, seedBomb, thunderPunch, superpower, ironTail, snore, gigaDrain, drainPunch, focusPunch, gigaDrain]
}

lunatone :: Pokemon
lunatone = Pokemon {
  pokemonIndex = 336,
  pokemonName = "Lunatone",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Rock,
  pokemonType2 = Psychic,
  attack = 55,
  defence = 65,
  specialAttack = 95,
  specialDefence = 85,
  pokemonMoves = [scratch, feintAttack, covet, chipAway, playRough, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, shadowClaw, rockSlide, pursuit, slash, bodySlam, snore, crushClaw, hammerArm, nightSlash, covet, gunkShot, thunderPunch, firePunch, icePunch, icyWind, snore, focusPunch, shockWave, waterPulse]
}

solrock :: Pokemon
solrock = Pokemon {
  pokemonIndex = 337,
  pokemonName = "Solrock",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Rock,
  pokemonType2 = Psychic,
  attack = 95,
  defence = 85,
  specialAttack = 55,
  specialDefence = 65,
  pokemonMoves = [scratch, uproar, uproar, furySwipes, slash, chipAway, focusPunch, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, shadowClaw, bulldoze, rockSlide, pursuit, slash, bodySlam, snore, crushClaw, hammerArm, nightSlash, covet, gunkShot, uproar, thunderPunch, firePunch, icePunch, icyWind, snore, focusPunch, shockWave, waterPulse, feintAttack, covet, playRough]
}

barboach :: Pokemon
barboach = Pokemon {
  pokemonIndex = 338,
  pokemonName = "Barboach",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Water,
  pokemonType2 = Ground,
  attack = 48,
  defence = 43,
  specialAttack = 46,
  specialDefence = 41,
  pokemonMoves = [hammerArm, scratch, feintAttack, covet, chipAway, hammerArm, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, shadowClaw, gigaImpact, bulldoze, rockSlide, pursuit, slash, bodySlam, snore, crushClaw, hammerArm, nightSlash, covet, gunkShot, thunderPunch, firePunch, icePunch, icyWind, snore, focusPunch, shockWave, waterPulse, uproar, uproar, furySwipes, slash, focusPunch, playRough]
}

whiscash :: Pokemon
whiscash = Pokemon {
  pokemonIndex = 339,
  pokemonName = "Whiscash",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 110,
  pokemonType1 = Water,
  pokemonType2 = Ground,
  attack = 78,
  defence = 73,
  specialAttack = 76,
  specialDefence = 71,
  pokemonMoves = [scratch, absorb, furySwipes, mudSlap, metalClaw, falseSwipe, dig, hiddenPower, solarBeam, leechLife, shadowBall, aerialAce, facade, roundMove, falseSwipe, xScissor, feintAttack, gust, silverWind, bugBuzz, nightSlash, bugBite, bugBite, snore, gigaDrain]
}

corphish :: Pokemon
corphish = Pokemon {
  pokemonIndex = 340,
  pokemonName = "Corphish",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 43,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 80,
  defence = 65,
  specialAttack = 50,
  specialDefence = 35,
  pokemonMoves = [furyCutter, furyCutter, bugBite, scratch, absorb, absorb, furySwipes, slash, xScissor, hiddenPower, hyperBeam, solarBeam, leechLife, shadowBall, aerialAce, facade, thief, roundMove, falseSwipe, gigaImpact, xScissor, uturn, feintAttack, gust, silverWind, bugBuzz, nightSlash, bugBite, bugBite, uproar, snore, gigaDrain, airCutter, mudSlap, metalClaw, falseSwipe, dig]
}

crawdaunt :: Pokemon
crawdaunt = Pokemon {
  pokemonIndex = 341,
  pokemonName = "Crawdaunt",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 63,
  pokemonType1 = Water,
  pokemonType2 = Dark,
  attack = 120,
  defence = 85,
  specialAttack = 90,
  specialDefence = 55,
  pokemonMoves = [scratch, absorb, absorb, furySwipes, shadowSneak, shadowBall, phantomForce, hiddenPower, hyperBeam, solarBeam, leechLife, shadowBall, aerialAce, facade, thief, roundMove, falseSwipe, shadowClaw, gigaImpact, xScissor, dreamEater, bugBite, snore, gigaDrain, mudSlap, metalClaw, falseSwipe, dig]
}

baltoy :: Pokemon
baltoy = Pokemon {
  pokemonIndex = 342,
  pokemonName = "Baltoy",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Ground,
  pokemonType2 = Psychic,
  attack = 40,
  defence = 55,
  specialAttack = 40,
  specialDefence = 70,
  pokemonMoves = [pound, echoedVoice, astonish, stomp, uproar, hyperVoice, synchronoise, hiddenPower, iceBeam, blizzard, solarBeam, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, takeDown, snore, extrasensory, smellingSalts, hammerArm, circleThrow, disarmingVoice, uproar, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave, waterPulse]
}

claydol :: Pokemon
claydol = Pokemon {
  pokemonIndex = 343,
  pokemonName = "Claydol",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Ground,
  pokemonType2 = Psychic,
  attack = 70,
  defence = 105,
  specialAttack = 70,
  specialDefence = 120,
  pokemonMoves = [bite, pound, echoedVoice, astonish, echoedVoice, astonish, stomp, uproar, hyperVoice, synchronoise, hiddenPower, iceBeam, blizzard, solarBeam, smackDown, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, echoedVoice, overheat, bulldoze, rockSlide, takeDown, snore, extrasensory, smellingSalts, hammerArm, circleThrow, disarmingVoice, uproar, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave, waterPulse]
}

lileep :: Pokemon
lileep = Pokemon {
  pokemonIndex = 344,
  pokemonName = "Lileep",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 66,
  pokemonType1 = Rock,
  pokemonType2 = Grass,
  attack = 41,
  defence = 77,
  specialAttack = 61,
  specialDefence = 87,
  pokemonMoves = [crunch, bite, boomburst, iceFang, fireFang, thunderFang, pound, echoedVoice, astonish, echoedVoice, astonish, stomp, uproar, hyperVoice, synchronoise, boomburst, hyperBeam, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, echoedVoice, overheat, focusBlast, gigaImpact, bulldoze, rockSlide, surf, takeDown, snore, extrasensory, smellingSalts, hammerArm, circleThrow, disarmingVoice, uproar, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave, waterPulse, outrage]
}

cradily :: Pokemon
cradily = Pokemon {
  pokemonIndex = 345,
  pokemonName = "Cradily",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 86,
  pokemonType1 = Rock,
  pokemonType2 = Grass,
  attack = 81,
  defence = 97,
  specialAttack = 81,
  specialDefence = 107,
  pokemonMoves = [tackle, armThrust, fakeOut, forcePalm, knockOff, vitalThrow, smellingSalts, wakeUpSlap, closeCombat, hiddenPower, smackDown, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, bulldoze, rockSlide, poisonJab, surf, feintAttack, crossChop, revenge, dynamicPunch, wakeUpSlap, bulletPunch, feint, focusPunch, chipAway, thunderPunch, firePunch, icePunch, superpower, snore, knockOff, focusPunch]
}

anorith :: Pokemon
anorith = Pokemon {
  pokemonIndex = 346,
  pokemonName = "Anorith",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Rock,
  pokemonType2 = Bug,
  attack = 95,
  defence = 50,
  specialAttack = 40,
  specialDefence = 50,
  pokemonMoves = [brine, tackle, armThrust, armThrust, fakeOut, forcePalm, knockOff, vitalThrow, smellingSalts, wakeUpSlap, closeCombat, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, surf, feintAttack, crossChop, revenge, dynamicPunch, wakeUpSlap, bulletPunch, feint, focusPunch, chipAway, ironHead, thunderPunch, firePunch, icePunch, superpower, snore, knockOff, focusPunch]
}

armaldo :: Pokemon
armaldo = Pokemon {
  pokemonIndex = 347,
  pokemonName = "Armaldo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Rock,
  pokemonType2 = Bug,
  attack = 125,
  defence = 100,
  specialAttack = 70,
  specialDefence = 80,
  pokemonMoves = [waterGun, bubble, bubbleBeam, slam, bounce, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, surf, waterfall, slam, bodySlam, muddyWater, covet, bounce, uproar, icyWind, hyperVoice, ironTail, snore, knockOff, waterPulse]
}

feebas :: Pokemon
feebas = Pokemon {
  pokemonIndex = 348,
  pokemonName = "Feebas",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 20,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 15,
  defence = 20,
  specialAttack = 10,
  specialDefence = 55,
  pokemonMoves = [tackle, rockThrow, spark, rockSlide, powerGem, rockBlast, discharge, earthPower, stoneEdge, zapCannon, hiddenPower, smackDown, thunderbolt, thunder, earthquake, rockTomb, facade, roundMove, explosion, stoneEdge, voltSwitch, bulldoze, rockSlide, dazzlingGleam, rollout, doubleEdge, thunderPunch, firePunch, icePunch, earthPower, snore, shockWave]
}

milotic :: Pokemon
milotic = Pokemon {
  pokemonIndex = 349,
  pokemonName = "Milotic",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 60,
  defence = 79,
  specialAttack = 100,
  specialDefence = 125,
  pokemonMoves = [fakeOut, tackle, disarmingVoice, doubleSlap, feintAttack, wakeUpSlap, covet, doubleEdge, playRough, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, facade, roundMove, echoedVoice, chargeBeam, payback, dreamEater, wildCharge, uproar, lastResort, fakeOut, zenHeadbutt, suckerPunch, mudBomb, covet, uproar, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, shockWave, waterPulse]
}

castform :: Pokemon
castform = Pokemon {
  pokemonIndex = 350,
  pokemonName = "Castform",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 70,
  defence = 70,
  specialAttack = 70,
  specialDefence = 70,
  pokemonMoves = [fakeOut, doubleSlap, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, facade, roundMove, echoedVoice, chargeBeam, payback, gigaImpact, dreamEater, wildCharge, uproar, lastResort, fakeOut, zenHeadbutt, suckerPunch, mudBomb, covet, uproar, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, shockWave, waterPulse, tackle, disarmingVoice, feintAttack, wakeUpSlap, covet, doubleEdge, playRough]
}

kecleon :: Pokemon
kecleon = Pokemon {
  pokemonIndex = 351,
  pokemonName = "Kecleon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 90,
  defence = 70,
  specialAttack = 60,
  specialDefence = 120,
  pokemonMoves = [scratch, astonish, furySwipes, shadowSneak, feintAttack, fakeOut, knockOff, shadowClaw, zenHeadbutt, powerGem, shadowBall, foulPlay, hiddenPower, psychic, shadowBall, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, shadowClaw, payback, poisonJab, dreamEater, snarl, darkPulse, dazzlingGleam, feint, suckerPunch, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, icyWind, zenHeadbutt, snore, knockOff, focusPunch, shockWave, waterPulse]
}

shuppet :: Pokemon
shuppet = Pokemon {
  pokemonIndex = 352,
  pokemonName = "Shuppet",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 44,
  pokemonType1 = Ghost,
  pokemonType2 = None,
  attack = 75,
  defence = 35,
  specialAttack = 63,
  specialDefence = 33,
  pokemonMoves = [scratch, astonish, furySwipes, shadowSneak, feintAttack, fakeOut, knockOff, shadowClaw, zenHeadbutt, powerGem, shadowBall, foulPlay, hiddenPower, psychic, shadowBall, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, shadowClaw, payback, poisonJab, dreamEater, snarl, darkPulse, dazzlingGleam, feint, suckerPunch, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, icyWind, zenHeadbutt, snore, knockOff, focusPunch, shockWave, waterPulse]
}

banette :: Pokemon
banette = Pokemon {
  pokemonIndex = 353,
  pokemonName = "Banette",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 64,
  pokemonType1 = Ghost,
  pokemonType2 = None,
  attack = 115,
  defence = 65,
  specialAttack = 83,
  specialDefence = 63,
  pokemonMoves = [playRough, ironHead, fairyWind, astonish, bite, viceGrip, feintAttack, crunch, suckerPunch, ironHead, playRough, hiddenPower, iceBeam, hyperBeam, solarBeam, shadowBall, brickBreak, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, roundMove, focusBlast, falseSwipe, chargeBeam, payback, gigaImpact, stoneEdge, rockSlide, flashCannon, darkPulse, poisonFang, ancientPower, suckerPunch, iceFang, fireFang, thunderFang, slam, ironHead, thunderPunch, icePunch, foulPlay, lastResort, icyWind, snore, knockOff, focusPunch]
}

duskull :: Pokemon
duskull = Pokemon {
  pokemonIndex = 354,
  pokemonName = "Duskull",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 20,
  pokemonType1 = Ghost,
  pokemonType2 = None,
  attack = 40,
  defence = 90,
  specialAttack = 30,
  specialDefence = 90,
  pokemonMoves = [playRough, ironHead, fairyWind, astonish, bite, viceGrip, feintAttack, crunch, suckerPunch, ironHead, playRough, hiddenPower, iceBeam, hyperBeam, solarBeam, shadowBall, brickBreak, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, roundMove, focusBlast, falseSwipe, chargeBeam, payback, gigaImpact, stoneEdge, rockSlide, flashCannon, darkPulse, poisonFang, ancientPower, suckerPunch, iceFang, fireFang, thunderFang, slam, ironHead, thunderPunch, icePunch, foulPlay, lastResort, icyWind, snore, knockOff, focusPunch]
}

dusclops :: Pokemon
dusclops = Pokemon {
  pokemonIndex = 355,
  pokemonName = "Dusclops",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Ghost,
  pokemonType2 = None,
  attack = 70,
  defence = 130,
  specialAttack = 60,
  specialDefence = 130,
  pokemonMoves = [tackle, mudSlap, headbutt, metalClaw, rockTomb, ironHead, rockSlide, takeDown, ironTail, doubleEdge, hiddenPower, earthquake, rockTomb, aerialAce, facade, roundMove, shadowClaw, bulldoze, rockSlide, bodySlam, stomp, smellingSalts, ironHead, dragonRush, headSmash, superpower, ironHead, uproar, earthPower, superpower, ironTail, snore, shockWave, waterPulse]
}

tropius :: Pokemon
tropius = Pokemon {
  pokemonIndex = 356,
  pokemonName = "Tropius",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 99,
  pokemonType1 = Grass,
  pokemonType2 = Flying,
  attack = 68,
  defence = 83,
  specialAttack = 72,
  specialDefence = 87,
  pokemonMoves = [tackle, mudSlap, headbutt, mudSlap, headbutt, metalClaw, rockTomb, ironHead, rockSlide, takeDown, ironTail, doubleEdge, hiddenPower, earthquake, rockTomb, aerialAce, facade, roundMove, shadowClaw, stoneEdge, bulldoze, rockSlide, bodySlam, stomp, smellingSalts, ironHead, dragonRush, headSmash, superpower, ironHead, uproar, earthPower, superpower, ironTail, snore, shockWave, waterPulse]
}

chimecho :: Pokemon
chimecho = Pokemon {
  pokemonIndex = 357,
  pokemonName = "Chimecho",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 50,
  defence = 80,
  specialAttack = 95,
  specialDefence = 90,
  pokemonMoves = [tackle, mudSlap, headbutt, mudSlap, headbutt, metalClaw, rockTomb, ironHead, rockSlide, takeDown, ironTail, doubleEdge, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, focusBlast, brutalSwing, shadowClaw, payback, smartStrike, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, flashCannon, surf, darkPulse, bodySlam, stomp, smellingSalts, ironHead, dragonRush, headSmash, superpower, ironHead, uproar, thunderPunch, firePunch, icePunch, earthPower, superpower, icyWind, aquaTail, dragonPulse, ironTail, snore, focusPunch, shockWave, waterPulse, outrage]
}

absol :: Pokemon
absol = Pokemon {
  pokemonIndex = 358,
  pokemonName = "Absol",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Dark,
  pokemonType2 = None,
  attack = 130,
  defence = 60,
  specialAttack = 75,
  specialDefence = 60,
  pokemonMoves = [tackle, mudSlap, headbutt, mudSlap, headbutt, metalClaw, rockTomb, ironHead, rockSlide, takeDown, ironTail, doubleEdge, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, focusBlast, brutalSwing, shadowClaw, payback, smartStrike, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, flashCannon, surf, darkPulse, bodySlam, stomp, smellingSalts, ironHead, dragonRush, headSmash, superpower, ironHead, uproar, thunderPunch, firePunch, icePunch, earthPower, superpower, icyWind, aquaTail, dragonPulse, ironTail, snore, focusPunch, shockWave, waterPulse, outrage]
}

wynaut :: Pokemon
wynaut = Pokemon {
  pokemonIndex = 359,
  pokemonName = "Wynaut",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 23,
  defence = 48,
  specialAttack = 23,
  specialDefence = 48,
  pokemonMoves = [confusion, feint, forcePalm, hiddenPower, highJumpKick, psyshock, hiddenPower, psychic, shadowBall, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, rockSlide, poisonJab, dreamEater, firePunch, thunderPunch, icePunch, fakeOut, dynamicPunch, psychoCut, bulletPunch, drainPunch, secretPower, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, snore, drainPunch, focusPunch]
}

snorunt :: Pokemon
snorunt = Pokemon {
  pokemonIndex = 360,
  pokemonName = "Snorunt",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Ice,
  pokemonType2 = None,
  attack = 50,
  defence = 50,
  specialAttack = 50,
  specialDefence = 50,
  pokemonMoves = [zenHeadbutt, firePunch, thunderPunch, icePunch, confusion, confusion, feint, forcePalm, hiddenPower, highJumpKick, psyshock, hiddenPower, hyperBeam, psychic, shadowBall, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, energyBall, gigaImpact, rockSlide, poisonJab, dreamEater, firePunch, thunderPunch, icePunch, fakeOut, dynamicPunch, psychoCut, bulletPunch, drainPunch, secretPower, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, snore, drainPunch, focusPunch]
}

glalie :: Pokemon
glalie = Pokemon {
  pokemonIndex = 361,
  pokemonName = "Glalie",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Ice,
  pokemonType2 = None,
  attack = 80,
  defence = 80,
  specialAttack = 80,
  specialDefence = 80,
  pokemonMoves = [zenHeadbutt, firePunch, thunderPunch, icePunch, confusion, confusion, feint, forcePalm, hiddenPower, highJumpKick, psyshock, hiddenPower, hyperBeam, psychic, shadowBall, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, energyBall, gigaImpact, rockSlide, poisonJab, dreamEater, firePunch, thunderPunch, icePunch, fakeOut, dynamicPunch, psychoCut, bulletPunch, drainPunch, secretPower, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, snore, drainPunch, focusPunch]
}

spheal :: Pokemon
spheal = Pokemon {
  pokemonIndex = 362,
  pokemonName = "Spheal",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Ice,
  pokemonType2 = Water,
  attack = 40,
  defence = 50,
  specialAttack = 55,
  specialDefence = 50,
  pokemonMoves = [tackle, quickAttack, spark, thunderFang, bite, discharge, wildCharge, thunder, hiddenPower, thunderbolt, thunder, flamethrower, facade, thief, roundMove, chargeBeam, voltSwitch, wildCharge, snarl, crunch, headbutt, uproar, swift, discharge, iceFang, fireFang, thunderFang, shockWave, flameBurst, signalBeam, uproar, ironTail, snore, shockWave]
}

sealeo :: Pokemon
sealeo = Pokemon {
  pokemonIndex = 363,
  pokemonName = "Sealeo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Ice,
  pokemonType2 = Water,
  attack = 60,
  defence = 70,
  specialAttack = 75,
  specialDefence = 70,
  pokemonMoves = [fireFang, tackle, quickAttack, spark, thunderFang, bite, discharge, wildCharge, thunder, hiddenPower, hyperBeam, thunderbolt, thunder, flamethrower, facade, thief, roundMove, overheat, chargeBeam, gigaImpact, voltSwitch, wildCharge, snarl, crunch, headbutt, uproar, swift, discharge, iceFang, fireFang, thunderFang, shockWave, flameBurst, signalBeam, uproar, ironTail, snore, shockWave]
}

walrein :: Pokemon
walrein = Pokemon {
  pokemonIndex = 364,
  pokemonName = "Walrein",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 110,
  pokemonType1 = Ice,
  pokemonType2 = Water,
  attack = 80,
  defence = 90,
  specialAttack = 95,
  specialDefence = 90,
  pokemonMoves = [fireFang, tackle, quickAttack, spark, thunderFang, bite, discharge, wildCharge, thunder, hiddenPower, hyperBeam, thunderbolt, thunder, flamethrower, facade, thief, roundMove, overheat, chargeBeam, gigaImpact, voltSwitch, wildCharge, snarl, crunch, headbutt, uproar, swift, discharge, iceFang, fireFang, thunderFang, shockWave, flameBurst, signalBeam, uproar, ironTail, snore, shockWave]
}

clamperl :: Pokemon
clamperl = Pokemon {
  pokemonIndex = 365,
  pokemonName = "Clamperl",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 64,
  defence = 85,
  specialAttack = 74,
  specialDefence = 55,
  pokemonMoves = [nuzzle, quickAttack, spark, swift, discharge, lastResort, thunder, hiddenPower, thunderbolt, thunder, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge, discharge, signalBeam, uproar, thunderPunch, lastResort, electroweb, ironTail, snore, shockWave]
}

huntail :: Pokemon
huntail = Pokemon {
  pokemonIndex = 366,
  pokemonName = "Huntail",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 104,
  defence = 105,
  specialAttack = 94,
  specialDefence = 75,
  pokemonMoves = [nuzzle, quickAttack, spark, swift, discharge, thunder, hiddenPower, thunderbolt, thunder, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge, discharge, signalBeam, uproar, thunderPunch, lastResort, electroweb, ironTail, snore, shockWave]
}

gorebyss :: Pokemon
gorebyss = Pokemon {
  pokemonIndex = 367,
  pokemonName = "Gorebyss",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 84,
  defence = 105,
  specialAttack = 114,
  specialDefence = 75,
  pokemonMoves = [tackle, quickAttack, struggleBug, signalBeam, zenHeadbutt, bugBuzz, playRough, doubleEdge, infestation, hiddenPower, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, aerialAce, facade, thief, roundMove, chargeBeam, acrobatics, infestation, uturn, dazzlingGleam, silverWind, bugBuzz, dizzyPunch, bugBite, signalBeam, thunderPunch, icePunch, zenHeadbutt, snore, gigaDrain, airCutter, focusPunch, shockWave, waterPulse]
}

relicanth :: Pokemon
relicanth = Pokemon {
  pokemonIndex = 368,
  pokemonName = "Relicanth",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Water,
  pokemonType2 = Rock,
  attack = 90,
  defence = 130,
  specialAttack = 45,
  specialDefence = 65,
  pokemonMoves = [tackle, quickAttack, struggleBug, zenHeadbutt, bugBuzz, playRough, covet, infestation, hiddenPower, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, aerialAce, facade, thief, roundMove, chargeBeam, acrobatics, infestation, uturn, dazzlingGleam, silverWind, bugBuzz, bugBite, covet, thunderPunch, icePunch, zenHeadbutt, snore, gigaDrain, airCutter, focusPunch, shockWave, waterPulse]
}

luvdisc :: Pokemon
luvdisc = Pokemon {
  pokemonIndex = 369,
  pokemonName = "Luvdisc",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 43,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 30,
  defence = 55,
  specialAttack = 40,
  specialDefence = 65,
  pokemonMoves = [absorb, poisonSting, megaDrain, magicalLeaf, gigaDrain, petalBlizzard, petalDance, venoshock, hiddenPower, solarBeam, shadowBall, sludgeBomb, facade, roundMove, energyBall, poisonJab, dazzlingGleam, pinMissile, razorLeaf, leafStorm, extrasensory, seedBomb, gigaDrain, bulletSeed, covet, seedBomb, snore, gigaDrain]
}

bagon :: Pokemon
bagon = Pokemon {
  pokemonIndex = 370,
  pokemonName = "Bagon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Dragon,
  pokemonType2 = None,
  attack = 75,
  defence = 60,
  specialAttack = 40,
  specialDefence = 30,
  pokemonMoves = [pound, sludge, acidSpray, sludgeBomb, belch, gunkShot, venoshock, hiddenPower, iceBeam, solarBeam, shadowBall, sludgeWave, sludgeBomb, facade, roundMove, explosion, infestation, dreamEater, smog, mudSlap, gunkShot, seedBomb, gunkShot, thunderPunch, firePunch, icePunch, snore, gigaDrain, shockWave, waterPulse]
}

shelgon :: Pokemon
shelgon = Pokemon {
  pokemonIndex = 371,
  pokemonName = "Shelgon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Dragon,
  pokemonType2 = None,
  attack = 95,
  defence = 100,
  specialAttack = 60,
  specialDefence = 50,
  pokemonMoves = [bodySlam, gunkShot, pound, sludge, sludge, acidSpray, sludgeBomb, belch, gunkShot, venoshock, hiddenPower, iceBeam, hyperBeam, solarBeam, earthquake, shadowBall, sludgeWave, sludgeBomb, facade, roundMove, explosion, gigaImpact, bulldoze, infestation, dreamEater, smog, mudSlap, gunkShot, seedBomb, gunkShot, thunderPunch, firePunch, icePunch, snore, gigaDrain, shockWave, waterPulse]
}

salamence :: Pokemon
salamence = Pokemon {
  pokemonIndex = 372,
  pokemonName = "Salamence",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Dragon,
  pokemonType2 = Flying,
  attack = 135,
  defence = 80,
  specialAttack = 110,
  specialDefence = 80,
  pokemonMoves = [bite, rage, aquaJet, assurance, iceFang, poisonFang, crunch, takeDown, hiddenPower, iceBeam, blizzard, facade, thief, roundMove, scald, payback, surf, snarl, darkPulse, waterfall, hydroPump, doubleEdge, thrash, ancientPower, swift, brine, psychicFangs, bounce, uproar, icyWind, zenHeadbutt, snore, waterPulse]
}

beldum :: Pokemon
beldum = Pokemon {
  pokemonIndex = 373,
  pokemonName = "Beldum",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Steel,
  pokemonType2 = Psychic,
  attack = 55,
  defence = 80,
  specialAttack = 35,
  specialDefence = 60,
  pokemonMoves = [slash, nightSlash, feint, bite, rage, rage, aquaJet, assurance, iceFang, poisonFang, crunch, skullBash, nightSlash, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, thief, roundMove, scald, payback, gigaImpact, bulldoze, poisonJab, surf, snarl, darkPulse, waterfall, hydroPump, doubleEdge, thrash, ancientPower, swift, brine, psychicFangs, bounce, uproar, icyWind, zenHeadbutt, snore, waterPulse, takeDown]
}

metang :: Pokemon
metang = Pokemon {
  pokemonIndex = 374,
  pokemonName = "Metang",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Steel,
  pokemonType2 = Psychic,
  attack = 75,
  defence = 100,
  specialAttack = 55,
  specialDefence = 80,
  pokemonMoves = [slash, nightSlash, feint, bite, rage, rage, aquaJet, assurance, iceFang, poisonFang, crunch, skullBash, nightSlash, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, thief, roundMove, scald, payback, gigaImpact, bulldoze, poisonJab, surf, snarl, darkPulse, waterfall, hydroPump, doubleEdge, thrash, ancientPower, swift, brine, psychicFangs, bounce, uproar, icyWind, zenHeadbutt, snore, waterPulse, takeDown]
}

metagross :: Pokemon
metagross = Pokemon {
  pokemonIndex = 375,
  pokemonName = "Metagross",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Steel,
  pokemonType2 = Psychic,
  attack = 135,
  defence = 130,
  specialAttack = 95,
  specialDefence = 90,
  pokemonMoves = [waterGun, rollout, whirlpool, astonish, waterPulse, brine, dive, bounce, hydroPump, hiddenPower, iceBeam, blizzard, earthquake, rockTomb, facade, roundMove, echoedVoice, scald, bulldoze, surf, waterfall, doubleEdge, thrash, snore, bodySlam, zenHeadbutt, clearSmog, bounce, icyWind, zenHeadbutt, hyperVoice, snore, waterPulse]
}

regirock :: Pokemon
regirock = Pokemon {
  pokemonIndex = 376,
  pokemonName = "Regirock",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Rock,
  pokemonType2 = None,
  attack = 100,
  defence = 200,
  specialAttack = 50,
  specialDefence = 100,
  pokemonMoves = [waterGun, rollout, waterGun, rollout, whirlpool, astonish, waterPulse, brine, dive, bounce, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, roundMove, echoedVoice, scald, gigaImpact, bulldoze, surf, waterfall, doubleEdge, thrash, snore, bodySlam, zenHeadbutt, clearSmog, ironHead, bounce, icyWind, zenHeadbutt, hyperVoice, snore, waterPulse]
}

regice :: Pokemon
regice = Pokemon {
  pokemonIndex = 377,
  pokemonName = "Regice",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Ice,
  pokemonType2 = None,
  attack = 50,
  defence = 100,
  specialAttack = 100,
  specialDefence = 200,
  pokemonMoves = [tackle, ember, flameBurst, lavaPlume, earthPower, takeDown, earthquake, flamethrower, doubleEdge, hiddenPower, earthquake, flamethrower, fireBlast, rockTomb, facade, flameCharge, roundMove, echoedVoice, overheat, bulldoze, rockSlide, bodySlam, rollout, stomp, ancientPower, mudBomb, heatWave, ironHead, ironHead, earthPower, snore, heatWave]
}

registeel :: Pokemon
registeel = Pokemon {
  pokemonIndex = 378,
  pokemonName = "Registeel",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Steel,
  pokemonType2 = None,
  attack = 75,
  defence = 150,
  specialAttack = 75,
  specialDefence = 150,
  pokemonMoves = [rockSlide, tackle, ember, ember, flameBurst, lavaPlume, earthPower, takeDown, earthquake, hiddenPower, hyperBeam, solarBeam, earthquake, flamethrower, fireBlast, rockTomb, facade, flameCharge, roundMove, echoedVoice, overheat, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, flashCannon, bodySlam, rollout, stomp, ancientPower, mudBomb, heatWave, ironHead, ironHead, earthPower, snore, heatWave, flamethrower, doubleEdge]
}

latias :: Pokemon
latias = Pokemon {
  pokemonIndex = 379,
  pokemonName = "Latias",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Dragon,
  pokemonType2 = Psychic,
  attack = 80,
  defence = 90,
  specialAttack = 110,
  specialDefence = 130,
  pokemonMoves = [rockSlide, tackle, ember, ember, flameBurst, lavaPlume, earthPower, takeDown, earthquake, hiddenPower, hyperBeam, solarBeam, earthquake, flamethrower, fireBlast, rockTomb, facade, flameCharge, roundMove, echoedVoice, overheat, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, flashCannon, bodySlam, rollout, stomp, ancientPower, mudBomb, heatWave, ironHead, ironHead, earthPower, snore, heatWave, flamethrower, doubleEdge]
}

latios :: Pokemon
latios = Pokemon {
  pokemonIndex = 380,
  pokemonName = "Latios",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Dragon,
  pokemonType2 = Psychic,
  attack = 90,
  defence = 80,
  specialAttack = 130,
  specialDefence = 110,
  pokemonMoves = [ember, smog, rapidSpin, fireSpin, flameWheel, lavaPlume, bodySlam, flamethrower, heatWave, inferno, hiddenPower, hyperBeam, solarBeam, earthquake, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, flameCharge, roundMove, overheat, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, skullBash, flameBurst, clearSmog, superpower, earthPower, superpower, ironTail, snore, heatWave]
}

kyogre :: Pokemon
kyogre = Pokemon {
  pokemonIndex = 381,
  pokemonName = "Kyogre",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 100,
  defence = 90,
  specialAttack = 150,
  specialDefence = 140,
  pokemonMoves = [psybeam, zenHeadbutt, powerGem, snore, psyshock, payback, psychic, bounce, psyshock, hiddenPower, psychic, shadowBall, facade, thief, roundMove, chargeBeam, payback, dreamEater, futureSight, extrasensory, zenHeadbutt, covet, signalBeam, bounce, icyWind, zenHeadbutt, ironTail, snore, shockWave]
}

groudon :: Pokemon
groudon = Pokemon {
  pokemonIndex = 382,
  pokemonName = "Groudon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 150,
  defence = 140,
  specialAttack = 100,
  specialDefence = 90,
  pokemonMoves = [belch, psybeam, psybeam, zenHeadbutt, powerGem, snore, psyshock, payback, psychic, bounce, psyshock, hiddenPower, hyperBeam, psychic, shadowBall, brickBreak, facade, thief, roundMove, focusBlast, energyBall, chargeBeam, payback, gigaImpact, bulldoze, dreamEater, futureSight, extrasensory, zenHeadbutt, covet, signalBeam, bounce, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave]
}

rayquaza :: Pokemon
rayquaza = Pokemon {
  pokemonIndex = 383,
  pokemonName = "Rayquaza",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 105,
  pokemonType1 = Dragon,
  pokemonType2 = Flying,
  attack = 150,
  defence = 90,
  specialAttack = 150,
  specialDefence = 90,
  pokemonMoves = [tackle, feintAttack, psybeam, dizzyPunch, suckerPunch, uproar, doubleEdge, thrash, hiddenPower, psychic, shadowBall, brickBreak, rockTomb, facade, thief, roundMove, rockSlide, dreamEater, wildCharge, smellingSalts, fakeOut, psychoCut, rapidSpin, icyWind, waterPulse, covet, uproar, thunderPunch, firePunch, icePunch, lastResort, icyWind, zenHeadbutt, hyperVoice, snore, drainPunch, focusPunch, shockWave, waterPulse]
}

jirachi :: Pokemon
jirachi = Pokemon {
  pokemonIndex = 384,
  pokemonName = "Jirachi",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Steel,
  pokemonType2 = Psychic,
  attack = 100,
  defence = 100,
  specialAttack = 100,
  specialDefence = 100,
  pokemonMoves = [bite, feintAttack, mudSlap, bulldoze, sandTomb, rockSlide, dig, crunch, earthPower, feint, earthquake, superpower, hyperBeam, hiddenPower, hyperBeam, solarBeam, earthquake, rockTomb, facade, roundMove, bulldoze, rockSlide, quickAttack, gust, furyCutter, mudShot, earthPower, bugBite, signalBeam, bugBite, signalBeam, earthPower, superpower, snore, gigaDrain]
}

deoxys :: Pokemon
deoxys = Pokemon {
  pokemonIndex = 385,
  pokemonName = "Deoxys",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 150,
  defence = 50,
  specialAttack = 150,
  specialDefence = 50,
  pokemonMoves = [dragonBreath, feintAttack, mudSlap, bulldoze, sandTomb, rockSlide, earthPower, bugBuzz, earthquake, uproar, hyperBeam, boomburst, hiddenPower, hyperBeam, solarBeam, earthquake, rockTomb, facade, roundMove, steelWing, fly, bulldoze, rockSlide, uturn, dracoMeteor, quickAttack, gust, furyCutter, mudShot, earthPower, bugBite, signalBeam, bugBite, signalBeam, uproar, earthPower, superpower, dragonPulse, snore, heatWave, gigaDrain, airCutter, outrage, bite, dig, crunch, feint, superpower]
}

turtwig :: Pokemon
turtwig = Pokemon {
  pokemonIndex = 386,
  pokemonName = "Turtwig",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 68,
  defence = 64,
  specialAttack = 45,
  specialDefence = 55,
  pokemonMoves = [dragonClaw, dragonBreath, feintAttack, mudSlap, bulldoze, sandTomb, rockSlide, earthPower, dragonTail, earthquake, uproar, hyperBeam, dragonRush, dragonClaw, hiddenPower, hyperBeam, solarBeam, earthquake, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, steelWing, brutalSwing, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, dragonTail, uturn, dracoMeteor, quickAttack, gust, furyCutter, mudShot, earthPower, bugBite, signalBeam, bugBite, signalBeam, uproar, thunderPunch, firePunch, earthPower, superpower, dragonPulse, ironTail, snore, heatWave, gigaDrain, airCutter, outrage, bugBuzz, boomburst, bite, dig, crunch, feint, superpower]
}

grotle :: Pokemon
grotle = Pokemon {
  pokemonIndex = 387,
  pokemonName = "Grotle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 89,
  defence = 85,
  specialAttack = 55,
  specialDefence = 65,
  pokemonMoves = [poisonSting, absorb, needleArm, feintAttack, payback, suckerPunch, pinMissile, energyBall, venoshock, hiddenPower, solarBeam, brickBreak, facade, roundMove, energyBall, payback, poisonJab, darkPulse, acid, dynamicPunch, smellingSalts, magicalLeaf, seedBomb, fellStinger, belch, seedBomb, thunderPunch, snore, gigaDrain, drainPunch, focusPunch]
}

torterra :: Pokemon
torterra = Pokemon {
  pokemonIndex = 388,
  pokemonName = "Torterra",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Grass,
  pokemonType2 = Ground,
  attack = 109,
  defence = 105,
  specialAttack = 75,
  specialDefence = 85,
  pokemonMoves = [revenge, poisonSting, absorb, absorb, needleArm, feintAttack, payback, suckerPunch, pinMissile, energyBall, venoshock, hiddenPower, hyperBeam, solarBeam, brickBreak, facade, roundMove, focusBlast, energyBall, payback, gigaImpact, poisonJab, darkPulse, acid, dynamicPunch, smellingSalts, magicalLeaf, seedBomb, fellStinger, belch, seedBomb, thunderPunch, foulPlay, superpower, snore, gigaDrain, drainPunch, focusPunch]
}

chimchar :: Pokemon
chimchar = Pokemon {
  pokemonIndex = 389,
  pokemonName = "Chimchar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 44,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 58,
  defence = 44,
  specialAttack = 58,
  specialDefence = 44,
  pokemonMoves = [peck, astonish, furyAttack, disarmingVoice, roundMove, takeDown, dragonPulse, moonblast, hiddenPower, iceBeam, solarBeam, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, fly, dreamEater, dazzlingGleam, pursuit, rage, dragonRush, hyperVoice, steelWing, uproar, dragonPulse, hyperVoice, snore, heatWave, skyAttack, airCutter, outrage]
}

monferno :: Pokemon
monferno = Pokemon {
  pokemonIndex = 390,
  pokemonName = "Monferno",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 64,
  pokemonType1 = Fire,
  pokemonType2 = Fighting,
  attack = 78,
  defence = 52,
  specialAttack = 78,
  specialDefence = 52,
  pokemonMoves = [dragonBreath, skyAttack, pluck, peck, astonish, astonish, furyAttack, disarmingVoice, roundMove, takeDown, dragonPulse, moonblast, skyAttack, dragonClaw, hiddenPower, iceBeam, hyperBeam, solarBeam, earthquake, flamethrower, fireBlast, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, gigaImpact, fly, bulldoze, dreamEater, dazzlingGleam, dracoMeteor, pursuit, rage, dragonRush, hyperVoice, steelWing, uproar, dragonPulse, hyperVoice, ironTail, snore, heatWave, skyAttack, airCutter, outrage]
}

infernape :: Pokemon
infernape = Pokemon {
  pokemonIndex = 391,
  pokemonName = "Infernape",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 76,
  pokemonType1 = Fire,
  pokemonType2 = Fighting,
  attack = 104,
  defence = 71,
  specialAttack = 104,
  specialDefence = 71,
  pokemonMoves = [dragonBreath, skyAttack, pluck, peck, astonish, astonish, furyAttack, disarmingVoice, roundMove, takeDown, dragonPulse, moonblast, skyAttack, dragonClaw, hiddenPower, iceBeam, hyperBeam, solarBeam, earthquake, flamethrower, fireBlast, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, gigaImpact, fly, bulldoze, dreamEater, dazzlingGleam, dracoMeteor, pursuit, rage, dragonRush, hyperVoice, steelWing, uproar, dragonPulse, hyperVoice, ironTail, snore, heatWave, skyAttack, airCutter, outrage]
}

piplup :: Pokemon
piplup = Pokemon {
  pokemonIndex = 392,
  pokemonName = "Piplup",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 53,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 51,
  defence = 53,
  specialAttack = 61,
  specialDefence = 56,
  pokemonMoves = [scratch, quickAttack, furyCutter, pursuit, slash, revenge, crushClaw, falseSwipe, xScissor, closeCombat, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, falseSwipe, shadowClaw, payback, rockSlide, xScissor, poisonJab, doubleKick, razorWind, furySwipes, nightSlash, metalClaw, doubleHit, ironTail, feint, thunderPunch, firePunch, icePunch, lastResort, icyWind, ironTail, snore, knockOff, gigaDrain, focusPunch, shockWave, waterPulse]
}

prinplup :: Pokemon
prinplup = Pokemon {
  pokemonIndex = 393,
  pokemonName = "Prinplup",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 64,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 66,
  defence = 68,
  specialAttack = 81,
  specialDefence = 76,
  pokemonMoves = [wrap, bite, lick, poisonTail, feint, venoshock, poisonFang, nightSlash, poisonJab, crunch, belch, venoshock, hiddenPower, earthquake, sludgeWave, flamethrower, sludgeBomb, facade, thief, roundMove, brutalSwing, payback, bulldoze, xScissor, dragonTail, infestation, poisonJab, darkPulse, bodySlam, assurance, nightSlash, ironTail, aquaTail, ironTail, bind, snore, knockOff, gigaDrain]
}

empoleon :: Pokemon
empoleon = Pokemon {
  pokemonIndex = 394,
  pokemonName = "Empoleon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 84,
  pokemonType1 = Water,
  pokemonType2 = Steel,
  attack = 86,
  defence = 88,
  specialAttack = 111,
  specialDefence = 101,
  pokemonMoves = [powerGem, psyshock, moonblast, tackle, confusion, rockThrow, rockSlide, psychic, stoneEdge, futureSight, explosion, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, earthquake, psychic, shadowBall, rockTomb, facade, roundMove, chargeBeam, acrobatics, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, dreamEater, signalBeam, ironHead, earthPower, icyWind, zenHeadbutt, snore]
}

starly :: Pokemon
starly = Pokemon {
  pokemonIndex = 395,
  pokemonName = "Starly",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 55,
  defence = 30,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [flareBlitz, tackle, confusion, rockThrow, fireSpin, rockSlide, psychic, stoneEdge, solarBeam, explosion, psyshock, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, psychic, shadowBall, flamethrower, fireBlast, rockTomb, facade, roundMove, overheat, chargeBeam, acrobatics, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, dreamEater, signalBeam, ironHead, earthPower, zenHeadbutt, snore, heatWave]
}

staravia :: Pokemon
staravia = Pokemon {
  pokemonIndex = 396,
  pokemonName = "Staravia",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 75,
  defence = 50,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [mudSlap, waterGun, mudBomb, waterPulse, snore, aquaTail, earthquake, muddyWater, futureSight, hiddenPower, iceBeam, blizzard, earthquake, rockTomb, facade, roundMove, scald, bulldoze, surf, waterfall, thrash, whirlpool, spark, hydroPump, takeDown, earthPower, mudShot, muddyWater, bounce, earthPower, icyWind, aquaTail, snore, waterPulse]
}

staraptor :: Pokemon
staraptor = Pokemon {
  pokemonIndex = 397,
  pokemonName = "Staraptor",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 120,
  defence = 70,
  specialAttack = 50,
  specialDefence = 60,
  pokemonMoves = [thrash, belch, zenHeadbutt, mudSlap, waterGun, waterGun, mudBomb, waterPulse, snore, aquaTail, earthquake, muddyWater, futureSight, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, roundMove, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, surf, waterfall, thrash, whirlpool, spark, hydroPump, takeDown, earthPower, mudShot, muddyWater, bounce, earthPower, icyWind, aquaTail, zenHeadbutt, snore, waterPulse]
}

bidoof :: Pokemon
bidoof = Pokemon {
  pokemonIndex = 398,
  pokemonName = "Bidoof",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 59,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 45,
  defence = 40,
  specialAttack = 35,
  specialDefence = 40,
  pokemonMoves = [bubble, viceGrip, bubbleBeam, doubleHit, knockOff, nightSlash, razorShell, crunch, crabhammer, hiddenPower, iceBeam, blizzard, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, falseSwipe, scald, payback, rockSlide, xScissor, surf, waterfall, bodySlam, ancientPower, knockOff, superpower, metalClaw, chipAway, doubleEdge, aquaJet, superpower, icyWind, snore, knockOff, waterPulse]
}

bibarel :: Pokemon
bibarel = Pokemon {
  pokemonIndex = 399,
  pokemonName = "Bibarel",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 79,
  pokemonType1 = Normal,
  pokemonType2 = Water,
  attack = 85,
  defence = 60,
  specialAttack = 55,
  specialDefence = 60,
  pokemonMoves = [swift, bubble, viceGrip, viceGrip, bubbleBeam, doubleHit, knockOff, nightSlash, razorShell, crunch, crabhammer, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, sludgeWave, sludgeBomb, rockTomb, aerialAce, facade, roundMove, falseSwipe, scald, payback, gigaImpact, rockSlide, xScissor, surf, snarl, darkPulse, waterfall, bodySlam, ancientPower, knockOff, superpower, metalClaw, chipAway, doubleEdge, aquaJet, superpower, icyWind, snore, knockOff, waterPulse]
}

kricketot :: Pokemon
kricketot = Pokemon {
  pokemonIndex = 400,
  pokemonName = "Kricketot",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 37,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 25,
  defence = 41,
  specialAttack = 25,
  specialDefence = 41,
  pokemonMoves = [confusion, rapidSpin, mudSlap, rockTomb, psybeam, ancientPower, selfDestruct, extrasensory, earthPower, explosion, psyshock, hiddenPower, iceBeam, solarBeam, smackDown, earthquake, psychic, shadowBall, rockTomb, facade, roundMove, chargeBeam, explosion, bulldoze, rockSlide, dreamEater, dazzlingGleam, signalBeam, drillRun, earthPower, zenHeadbutt, snore]
}

kricketune :: Pokemon
kricketune = Pokemon {
  pokemonIndex = 401,
  pokemonName = "Kricketune",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 77,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 85,
  defence = 51,
  specialAttack = 55,
  specialDefence = 51,
  pokemonMoves = [hyperBeam, confusion, rapidSpin, rapidSpin, mudSlap, rockTomb, psybeam, ancientPower, selfDestruct, extrasensory, earthPower, explosion, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, smackDown, earthquake, psychic, shadowBall, rockTomb, facade, roundMove, chargeBeam, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, dreamEater, dazzlingGleam, signalBeam, drillRun, earthPower, zenHeadbutt, snore]
}

shinx :: Pokemon
shinx = Pokemon {
  pokemonIndex = 402,
  pokemonName = "Shinx",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 65,
  defence = 34,
  specialAttack = 40,
  specialDefence = 34,
  pokemonMoves = [astonish, constrict, acid, ancientPower, brine, gigaDrain, energyBall, hiddenPower, solarBeam, smackDown, sludgeBomb, rockTomb, facade, roundMove, energyBall, rockSlide, infestation, megaDrain, seedBomb, earthPower, bind, snore, gigaDrain]
}

luxio :: Pokemon
luxio = Pokemon {
  pokemonIndex = 403,
  pokemonName = "Luxio",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 85,
  defence = 49,
  specialAttack = 60,
  specialDefence = 49,
  pokemonMoves = [astonish, constrict, acid, acid, ancientPower, brine, gigaDrain, energyBall, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, roundMove, energyBall, gigaImpact, stoneEdge, bulldoze, rockSlide, infestation, megaDrain, seedBomb, earthPower, bind, snore, gigaDrain]
}

luxray :: Pokemon
luxray = Pokemon {
  pokemonIndex = 404,
  pokemonName = "Luxray",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 120,
  defence = 79,
  specialAttack = 95,
  specialDefence = 79,
  pokemonMoves = [scratch, waterGun, furyCutter, smackDown, metalClaw, ancientPower, bugBite, brine, slash, crushClaw, xScissor, rockBlast, hiddenPower, smackDown, brickBreak, rockTomb, aerialAce, facade, roundMove, falseSwipe, rockSlide, xScissor, rapidSpin, knockOff, crossPoison, waterPulse, aquaJet, bugBite, earthPower, snore, knockOff, waterPulse]
}

budew :: Pokemon
budew = Pokemon {
  pokemonIndex = 405,
  pokemonName = "Budew",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 30,
  defence = 35,
  specialAttack = 50,
  specialDefence = 70,
  pokemonMoves = [scratch, waterGun, waterGun, furyCutter, smackDown, metalClaw, ancientPower, slash, brine, slash, crushClaw, xScissor, rockBlast, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, aerialAce, facade, roundMove, falseSwipe, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, flashCannon, rapidSpin, knockOff, crossPoison, waterPulse, aquaJet, bugBite, earthPower, superpower, aquaTail, ironTail, snore, knockOff, waterPulse, bugBite]
}

roserade :: Pokemon
roserade = Pokemon {
  pokemonIndex = 406,
  pokemonName = "Roserade",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 70,
  defence = 65,
  specialAttack = 125,
  specialDefence = 105,
  pokemonMoves = [tackle, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, surf, waterfall, dragonBreath, brine, ironTail, dragonPulse, icyWind, dragonPulse, ironTail, snore, waterPulse]
}

cranidos :: Pokemon
cranidos = Pokemon {
  pokemonIndex = 407,
  pokemonName = "Cranidos",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 67,
  pokemonType1 = Rock,
  pokemonType2 = None,
  attack = 125,
  defence = 40,
  specialAttack = 30,
  specialDefence = 30,
  pokemonMoves = [waterPulse, wrap, waterGun, disarmingVoice, twister, dragonTail, aquaTail, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, scald, brutalSwing, gigaImpact, bulldoze, dragonTail, surf, waterfall, dragonBreath, brine, ironTail, dragonPulse, ironHead, icyWind, aquaTail, dragonPulse, ironTail, bind, snore, waterPulse, tackle]
}

rampardos :: Pokemon
rampardos = Pokemon {
  pokemonIndex = 408,
  pokemonName = "Rampardos",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 97,
  pokemonType1 = Rock,
  pokemonType2 = None,
  attack = 165,
  defence = 60,
  specialAttack = 65,
  specialDefence = 50,
  pokemonMoves = [tackle, waterGun, ember, powderSnow, headbutt, weatherBall, hydroPump, fireBlast, blizzard, hurricane, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, facade, thief, roundMove, energyBall, scald, futureSight, ominousWind, hex, clearSmog, lastResort, icyWind, snore, shockWave, waterPulse]
}

shieldon :: Pokemon
shieldon = Pokemon {
  pokemonIndex = 409,
  pokemonName = "Shieldon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Rock,
  pokemonType2 = Steel,
  attack = 42,
  defence = 118,
  specialAttack = 42,
  specialDefence = 88,
  pokemonMoves = [tackle, waterGun, ember, powderSnow, headbutt, weatherBall, hydroPump, fireBlast, blizzard, hurricane, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, facade, thief, roundMove, energyBall, scald, futureSight, ominousWind, hex, clearSmog, lastResort, icyWind, snore, shockWave, waterPulse]
}

bastiodon :: Pokemon
bastiodon = Pokemon {
  pokemonIndex = 410,
  pokemonName = "Bastiodon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Rock,
  pokemonType2 = Steel,
  attack = 52,
  defence = 168,
  specialAttack = 47,
  specialDefence = 138,
  pokemonMoves = [tackle, waterGun, ember, powderSnow, headbutt, weatherBall, hydroPump, fireBlast, blizzard, hurricane, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, facade, thief, roundMove, energyBall, scald, futureSight, ominousWind, hex, clearSmog, lastResort, icyWind, snore, shockWave, waterPulse]
}

burmy :: Pokemon
burmy = Pokemon {
  pokemonIndex = 411,
  pokemonName = "Burmy",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 29,
  defence = 45,
  specialAttack = 29,
  specialDefence = 45,
  pokemonMoves = [tackle, waterGun, ember, powderSnow, headbutt, weatherBall, hydroPump, fireBlast, blizzard, hurricane, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, facade, thief, roundMove, energyBall, scald, futureSight, ominousWind, hex, clearSmog, lastResort, icyWind, snore, shockWave, waterPulse]
}

wormadam :: Pokemon
wormadam = Pokemon {
  pokemonIndex = 412,
  pokemonName = "Wormadam",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Bug,
  pokemonType2 = Grass,
  attack = 59,
  defence = 85,
  specialAttack = 79,
  specialDefence = 105,
  pokemonMoves = [thief, astonish, lick, scratch, bind, shadowSneak, feint, furySwipes, feintAttack, psybeam, ancientPower, slash, shadowClaw, suckerPunch, synchronoise, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, chargeBeam, shadowClaw, rockSlide, fakeOut, dizzyPunch, foulPlay, thunderPunch, firePunch, icePunch, foulPlay, lastResort, icyWind, aquaTail, ironTail, bind, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse]
}

mothim :: Pokemon
mothim = Pokemon {
  pokemonIndex = 413,
  pokemonName = "Mothim",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 94,
  defence = 50,
  specialAttack = 94,
  specialDefence = 50,
  pokemonMoves = [knockOff, shadowSneak, feintAttack, hex, shadowBall, suckerPunch, phantomForce, hiddenPower, thunderbolt, thunder, psychic, shadowBall, facade, thief, roundMove, chargeBeam, payback, dreamEater, darkPulse, dazzlingGleam, astonish, pursuit, shadowSneak, ominousWind, gunkShot, phantomForce, foulPlay, icyWind, snore, knockOff, shockWave]
}

combee :: Pokemon
combee = Pokemon {
  pokemonIndex = 414,
  pokemonName = "Combee",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 30,
  defence = 42,
  specialAttack = 30,
  specialDefence = 42,
  pokemonMoves = [phantomForce, knockOff, shadowSneak, feintAttack, hex, shadowBall, suckerPunch, phantomForce, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, shadowBall, facade, thief, roundMove, chargeBeam, shadowClaw, payback, gigaImpact, infestation, dreamEater, darkPulse, dazzlingGleam, astonish, pursuit, shadowSneak, ominousWind, gunkShot, phantomForce, foulPlay, icyWind, snore, knockOff, shockWave]
}

vespiquen :: Pokemon
vespiquen = Pokemon {
  pokemonIndex = 415,
  pokemonName = "Vespiquen",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 80,
  defence = 102,
  specialAttack = 80,
  specialDefence = 102,
  pokemonMoves = [phantomForce, knockOff, shadowSneak, feintAttack, hex, shadowBall, suckerPunch, phantomForce, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, shadowBall, facade, thief, roundMove, chargeBeam, shadowClaw, payback, gigaImpact, infestation, dreamEater, darkPulse, dazzlingGleam, astonish, pursuit, shadowSneak, ominousWind, gunkShot, phantomForce, foulPlay, icyWind, snore, knockOff, shockWave]
}

pachirisu :: Pokemon
pachirisu = Pokemon {
  pokemonIndex = 416,
  pokemonName = "Pachirisu",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 45,
  defence = 70,
  specialAttack = 45,
  specialDefence = 90,
  pokemonMoves = [astonish, shadowSneak, pursuit, hex, shadowBall, payback, futureSight, hiddenPower, iceBeam, blizzard, psychic, shadowBall, facade, thief, roundMove, chargeBeam, payback, infestation, dreamEater, darkPulse, feintAttack, ominousWind, darkPulse, icyWind, snore]
}

buizel :: Pokemon
buizel = Pokemon {
  pokemonIndex = 417,
  pokemonName = "Buizel",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 65,
  defence = 35,
  specialAttack = 60,
  specialDefence = 30,
  pokemonMoves = [shadowPunch, futureSight, firePunch, icePunch, thunderPunch, bind, astonish, astonish, shadowSneak, pursuit, hex, shadowBall, payback, futureSight, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, shadowBall, brickBreak, rockTomb, facade, thief, roundMove, chargeBeam, payback, gigaImpact, bulldoze, rockSlide, infestation, dreamEater, darkPulse, feintAttack, ominousWind, darkPulse, thunderPunch, firePunch, icePunch, icyWind, bind, snore, focusPunch]
}

floatzel :: Pokemon
floatzel = Pokemon {
  pokemonIndex = 418,
  pokemonName = "Floatzel",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 105,
  defence = 55,
  specialAttack = 85,
  specialDefence = 50,
  pokemonMoves = [leafStorm, gust, razorLeaf, stomp, magicalLeaf, leafTornado, airSlash, bodySlam, solarBeam, leafStorm, hiddenPower, hyperBeam, solarBeam, earthquake, aerialAce, facade, roundMove, steelWing, energyBall, brutalSwing, gigaImpact, fly, bulldoze, headbutt, slam, razorWind, leafStorm, leafBlade, bulletSeed, seedBomb, dragonPulse, snore, gigaDrain, airCutter, outrage]
}

cherubi :: Pokemon
cherubi = Pokemon {
  pokemonIndex = 419,
  pokemonName = "Cherubi",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 35,
  defence = 45,
  specialAttack = 62,
  specialDefence = 53,
  pokemonMoves = [synchronoise, wrap, astonish, confusion, astonish, confusion, takeDown, extrasensory, uproar, doubleEdge, synchronoise, psyshock, hiddenPower, psychic, shadowBall, facade, roundMove, echoedVoice, energyBall, chargeBeam, dreamEater, dazzlingGleam, futureSight, storedPower, signalBeam, uproar, lastResort, icyWind, zenHeadbutt, hyperVoice, bind, snore, knockOff, shockWave, lastResort]
}

cherrim :: Pokemon
cherrim = Pokemon {
  pokemonIndex = 420,
  pokemonName = "Cherrim",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 60,
  defence = 70,
  specialAttack = 87,
  specialDefence = 78,
  pokemonMoves = [futureSight, scratch, feint, quickAttack, quickAttack, pursuit, bite, slash, nightSlash, psychoCut, suckerPunch, razorWind, futureSight, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, falseSwipe, chargeBeam, brutalSwing, shadowClaw, payback, gigaImpact, stoneEdge, rockSlide, xScissor, dreamEater, snarl, darkPulse, feintAttack, doubleEdge, zenHeadbutt, suckerPunch, assurance, megahorn, hex, playRough, bounce, foulPlay, superpower, icyWind, zenHeadbutt, ironTail, snore, knockOff, shockWave, waterPulse]
}

shellos :: Pokemon
shellos = Pokemon {
  pokemonIndex = 421,
  pokemonName = "Shellos",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 76,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 48,
  defence = 48,
  specialAttack = 57,
  specialDefence = 62,
  pokemonMoves = [futureSight, scratch, feint, quickAttack, quickAttack, pursuit, bite, slash, nightSlash, psychoCut, suckerPunch, razorWind, futureSight, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, falseSwipe, chargeBeam, brutalSwing, shadowClaw, payback, gigaImpact, stoneEdge, rockSlide, xScissor, dreamEater, snarl, darkPulse, feintAttack, doubleEdge, zenHeadbutt, suckerPunch, assurance, megahorn, hex, playRough, bounce, foulPlay, superpower, icyWind, zenHeadbutt, ironTail, snore, knockOff, shockWave, waterPulse]
}

ambipom :: Pokemon
ambipom = Pokemon {
  pokemonIndex = 423,
  pokemonName = "Ambipom",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 100,
  defence = 66,
  specialAttack = 60,
  specialDefence = 66,
  pokemonMoves = [powderSnow, iceShard, icyWind, bite, iceFang, headbutt, frostBreath, crunch, blizzard, hiddenPower, iceBeam, blizzard, shadowBall, facade, roundMove, frostBreath, rollout, weatherBall, avalanche, hex, icyWind, snore, waterPulse]
}

drifloon :: Pokemon
drifloon = Pokemon {
  pokemonIndex = 424,
  pokemonName = "Drifloon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Ghost,
  pokemonType2 = Flying,
  attack = 50,
  defence = 34,
  specialAttack = 60,
  specialDefence = 44,
  pokemonMoves = [freezeDry, powderSnow, iceShard, iceShard, icyWind, bite, iceFang, headbutt, frostBreath, crunch, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, shadowBall, facade, roundMove, explosion, payback, gigaImpact, bulldoze, frostBreath, darkPulse, rollout, weatherBall, avalanche, hex, signalBeam, ironHead, icyWind, snore, waterPulse]
}

drifblim :: Pokemon
drifblim = Pokemon {
  pokemonIndex = 425,
  pokemonName = "Drifblim",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 150,
  pokemonType1 = Ghost,
  pokemonType2 = Flying,
  attack = 80,
  defence = 44,
  specialAttack = 90,
  specialDefence = 54,
  pokemonMoves = [freezeDry, powderSnow, iceShard, iceShard, icyWind, bite, iceFang, headbutt, frostBreath, crunch, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, shadowBall, facade, roundMove, explosion, payback, gigaImpact, bulldoze, frostBreath, darkPulse, rollout, weatherBall, avalanche, hex, signalBeam, ironHead, icyWind, snore, waterPulse]
}

buneary :: Pokemon
buneary = Pokemon {
  pokemonIndex = 426,
  pokemonName = "Buneary",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 66,
  defence = 44,
  specialAttack = 44,
  specialDefence = 56,
  pokemonMoves = [powderSnow, waterGun, rollout, iceBall, brine, auroraBeam, bodySlam, snore, blizzard, hiddenPower, iceBeam, blizzard, earthquake, rockTomb, facade, roundMove, echoedVoice, bulldoze, frostBreath, rockSlide, surf, waterfall, signalBeam, rollout, waterPulse, signalBeam, icyWind, aquaTail, ironTail, snore, waterPulse]
}

lopunny :: Pokemon
lopunny = Pokemon {
  pokemonIndex = 427,
  pokemonName = "Lopunny",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 76,
  defence = 84,
  specialAttack = 54,
  specialDefence = 96,
  pokemonMoves = [powderSnow, waterGun, rollout, iceBall, brine, auroraBeam, bodySlam, snore, blizzard, hiddenPower, iceBeam, blizzard, earthquake, rockTomb, facade, roundMove, echoedVoice, bulldoze, frostBreath, rockSlide, surf, waterfall, signalBeam, rollout, waterPulse, signalBeam, icyWind, aquaTail, ironTail, snore, waterPulse]
}

mismagius :: Pokemon
mismagius = Pokemon {
  pokemonIndex = 428,
  pokemonName = "Mismagius",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Ghost,
  pokemonType2 = None,
  attack = 60,
  defence = 60,
  specialAttack = 105,
  specialDefence = 105,
  pokemonMoves = [iceFang, crunch, powderSnow, waterGun, rollout, iceBall, brine, auroraBeam, bodySlam, snore, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, roundMove, echoedVoice, gigaImpact, bulldoze, frostBreath, rockSlide, surf, waterfall, signalBeam, rollout, waterPulse, signalBeam, ironHead, icyWind, aquaTail, ironTail, snore, waterPulse]
}

honchkrow :: Pokemon
honchkrow = Pokemon {
  pokemonIndex = 429,
  pokemonName = "Honchkrow",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Dark,
  pokemonType2 = Flying,
  attack = 125,
  defence = 52,
  specialAttack = 105,
  specialDefence = 52,
  pokemonMoves = [clamp, waterGun, whirlpool, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, surf, waterfall, bodySlam, muddyWater, waterPulse, brine, icyWind, snore, waterPulse]
}

glameow :: Pokemon
glameow = Pokemon {
  pokemonIndex = 430,
  pokemonName = "Glameow",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 49,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 55,
  defence = 42,
  specialAttack = 42,
  specialDefence = 37,
  pokemonMoves = [whirlpool, bite, feintAttack, waterPulse, iceFang, brine, suckerPunch, dive, crunch, aquaTail, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, rockTomb, facade, roundMove, scald, gigaImpact, infestation, surf, waterfall, bodySlam, muddyWater, waterPulse, brine, bounce, icyWind, aquaTail, bind, snore, waterPulse, clamp, waterGun]
}

purugly :: Pokemon
purugly = Pokemon {
  pokemonIndex = 431,
  pokemonName = "Purugly",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 71,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 82,
  defence = 64,
  specialAttack = 64,
  specialDefence = 59,
  pokemonMoves = [whirlpool, confusion, drainingKiss, waterPulse, dive, psychic, aquaTail, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, psychic, shadowBall, facade, roundMove, scald, gigaImpact, infestation, surf, waterfall, bodySlam, muddyWater, waterPulse, brine, signalBeam, bounce, icyWind, aquaTail, bind, snore, waterPulse, clamp, waterGun]
}

chingling :: Pokemon
chingling = Pokemon {
  pokemonIndex = 432,
  pokemonName = "Chingling",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 30,
  defence = 50,
  specialAttack = 65,
  specialDefence = 50,
  pokemonMoves = [headSmash, tackle, waterGun, waterGun, rockTomb, ancientPower, dive, takeDown, hydroPump, doubleEdge, headSmash, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, earthquake, rockTomb, facade, roundMove, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, surf, waterfall, skullBash, aquaTail, snore, mudSlap, muddyWater, mudShot, brine, zenHeadbutt, bounce, earthPower, icyWind, aquaTail, zenHeadbutt, snore, waterPulse]
}

stunky :: Pokemon
stunky = Pokemon {
  pokemonIndex = 433,
  pokemonName = "Stunky",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 63,
  pokemonType1 = Poison,
  pokemonType2 = Dark,
  attack = 63,
  defence = 47,
  specialAttack = 41,
  specialDefence = 41,
  pokemonMoves = [tackle, waterGun, drainingKiss, waterPulse, heartStamp, takeDown, hydroPump, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, surf, waterfall, aquaJet, brine, bounce, icyWind, snore, waterPulse]
}

skuntank :: Pokemon
skuntank = Pokemon {
  pokemonIndex = 434,
  pokemonName = "Skuntank",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 103,
  pokemonType1 = Poison,
  pokemonType2 = Dark,
  attack = 93,
  defence = 67,
  specialAttack = 71,
  specialDefence = 61,
  pokemonMoves = [rage, ember, bite, dragonBreath, headbutt, crunch, dragonClaw, zenHeadbutt, flamethrower, doubleEdge, dragonClaw, hiddenPower, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, shadowClaw, rockSlide, dracoMeteor, hydroPump, thrash, twister, fireFang, dragonRush, dragonPulse, zenHeadbutt, dragonPulse, hyperVoice, snore, outrage]
}

bronzor :: Pokemon
bronzor = Pokemon {
  pokemonIndex = 435,
  pokemonName = "Bronzor",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 57,
  pokemonType1 = Steel,
  pokemonType2 = Psychic,
  attack = 24,
  defence = 86,
  specialAttack = 24,
  specialDefence = 86,
  pokemonMoves = [rage, ember, bite, ember, bite, dragonBreath, headbutt, crunch, dragonClaw, zenHeadbutt, flamethrower, doubleEdge, dragonClaw, hiddenPower, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, shadowClaw, rockSlide, dracoMeteor, hydroPump, thrash, twister, fireFang, dragonRush, dragonPulse, zenHeadbutt, dragonPulse, hyperVoice, snore, outrage]
}

bronzong :: Pokemon
bronzong = Pokemon {
  pokemonIndex = 436,
  pokemonName = "Bronzong",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 67,
  pokemonType1 = Steel,
  pokemonType2 = Psychic,
  attack = 89,
  defence = 116,
  specialAttack = 79,
  specialDefence = 116,
  pokemonMoves = [fly, dragonTail, fireFang, thunderFang, rage, ember, bite, ember, bite, dragonBreath, headbutt, crunch, dragonClaw, zenHeadbutt, flamethrower, doubleEdge, dragonClaw, hiddenPower, hyperBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, steelWing, brutalSwing, shadowClaw, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, dragonTail, dracoMeteor, hydroPump, thrash, twister, fireFang, dragonRush, dragonPulse, aquaTail, zenHeadbutt, dragonPulse, hyperVoice, ironTail, snore, heatWave, airCutter, outrage]
}

bonsly :: Pokemon
bonsly = Pokemon {
  pokemonIndex = 437,
  pokemonName = "Bonsly",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Rock,
  pokemonType2 = None,
  attack = 80,
  defence = 95,
  specialAttack = 10,
  specialDefence = 45,
  pokemonMoves = [fly, dragonTail, fireFang, thunderFang, rage, ember, bite, ember, bite, dragonBreath, headbutt, crunch, dragonClaw, zenHeadbutt, flamethrower, doubleEdge, dragonClaw, hiddenPower, hyperBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, steelWing, brutalSwing, shadowClaw, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, dragonTail, dracoMeteor, hydroPump, thrash, twister, fireFang, dragonRush, dragonPulse, aquaTail, zenHeadbutt, dragonPulse, hyperVoice, ironTail, snore, heatWave, airCutter, outrage]
}

mime :: Pokemon
mime = Pokemon {
  pokemonIndex = 438,
  pokemonName = "Mime",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 20,
  pokemonType1 = Psychic,
  pokemonType2 = Fairy,
  attack = 25,
  defence = 45,
  specialAttack = 70,
  specialDefence = 90,
  pokemonMoves = [takeDown, ironHead, zenHeadbutt]
}

happiny :: Pokemon
happiny = Pokemon {
  pokemonIndex = 439,
  pokemonName = "Happiny",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 5,
  defence = 5,
  specialAttack = 15,
  specialDefence = 65,
  pokemonMoves = [confusion, metalClaw, confusion, metalClaw, takeDown, pursuit, bulletPunch, zenHeadbutt, psychic, meteorMash, hyperBeam, psyshock, hiddenPower, hyperBeam, earthquake, psychic, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, explosion, bulldoze, rockSlide, flashCannon, signalBeam, ironHead, thunderPunch, icePunch, icyWind, zenHeadbutt, snore]
}

chatot :: Pokemon
chatot = Pokemon {
  pokemonIndex = 440,
  pokemonName = "Chatot",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 76,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 65,
  defence = 45,
  specialAttack = 92,
  specialDefence = 42,
  pokemonMoves = [hammerArm, confusion, metalClaw, takeDown, pursuit, bulletPunch, zenHeadbutt, psychic, meteorMash, hyperBeam, psyshock, hiddenPower, hyperBeam, earthquake, psychic, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, explosion, gigaImpact, bulldoze, rockSlide, flashCannon, signalBeam, ironHead, thunderPunch, icePunch, icyWind, zenHeadbutt, snore]
}

spiritomb :: Pokemon
spiritomb = Pokemon {
  pokemonIndex = 441,
  pokemonName = "Spiritomb",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Ghost,
  pokemonType2 = None,
  attack = 92,
  defence = 108,
  specialAttack = 92,
  specialDefence = 108,
  pokemonMoves = [hammerArm, confusion, metalClaw, takeDown, pursuit, bulletPunch, zenHeadbutt, psychic, meteorMash, hyperBeam, psyshock, hiddenPower, hyperBeam, earthquake, psychic, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, explosion, gigaImpact, bulldoze, rockSlide, flashCannon, signalBeam, ironHead, thunderPunch, icePunch, icyWind, zenHeadbutt, snore]
}

gible :: Pokemon
gible = Pokemon {
  pokemonIndex = 442,
  pokemonName = "Gible",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 58,
  pokemonType1 = Dragon,
  pokemonType2 = Ground,
  attack = 70,
  defence = 45,
  specialAttack = 40,
  specialDefence = 45,
  pokemonMoves = [explosion, stomp, rockThrow, chargeBeam, bulldoze, rockThrow, chargeBeam, bulldoze, ancientPower, stoneEdge, hammerArm, zapCannon, superpower, hyperBeam, hiddenPower, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, rockTomb, facade, roundMove, focusBlast, chargeBeam, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, ironHead, thunderPunch, firePunch, icePunch, earthPower, superpower, snore, drainPunch, focusPunch, shockWave]
}

gabite :: Pokemon
gabite = Pokemon {
  pokemonIndex = 443,
  pokemonName = "Gabite",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 68,
  pokemonType1 = Dragon,
  pokemonType2 = Ground,
  attack = 90,
  defence = 65,
  specialAttack = 50,
  specialDefence = 55,
  pokemonMoves = [explosion, stomp, icyWind, chargeBeam, bulldoze, icyWind, chargeBeam, bulldoze, ancientPower, iceBeam, hammerArm, zapCannon, superpower, hyperBeam, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, rockTomb, facade, roundMove, focusBlast, chargeBeam, explosion, gigaImpact, bulldoze, frostBreath, rockSlide, flashCannon, signalBeam, ironHead, thunderPunch, icePunch, superpower, icyWind, snore, focusPunch, shockWave]
}

garchomp :: Pokemon
garchomp = Pokemon {
  pokemonIndex = 444,
  pokemonName = "Garchomp",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 108,
  pokemonType1 = Dragon,
  pokemonType2 = Ground,
  attack = 130,
  defence = 95,
  specialAttack = 80,
  specialDefence = 85,
  pokemonMoves = [explosion, stomp, metalClaw, chargeBeam, bulldoze, metalClaw, chargeBeam, bulldoze, ancientPower, ironHead, flashCannon, hammerArm, zapCannon, superpower, hyperBeam, hiddenPower, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, rockTomb, aerialAce, facade, roundMove, focusBlast, chargeBeam, explosion, shadowClaw, gigaImpact, bulldoze, rockSlide, flashCannon, ironHead, thunderPunch, icePunch, superpower, snore, focusPunch, shockWave]
}

munchlax :: Pokemon
munchlax = Pokemon {
  pokemonIndex = 445,
  pokemonName = "Munchlax",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 135,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 85,
  defence = 40,
  specialAttack = 40,
  specialDefence = 85,
  pokemonMoves = [storedPower, dragonBreath, mistBall, zenHeadbutt, psychic, dragonPulse, dragonClaw, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, aerialAce, facade, roundMove, steelWing, energyBall, chargeBeam, shadowClaw, gigaImpact, fly, bulldoze, dreamEater, surf, waterfall, dracoMeteor, covet, lastResort, icyWind, zenHeadbutt, dragonPulse, snore, airCutter, shockWave, waterPulse, outrage]
}

riolu :: Pokemon
riolu = Pokemon {
  pokemonIndex = 446,
  pokemonName = "Riolu",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 70,
  defence = 40,
  specialAttack = 35,
  specialDefence = 40,
  pokemonMoves = [storedPower, dragonBreath, mistBall, zenHeadbutt, psychic, dragonPulse, dragonClaw, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, aerialAce, facade, roundMove, steelWing, energyBall, chargeBeam, shadowClaw, gigaImpact, fly, bulldoze, dreamEater, surf, waterfall, dracoMeteor, covet, lastResort, icyWind, zenHeadbutt, dragonPulse, snore, airCutter, shockWave, waterPulse, outrage]
}

lucario :: Pokemon
lucario = Pokemon {
  pokemonIndex = 447,
  pokemonName = "Lucario",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Fighting,
  pokemonType2 = Steel,
  attack = 110,
  defence = 70,
  specialAttack = 115,
  specialDefence = 70,
  pokemonMoves = [storedPower, dragonBreath, lusterPurge, zenHeadbutt, psychic, dragonPulse, dragonClaw, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, aerialAce, facade, roundMove, steelWing, energyBall, chargeBeam, shadowClaw, gigaImpact, fly, bulldoze, dreamEater, surf, waterfall, dracoMeteor, lastResort, icyWind, zenHeadbutt, dragonPulse, snore, airCutter, shockWave, waterPulse, outrage]
}

hippopotas :: Pokemon
hippopotas = Pokemon {
  pokemonIndex = 448,
  pokemonName = "Hippopotas",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 68,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 72,
  defence = 78,
  specialAttack = 38,
  specialDefence = 42,
  pokemonMoves = [storedPower, dragonBreath, lusterPurge, zenHeadbutt, psychic, dragonPulse, dragonClaw, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, aerialAce, facade, roundMove, steelWing, energyBall, chargeBeam, shadowClaw, gigaImpact, fly, bulldoze, dreamEater, surf, waterfall, dracoMeteor, lastResort, icyWind, zenHeadbutt, dragonPulse, snore, airCutter, shockWave, waterPulse, outrage]
}

hippowdon :: Pokemon
hippowdon = Pokemon {
  pokemonIndex = 449,
  pokemonName = "Hippowdon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 108,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 112,
  defence = 118,
  specialAttack = 68,
  specialDefence = 72,
  pokemonMoves = [ancientPower, waterPulse, aquaTail, bodySlam, iceBeam, originPulse, muddyWater, hydroPump, doubleEdge, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, rockTomb, facade, roundMove, scald, gigaImpact, bulldoze, rockSlide, surf, waterfall, signalBeam, ironHead, uproar, icyWind, aquaTail, snore, shockWave, waterPulse]
}

skorupi :: Pokemon
skorupi = Pokemon {
  pokemonIndex = 450,
  pokemonName = "Skorupi",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Poison,
  pokemonType2 = Bug,
  attack = 50,
  defence = 90,
  specialAttack = 30,
  specialDefence = 55,
  pokemonMoves = [ancientPower, waterPulse, aquaTail, bodySlam, iceBeam, originPulse, muddyWater, hydroPump, doubleEdge, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, rockTomb, facade, roundMove, scald, gigaImpact, bulldoze, rockSlide, surf, waterfall, signalBeam, ironHead, uproar, icyWind, aquaTail, snore, shockWave, waterPulse]
}

drapion :: Pokemon
drapion = Pokemon {
  pokemonIndex = 451,
  pokemonName = "Drapion",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Poison,
  pokemonType2 = Dark,
  attack = 90,
  defence = 110,
  specialAttack = 60,
  specialDefence = 75,
  pokemonMoves = [ancientPower, mudShot, earthPower, lavaPlume, earthquake, precipiceBlades, solarBeam, fireBlast, hammerArm, dragonClaw, hiddenPower, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, overheat, focusBlast, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, ironHead, uproar, thunderPunch, firePunch, earthPower, dragonPulse, ironTail, snore, shockWave]
}

croagunk :: Pokemon
croagunk = Pokemon {
  pokemonIndex = 452,
  pokemonName = "Croagunk",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 48,
  pokemonType1 = Poison,
  pokemonType2 = Fighting,
  attack = 61,
  defence = 40,
  specialAttack = 61,
  specialDefence = 40,
  pokemonMoves = [ancientPower, mudShot, earthPower, lavaPlume, earthquake, precipiceBlades, solarBeam, fireBlast, hammerArm, dragonClaw, hiddenPower, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, overheat, focusBlast, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, ironHead, uproar, thunderPunch, firePunch, earthPower, dragonPulse, ironTail, snore, shockWave]
}

toxicroak :: Pokemon
toxicroak = Pokemon {
  pokemonIndex = 453,
  pokemonName = "Toxicroak",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 83,
  pokemonType1 = Poison,
  pokemonType2 = Fighting,
  attack = 106,
  defence = 65,
  specialAttack = 86,
  specialDefence = 65,
  pokemonMoves = [twister, ancientPower, crunch, airSlash, extremeSpeed, dragonPulse, fly, hyperVoice, outrage, hyperBeam, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, echoedVoice, overheat, focusBlast, energyBall, skyDrop, brutalSwing, shadowClaw, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, dragonTail, surf, waterfall, dracoMeteor, dragonAscent, ironHead, uproar, earthPower, icyWind, aquaTail, dragonPulse, hyperVoice, ironTail, bind, snore, shockWave, waterPulse, outrage]
}

carnivine :: Pokemon
carnivine = Pokemon {
  pokemonIndex = 454,
  pokemonName = "Carnivine",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 74,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 100,
  defence = 72,
  specialAttack = 90,
  specialDefence = 72,
  pokemonMoves = [twister, ancientPower, crunch, airSlash, extremeSpeed, dragonPulse, fly, hyperVoice, outrage, hyperBeam, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, echoedVoice, overheat, focusBlast, energyBall, skyDrop, brutalSwing, shadowClaw, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, dragonTail, surf, waterfall, dracoMeteor, dragonAscent, ironHead, uproar, earthPower, icyWind, aquaTail, dragonPulse, hyperVoice, ironTail, bind, snore, shockWave, waterPulse, outrage]
}

finneon :: Pokemon
finneon = Pokemon {
  pokemonIndex = 455,
  pokemonName = "Finneon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 49,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 49,
  defence = 56,
  specialAttack = 49,
  specialDefence = 61,
  pokemonMoves = [confusion, swift, psychic, zenHeadbutt, doubleEdge, futureSight, lastResort, doomDesire, psyshock, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, shadowBall, aerialAce, facade, roundMove, energyBall, chargeBeam, gigaImpact, dreamEater, uturn, flashCannon, dazzlingGleam, signalBeam, ironHead, uproar, thunderPunch, firePunch, icePunch, lastResort, icyWind, zenHeadbutt, snore, drainPunch, shockWave, waterPulse]
}

lumineon :: Pokemon
lumineon = Pokemon {
  pokemonIndex = 456,
  pokemonName = "Lumineon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 69,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 69,
  defence = 76,
  specialAttack = 69,
  specialDefence = 86,
  pokemonMoves = [wrap, knockOff, pursuit, psychic, zenHeadbutt, psychoBoost, hyperBeam, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, rockSlide, poisonJab, dreamEater, flashCannon, darkPulse, signalBeam, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, bind, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse]
}

mantyke :: Pokemon
mantyke = Pokemon {
  pokemonIndex = 457,
  pokemonName = "Mantyke",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Water,
  pokemonType2 = Flying,
  attack = 20,
  defence = 50,
  specialAttack = 60,
  specialDefence = 120,
  pokemonMoves = [wrap, pursuit, psychic, superpower, zenHeadbutt, zapCannon, psychoBoost, hyperBeam, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, rockSlide, poisonJab, dreamEater, flashCannon, darkPulse, signalBeam, superpower, zenHeadbutt, bind, snore, drainPunch, focusPunch, shockWave, waterPulse]
}

snover :: Pokemon
snover = Pokemon {
  pokemonIndex = 458,
  pokemonName = "Snover",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Grass,
  pokemonType2 = Ice,
  attack = 62,
  defence = 50,
  specialAttack = 62,
  specialDefence = 60,
  pokemonMoves = [wrap, knockOff, psychic, zenHeadbutt, psychoBoost, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, rockSlide, poisonJab, dreamEater, flashCannon, darkPulse, signalBeam, zenHeadbutt, bind, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse]
}

abomasnow :: Pokemon
abomasnow = Pokemon {
  pokemonIndex = 459,
  pokemonName = "Abomasnow",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Grass,
  pokemonType2 = Ice,
  attack = 92,
  defence = 75,
  specialAttack = 92,
  specialDefence = 85,
  pokemonMoves = [wrap, knockOff, pursuit, psychic, swift, zenHeadbutt, psychoBoost, extremeSpeed, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, rockSlide, poisonJab, dreamEater, flashCannon, darkPulse, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, bind, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse]
}

weavile :: Pokemon
weavile = Pokemon {
  pokemonIndex = 460,
  pokemonName = "Weavile",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Dark,
  pokemonType2 = Ice,
  attack = 120,
  defence = 65,
  specialAttack = 45,
  specialDefence = 85,
  pokemonMoves = [tackle, absorb, razorLeaf, bite, megaDrain, crunch, gigaDrain, leafStorm, hiddenPower, solarBeam, facade, roundMove, energyBall, frenzyPlant, bodySlam, doubleEdge, sandTomb, seedBomb, thrash, superpower, earthPower, seedBomb, earthPower, superpower, ironTail, snore, gigaDrain]
}

magnezone :: Pokemon
magnezone = Pokemon {
  pokemonIndex = 461,
  pokemonName = "Magnezone",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Electric,
  pokemonType2 = Steel,
  attack = 70,
  defence = 115,
  specialAttack = 130,
  specialDefence = 90,
  pokemonMoves = [tackle, absorb, absorb, razorLeaf, bite, megaDrain, crunch, gigaDrain, leafStorm, hiddenPower, solarBeam, facade, roundMove, energyBall, frenzyPlant, bodySlam, doubleEdge, sandTomb, seedBomb, thrash, superpower, earthPower, seedBomb, earthPower, superpower, ironTail, snore, gigaDrain]
}

lickilicky :: Pokemon
lickilicky = Pokemon {
  pokemonIndex = 462,
  pokemonName = "Lickilicky",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 110,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 85,
  defence = 95,
  specialAttack = 80,
  specialDefence = 95,
  pokemonMoves = [earthquake, woodHammer, tackle, absorb, razorLeaf, absorb, razorLeaf, bite, megaDrain, crunch, gigaDrain, leafStorm, hiddenPower, hyperBeam, solarBeam, earthquake, rockTomb, facade, roundMove, energyBall, gigaImpact, stoneEdge, bulldoze, rockSlide, frenzyPlant, grassPledge, bodySlam, doubleEdge, sandTomb, seedBomb, thrash, superpower, earthPower, ironHead, seedBomb, earthPower, superpower, ironTail, snore, gigaDrain, outrage]
}

rhyperior :: Pokemon
rhyperior = Pokemon {
  pokemonIndex = 463,
  pokemonName = "Rhyperior",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 115,
  pokemonType1 = Ground,
  pokemonType2 = Rock,
  attack = 140,
  defence = 130,
  specialAttack = 55,
  specialDefence = 55,
  pokemonMoves = [scratch, ember, furySwipes, flameWheel, facade, fireSpin, acrobatics, flamethrower, hiddenPower, brickBreak, flamethrower, fireBlast, aerialAce, facade, flameCharge, lowSweep, roundMove, overheat, acrobatics, shadowClaw, uturn, blastBurn, firePunch, thunderPunch, doubleKick, heatWave, fakeOut, blazeKick, focusPunch, submission, covet, gunkShot, uproar, thunderPunch, firePunch, ironTail, snore, heatWave, focusPunch]
}

tangrowth :: Pokemon
tangrowth = Pokemon {
  pokemonIndex = 464,
  pokemonName = "Tangrowth",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 100,
  defence = 125,
  specialAttack = 110,
  specialDefence = 50,
  pokemonMoves = [machPunch, scratch, ember, ember, furySwipes, flameWheel, feint, closeCombat, fireSpin, acrobatics, flareBlitz, hiddenPower, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, lowSweep, roundMove, overheat, focusBlast, acrobatics, shadowClaw, rockSlide, poisonJab, uturn, blastBurn, firePunch, thunderPunch, doubleKick, heatWave, fakeOut, blazeKick, focusPunch, submission, covet, dualChop, gunkShot, thunderPunch, firePunch, ironTail, snore, heatWave, focusPunch, facade, flamethrower]
}

electivire :: Pokemon
electivire = Pokemon {
  pokemonIndex = 465,
  pokemonName = "Electivire",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 123,
  defence = 67,
  specialAttack = 95,
  specialDefence = 85,
  pokemonMoves = [closeCombat, machPunch, flareBlitz, scratch, ember, ember, furySwipes, flameWheel, feint, fireSpin, acrobatics, flareBlitz, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, lowSweep, roundMove, overheat, focusBlast, acrobatics, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, uturn, blastBurn, firePledge, firePunch, thunderPunch, doubleKick, heatWave, fakeOut, blazeKick, focusPunch, submission, covet, dualChop, gunkShot, thunderPunch, firePunch, ironTail, snore, heatWave, focusPunch, facade, flamethrower]
}

magmortar :: Pokemon
magmortar = Pokemon {
  pokemonIndex = 466,
  pokemonName = "Magmortar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 95,
  defence = 67,
  specialAttack = 125,
  specialDefence = 95,
  pokemonMoves = [pound, bubble, peck, bubbleBeam, furyAttack, brine, whirlpool, drillPeck, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, aerialAce, facade, roundMove, echoedVoice, scald, surf, waterfall, hydroCannon, doubleHit, mudSlap, snore, hydroPump, icyWind, covet, signalBeam, icyWind, snore, waterPulse]
}

togekiss :: Pokemon
togekiss = Pokemon {
  pokemonIndex = 467,
  pokemonName = "Togekiss",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Fairy,
  pokemonType2 = Flying,
  attack = 50,
  defence = 95,
  specialAttack = 120,
  specialDefence = 115,
  pokemonMoves = [metalClaw, tackle, bubble, bubble, peck, bubbleBeam, furyAttack, brine, whirlpool, drillPeck, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, aerialAce, facade, roundMove, echoedVoice, scald, shadowClaw, surf, waterfall, hydroCannon, doubleHit, mudSlap, snore, hydroPump, icyWind, covet, signalBeam, icyWind, snore, waterPulse, pound]
}

yanmega :: Pokemon
yanmega = Pokemon {
  pokemonIndex = 468,
  pokemonName = "Yanmega",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 86,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 76,
  defence = 86,
  specialAttack = 116,
  specialDefence = 56,
  pokemonMoves = [aquaJet, metalClaw, tackle, bubble, bubble, peck, bubbleBeam, furyAttack, brine, whirlpool, drillPeck, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, brickBreak, rockTomb, aerialAce, facade, roundMove, echoedVoice, steelWing, scald, shadowClaw, gigaImpact, bulldoze, rockSlide, flashCannon, surf, waterfall, hydroCannon, waterPledge, doubleHit, mudSlap, snore, hydroPump, icyWind, covet, signalBeam, icyWind, snore, knockOff, waterPulse, pound]
}

leafeon :: Pokemon
leafeon = Pokemon {
  pokemonIndex = 469,
  pokemonName = "Leafeon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 110,
  defence = 130,
  specialAttack = 60,
  specialDefence = 65,
  pokemonMoves = [tackle, quickAttack, wingAttack, aerialAce, takeDown, braveBird, hiddenPower, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, fly, uturn, furyAttack, pursuit, astonish, doubleEdge, steelWing, uproar, revenge, uproar, snore, heatWave, airCutter]
}

glaceon :: Pokemon
glaceon = Pokemon {
  pokemonIndex = 470,
  pokemonName = "Glaceon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Ice,
  pokemonType2 = None,
  attack = 60,
  defence = 110,
  specialAttack = 130,
  specialDefence = 95,
  pokemonMoves = [tackle, quickAttack, quickAttack, wingAttack, aerialAce, takeDown, braveBird, hiddenPower, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, fly, uturn, furyAttack, pursuit, astonish, doubleEdge, steelWing, uproar, revenge, uproar, snore, heatWave, airCutter]
}

gliscor :: Pokemon
gliscor = Pokemon {
  pokemonIndex = 471,
  pokemonName = "Gliscor",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Ground,
  pokemonType2 = Flying,
  attack = 95,
  defence = 125,
  specialAttack = 45,
  specialDefence = 75,
  pokemonMoves = [closeCombat, tackle, quickAttack, wingAttack, quickAttack, wingAttack, aerialAce, takeDown, braveBird, hiddenPower, hyperBeam, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, gigaImpact, fly, uturn, furyAttack, pursuit, astonish, doubleEdge, steelWing, uproar, revenge, uproar, snore, heatWave, skyAttack, airCutter]
}

mamoswine :: Pokemon
mamoswine = Pokemon {
  pokemonIndex = 472,
  pokemonName = "Mamoswine",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 110,
  pokemonType1 = Ice,
  pokemonType2 = Ground,
  attack = 130,
  defence = 80,
  specialAttack = 70,
  specialDefence = 60,
  pokemonMoves = [tackle, rollout, headbutt, hyperFang, crunch, takeDown, superpower, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, shadowBall, facade, thief, roundMove, echoedVoice, chargeBeam, quickAttack, doubleEdge, furySwipes, rollout, aquaTail, rockClimb, skullBash, covet, lastResort, superpower, icyWind, aquaTail, ironTail, snore, shockWave]
}

gallade :: Pokemon
gallade = Pokemon {
  pokemonIndex = 474,
  pokemonName = "Gallade",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 68,
  pokemonType1 = Psychic,
  pokemonType2 = Fighting,
  attack = 125,
  defence = 65,
  specialAttack = 65,
  specialDefence = 115,
  pokemonMoves = [struggleBug, bugBite, bugBite, uproar, snore]
}

probopass :: Pokemon
probopass = Pokemon {
  pokemonIndex = 475,
  pokemonName = "Probopass",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Rock,
  pokemonType2 = Steel,
  attack = 55,
  defence = 145,
  specialAttack = 75,
  specialDefence = 150,
  pokemonMoves = [furyCutter, absorb, slash, xScissor, fellStinger, nightSlash, bugBuzz, hiddenPower, hyperBeam, leechLife, brickBreak, aerialAce, facade, roundMove, echoedVoice, falseSwipe, gigaImpact, xScissor, infestation, bugBite, uproar, hyperVoice, snore, knockOff, struggleBug, bugBite]
}

dusknoir :: Pokemon
dusknoir = Pokemon {
  pokemonIndex = 476,
  pokemonName = "Dusknoir",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Ghost,
  pokemonType2 = None,
  attack = 100,
  defence = 135,
  specialAttack = 65,
  specialDefence = 135,
  pokemonMoves = [tackle, spark, bite, thunderFang, crunch, discharge, wildCharge, hiddenPower, thunderbolt, thunder, facade, thief, roundMove, chargeBeam, voltSwitch, wildCharge, snarl, iceFang, fireFang, thunderFang, quickAttack, takeDown, nightSlash, shockWave, swift, doubleKick, signalBeam, signalBeam, ironTail, snore, shockWave]
}

froslass :: Pokemon
froslass = Pokemon {
  pokemonIndex = 477,
  pokemonName = "Froslass",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Ice,
  pokemonType2 = Ghost,
  attack = 80,
  defence = 70,
  specialAttack = 80,
  specialDefence = 70,
  pokemonMoves = [tackle, spark, bite, thunderFang, crunch, discharge, wildCharge, hiddenPower, thunderbolt, thunder, facade, thief, roundMove, chargeBeam, voltSwitch, wildCharge, snarl, iceFang, fireFang, thunderFang, quickAttack, takeDown, nightSlash, shockWave, swift, doubleKick, signalBeam, signalBeam, ironTail, snore, shockWave]
}

rotom :: Pokemon
rotom = Pokemon {
  pokemonIndex = 478,
  pokemonName = "Rotom",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Electric,
  pokemonType2 = Ghost,
  attack = 50,
  defence = 77,
  specialAttack = 95,
  specialDefence = 77,
  pokemonMoves = [tackle, spark, bite, thunderFang, crunch, discharge, wildCharge, hiddenPower, hyperBeam, thunderbolt, thunder, facade, thief, roundMove, chargeBeam, gigaImpact, voltSwitch, wildCharge, snarl, iceFang, fireFang, thunderFang, quickAttack, takeDown, nightSlash, shockWave, swift, doubleKick, signalBeam, signalBeam, superpower, ironTail, snore, shockWave]
}

uxie :: Pokemon
uxie = Pokemon {
  pokemonIndex = 479,
  pokemonName = "Uxie",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 75,
  defence = 130,
  specialAttack = 75,
  specialDefence = 130,
  pokemonMoves = [absorb, megaDrain, venoshock, hiddenPower, solarBeam, shadowBall, sludgeBomb, facade, roundMove, energyBall, dazzlingGleam, pinMissile, razorLeaf, leafStorm, extrasensory, seedBomb, gigaDrain, covet, seedBomb, uproar, snore, gigaDrain]
}

mesprit :: Pokemon
mesprit = Pokemon {
  pokemonIndex = 480,
  pokemonName = "Mesprit",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 105,
  defence = 105,
  specialAttack = 105,
  specialDefence = 105,
  pokemonMoves = [weatherBall, poisonSting, megaDrain, magicalLeaf, venoshock, hiddenPower, hyperBeam, solarBeam, shadowBall, sludgeBomb, facade, roundMove, energyBall, gigaImpact, poisonJab, dazzlingGleam, pinMissile, razorLeaf, leafStorm, extrasensory, seedBomb, gigaDrain, bulletSeed, covet, seedBomb, snore, gigaDrain, absorb, gigaDrain, petalBlizzard, petalDance]
}

azelf :: Pokemon
azelf = Pokemon {
  pokemonIndex = 481,
  pokemonName = "Azelf",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 125,
  defence = 70,
  specialAttack = 125,
  specialDefence = 70,
  pokemonMoves = [headbutt, pursuit, takeDown, assurance, chipAway, ancientPower, zenHeadbutt, headSmash, hiddenPower, iceBeam, blizzard, smackDown, thunderbolt, thunder, earthquake, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, payback, stoneEdge, bulldoze, rockSlide, crunch, thrash, doubleEdge, slam, stomp, hammerArm, ironTail, ironHead, ironHead, uproar, thunderPunch, firePunch, earthPower, superpower, zenHeadbutt, dragonPulse, ironTail, snore, shockWave]
}

dialga :: Pokemon
dialga = Pokemon {
  pokemonIndex = 482,
  pokemonName = "Dialga",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Steel,
  pokemonType2 = Dragon,
  attack = 120,
  defence = 120,
  specialAttack = 150,
  specialDefence = 100,
  pokemonMoves = [headbutt, pursuit, pursuit, takeDown, assurance, chipAway, ancientPower, zenHeadbutt, headSmash, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, surf, crunch, thrash, doubleEdge, slam, stomp, hammerArm, ironTail, ironHead, ironHead, uproar, thunderPunch, firePunch, earthPower, superpower, zenHeadbutt, dragonPulse, ironTail, snore, focusPunch, shockWave, outrage]
}

palkia :: Pokemon
palkia = Pokemon {
  pokemonIndex = 483,
  pokemonName = "Palkia",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Water,
  pokemonType2 = Dragon,
  attack = 120,
  defence = 100,
  specialAttack = 150,
  specialDefence = 120,
  pokemonMoves = [tackle, takeDown, ancientPower, ironHead, hiddenPower, iceBeam, blizzard, smackDown, thunderbolt, thunder, earthquake, flamethrower, fireBlast, rockTomb, facade, roundMove, stoneEdge, bulldoze, rockSlide, flashCannon, headbutt, doubleEdge, rockBlast, bodySlam, ironHead, earthPower, ironTail, snore, shockWave]
}

heatran :: Pokemon
heatran = Pokemon {
  pokemonIndex = 484,
  pokemonName = "Heatran",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 91,
  pokemonType1 = Fire,
  pokemonType2 = Steel,
  attack = 90,
  defence = 106,
  specialAttack = 130,
  specialDefence = 106,
  pokemonMoves = [tackle, takeDown, ancientPower, ironHead, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, flamethrower, fireBlast, rockTomb, facade, roundMove, gigaImpact, stoneEdge, bulldoze, rockSlide, flashCannon, headbutt, doubleEdge, rockBlast, bodySlam, ironHead, earthPower, ironTail, snore, shockWave, outrage]
}

regigigas :: Pokemon
regigigas = Pokemon {
  pokemonIndex = 485,
  pokemonName = "Regigigas",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 110,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 160,
  defence = 110,
  specialAttack = 80,
  specialDefence = 110,
  pokemonMoves = [tackle, bugBite, hiddenPower, hiddenPower, bugBite, electroweb, snore]
}

giratina :: Pokemon
giratina = Pokemon {
  pokemonIndex = 486,
  pokemonName = "Giratina",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 150,
  pokemonType1 = Ghost,
  pokemonType2 = Dragon,
  attack = 100,
  defence = 120,
  specialAttack = 100,
  specialDefence = 120,
  pokemonMoves = [suckerPunch, tackle, bugBite, bugBite, hiddenPower, confusion, razorLeaf, psybeam, psychic, leafStorm, bugBuzz, venoshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, facade, thief, roundMove, energyBall, gigaImpact, infestation, dreamEater, bugBite, signalBeam, seedBomb, uproar, electroweb, snore, gigaDrain]
}

cresselia :: Pokemon
cresselia = Pokemon {
  pokemonIndex = 487,
  pokemonName = "Cresselia",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 120,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 70,
  defence = 120,
  specialAttack = 75,
  specialDefence = 130,
  pokemonMoves = [suckerPunch, tackle, bugBite, bugBite, hiddenPower, confusion, rockBlast, psybeam, psychic, bugBuzz, venoshock, hiddenPower, hyperBeam, earthquake, psychic, shadowBall, rockTomb, facade, thief, roundMove, gigaImpact, bulldoze, infestation, dreamEater, bugBite, signalBeam, uproar, earthPower, electroweb, snore]
}

phione :: Pokemon
phione = Pokemon {
  pokemonIndex = 488,
  pokemonName = "Phione",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 80,
  defence = 80,
  specialAttack = 80,
  specialDefence = 80,
  pokemonMoves = [suckerPunch, tackle, bugBite, bugBite, hiddenPower, confusion, mirrorShot, psybeam, psychic, ironHead, bugBuzz, venoshock, hiddenPower, hyperBeam, psychic, shadowBall, facade, thief, roundMove, gigaImpact, infestation, dreamEater, flashCannon, bugBite, signalBeam, ironHead, gunkShot, uproar, electroweb, snore]
}

manaphy :: Pokemon
manaphy = Pokemon {
  pokemonIndex = 489,
  pokemonName = "Manaphy",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 100,
  defence = 100,
  specialAttack = 100,
  specialDefence = 100,
  pokemonMoves = [tackle, bugBite, bugBite, hiddenPower, confusion, gust, psybeam, silverWind, airSlash, psychic, lunge, bugBuzz, venoshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, energyBall, acrobatics, gigaImpact, infestation, dreamEater, uturn, bugBite, signalBeam, electroweb, snore, gigaDrain, airCutter]
}

darkrai :: Pokemon
darkrai = Pokemon {
  pokemonIndex = 490,
  pokemonName = "Darkrai",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Dark,
  pokemonType2 = None,
  attack = 90,
  defence = 90,
  specialAttack = 135,
  specialDefence = 90,
  pokemonMoves = [gust, bugBite, bugBuzz, bugBite, snore]
}

shaymin :: Pokemon
shaymin = Pokemon {
  pokemonIndex = 491,
  pokemonName = "Shaymin",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 100,
  defence = 100,
  specialAttack = 100,
  specialDefence = 100,
  pokemonMoves = [slash, fellStinger, gust, poisonSting, furyCutter, pursuit, furySwipes, powerGem, airSlash, attackOrder, fellStinger, venoshock, hiddenPower, hyperBeam, sludgeBomb, aerialAce, facade, thief, roundMove, acrobatics, gigaImpact, xScissor, infestation, uturn, bugBite, signalBeam, snore, airCutter, bugBite, bugBuzz]
}

arceus :: Pokemon
arceus = Pokemon {
  pokemonIndex = 492,
  pokemonName = "Arceus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 120,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 120,
  defence = 120,
  specialAttack = 120,
  specialDefence = 120,
  pokemonMoves = [quickAttack, spark, nuzzle, swift, discharge, lastResort, hyperFang, hiddenPower, thunderbolt, thunder, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, uturn, covet, bite, rollout, ironTail, covet, seedBomb, gunkShot, uproar, thunderPunch, lastResort, electroweb, ironTail, snore, shockWave]
}

victini :: Pokemon
victini = Pokemon {
  pokemonIndex = 493,
  pokemonName = "Victini",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Psychic,
  pokemonType2 = Fire,
  attack = 100,
  defence = 100,
  specialAttack = 100,
  specialDefence = 100,
  pokemonMoves = [quickAttack, waterGun, pursuit, swift, aquaJet, doubleHit, whirlpool, razorWind, aquaTail, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, facade, roundMove, echoedVoice, scald, surf, waterfall, mudSlap, headbutt, furySwipes, slash, doubleSlap, furyCutter, aquaTail, tailSlap, icePunch, icyWind, aquaTail, ironTail, snore, focusPunch, waterPulse]
}

snivy :: Pokemon
snivy = Pokemon {
  pokemonIndex = 494,
  pokemonName = "Snivy",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 45,
  defence = 55,
  specialAttack = 45,
  specialDefence = 55,
  pokemonMoves = [iceFang, crunch, quickAttack, quickAttack, waterGun, pursuit, swift, aquaJet, doubleHit, whirlpool, razorWind, aquaTail, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, rockTomb, facade, roundMove, echoedVoice, focusBlast, scald, payback, gigaImpact, surf, waterfall, mudSlap, headbutt, furySwipes, slash, doubleSlap, furyCutter, aquaTail, tailSlap, icePunch, icyWind, aquaTail, ironTail, snore, focusPunch, waterPulse]
}

servine :: Pokemon
servine = Pokemon {
  pokemonIndex = 495,
  pokemonName = "Servine",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 60,
  defence = 75,
  specialAttack = 60,
  specialDefence = 75,
  pokemonMoves = [tackle, magicalLeaf, takeDown, solarBeam, petalBlizzard, hiddenPower, solarBeam, facade, roundMove, energyBall, dazzlingGleam, razorLeaf, weatherBall, seedBomb, rollout, seedBomb, snore, gigaDrain]
}

serperior :: Pokemon
serperior = Pokemon {
  pokemonIndex = 496,
  pokemonName = "Serperior",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 75,
  defence = 95,
  specialAttack = 75,
  specialDefence = 95,
  pokemonMoves = [petalDance, tackle, magicalLeaf, takeDown, solarBeam, petalBlizzard, hiddenPower, hyperBeam, solarBeam, facade, roundMove, energyBall, gigaImpact, dazzlingGleam, razorLeaf, weatherBall, seedBomb, rollout, seedBomb, snore, gigaDrain, seedBomb, snore, gigaDrain]
}

tepig :: Pokemon
tepig = Pokemon {
  pokemonIndex = 497,
  pokemonName = "Tepig",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 63,
  defence = 45,
  specialAttack = 45,
  specialDefence = 45,
  pokemonMoves = [petalDance, tackle, magicalLeaf, takeDown, solarBeam, petalBlizzard, hiddenPower, hyperBeam, solarBeam, facade, roundMove, energyBall, gigaImpact, dazzlingGleam, razorLeaf, weatherBall, seedBomb, rollout, seedBomb, snore, gigaDrain, seedBomb, snore, gigaDrain]
}

pignite :: Pokemon
pignite = Pokemon {
  pokemonIndex = 498,
  pokemonName = "Pignite",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Fire,
  pokemonType2 = Fighting,
  attack = 93,
  defence = 55,
  specialAttack = 70,
  specialDefence = 55,
  pokemonMoves = [mudSlap, waterPulse, mudBomb, hiddenPower, bodySlam, muddyWater, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, infestation, surf, sludge, clearSmog, brine, earthPower, icyWind, snore, waterPulse]
}

emboar :: Pokemon
emboar = Pokemon {
  pokemonIndex = 499,
  pokemonName = "Emboar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 110,
  pokemonType1 = Fire,
  pokemonType2 = Fighting,
  attack = 123,
  defence = 65,
  specialAttack = 100,
  specialDefence = 65,
  pokemonMoves = [mudSlap, waterPulse, mudBomb, hiddenPower, bodySlam, muddyWater, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, infestation, surf, sludge, clearSmog, brine, earthPower, icyWind, snore, waterPulse]
}

oshawott :: Pokemon
oshawott = Pokemon {
  pokemonIndex = 500,
  pokemonName = "Oshawott",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 55,
  defence = 45,
  specialAttack = 63,
  specialDefence = 45,
  pokemonMoves = [mudSlap, waterPulse, waterPulse, mudBomb, hiddenPower, bodySlam, muddyWater, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, roundMove, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, infestation, surf, waterfall, sludge, clearSmog, brine, earthPower, icyWind, snore, waterPulse]
}

dewott :: Pokemon
dewott = Pokemon {
  pokemonIndex = 501,
  pokemonName = "Dewott",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 75,
  defence = 60,
  specialAttack = 83,
  specialDefence = 60,
  pokemonMoves = [mudSlap, waterPulse, waterPulse, mudBomb, hiddenPower, bodySlam, muddyWater, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, roundMove, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, infestation, surf, waterfall, sludge, clearSmog, brine, earthPower, icyWind, snore, waterPulse]
}

samurott :: Pokemon
samurott = Pokemon {
  pokemonIndex = 502,
  pokemonName = "Samurott",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 100,
  defence = 85,
  specialAttack = 108,
  specialDefence = 70,
  pokemonMoves = [dualChop, scratch, astonish, astonish, furySwipes, swift, doubleHit, lastResort, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, aerialAce, facade, thief, lowSweep, roundMove, acrobatics, shadowClaw, payback, gigaImpact, dreamEater, uturn, pursuit, slam, doubleSlap, fakeOut, covet, bounce, revenge, covet, seedBomb, bounce, gunkShot, uproar, thunderPunch, firePunch, icePunch, foulPlay, lastResort, ironTail, snore, knockOff, focusPunch, shockWave, waterPulse]
}

patrat :: Pokemon
patrat = Pokemon {
  pokemonIndex = 503,
  pokemonName = "Patrat",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 55,
  defence = 39,
  specialAttack = 35,
  specialDefence = 39,
  pokemonMoves = [constrict, astonish, gust, payback, ominousWind, hex, shadowBall, explosion, hiddenPower, thunderbolt, thunder, psychic, shadowBall, facade, thief, roundMove, chargeBeam, acrobatics, explosion, payback, dreamEater, bodySlam, weatherBall, clearSmog, icyWind, bind, snore, knockOff, shockWave]
}

watchog :: Pokemon
watchog = Pokemon {
  pokemonIndex = 504,
  pokemonName = "Watchog",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 85,
  defence = 69,
  specialAttack = 60,
  specialDefence = 69,
  pokemonMoves = [phantomForce, constrict, astonish, gust, astonish, gust, payback, ominousWind, hex, shadowBall, explosion, phantomForce, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, shadowBall, facade, thief, roundMove, chargeBeam, acrobatics, explosion, payback, gigaImpact, fly, dreamEater, bodySlam, weatherBall, clearSmog, icyWind, bind, snore, knockOff, shockWave]
}

lillipup :: Pokemon
lillipup = Pokemon {
  pokemonIndex = 505,
  pokemonName = "Lillipup",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 60,
  defence = 45,
  specialAttack = 25,
  specialDefence = 45,
  pokemonMoves = [pound, quickAttack, jumpKick, dizzyPunch, bounce, hiddenPower, iceBeam, solarBeam, thunderbolt, shadowBall, facade, roundMove, chargeBeam, fakeOut, doubleHit, skyUppercut, thunderPunch, icePunch, firePunch, focusPunch, circleThrow, covet, bounce, uproar, thunderPunch, firePunch, icePunch, lastResort, hyperVoice, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse]
}

herdier :: Pokemon
herdier = Pokemon {
  pokemonIndex = 506,
  pokemonName = "Herdier",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 80,
  defence = 65,
  specialAttack = 35,
  specialDefence = 65,
  pokemonMoves = [bounce, pound, quickAttack, jumpKick, dizzyPunch, bounce, highJumpKick, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, facade, lowSweep, roundMove, focusBlast, chargeBeam, brutalSwing, gigaImpact, fakeOut, doubleHit, skyUppercut, thunderPunch, icePunch, firePunch, focusPunch, circleThrow, covet, bounce, uproar, thunderPunch, firePunch, icePunch, lastResort, hyperVoice, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse]
}

stoutland :: Pokemon
stoutland = Pokemon {
  pokemonIndex = 507,
  pokemonName = "Stoutland",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 110,
  defence = 90,
  specialAttack = 45,
  specialDefence = 90,
  pokemonMoves = [bounce, pound, quickAttack, jumpKick, dizzyPunch, bounce, highJumpKick, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, facade, lowSweep, roundMove, focusBlast, chargeBeam, brutalSwing, gigaImpact, fakeOut, doubleHit, skyUppercut, thunderPunch, icePunch, firePunch, focusPunch, circleThrow, covet, bounce, uproar, thunderPunch, firePunch, icePunch, lastResort, hyperVoice, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse]
}

purrloin :: Pokemon
purrloin = Pokemon {
  pokemonIndex = 508,
  pokemonName = "Purrloin",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 41,
  pokemonType1 = Dark,
  pokemonType2 = None,
  attack = 50,
  defence = 37,
  specialAttack = 50,
  specialDefence = 37,
  pokemonMoves = [mysticalFire, powerGem, phantomForce, magicalLeaf, astonish, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, energyBall, chargeBeam, payback, gigaImpact, dreamEater, darkPulse, dazzlingGleam, suckerPunch, shadowSneak, ominousWind, uproar, foulPlay, icyWind, hyperVoice, snore, shockWave, hex, psybeam, payback, shadowBall]
}

liepard :: Pokemon
liepard = Pokemon {
  pokemonIndex = 509,
  pokemonName = "Liepard",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 64,
  pokemonType1 = Dark,
  pokemonType2 = None,
  attack = 88,
  defence = 50,
  specialAttack = 88,
  specialDefence = 50,
  pokemonMoves = [nightSlash, suckerPunch, astonish, pursuit, wingAttack, foulPlay, nightSlash, darkPulse, hiddenPower, hyperBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, payback, gigaImpact, fly, dreamEater, snarl, darkPulse, drillPeck, wingAttack, skyAttack, feintAttack, braveBird, assurance, uproar, foulPlay, superpower, icyWind, snore, heatWave, skyAttack, airCutter, peck, assurance, feintAttack]
}

pansage :: Pokemon
pansage = Pokemon {
  pokemonIndex = 510,
  pokemonName = "Pansage",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 53,
  defence = 48,
  specialAttack = 53,
  specialDefence = 48,
  pokemonMoves = [fakeOut, scratch, feintAttack, furySwipes, slash, suckerPunch, playRough, hiddenPower, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, dreamEater, uturn, bite, quickAttack, assurance, wakeUpSlap, lastResort, covet, foulPlay, lastResort, hyperVoice, ironTail, snore, knockOff, shockWave, waterPulse]
}

simisage :: Pokemon
simisage = Pokemon {
  pokemonIndex = 511,
  pokemonName = "Simisage",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 98,
  defence = 63,
  specialAttack = 98,
  specialDefence = 63,
  pokemonMoves = [fakeOut, scratch, scratch, feintAttack, furySwipes, slash, bodySlam, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, gigaImpact, bulldoze, dreamEater, uturn, bite, quickAttack, assurance, wakeUpSlap, lastResort, covet, foulPlay, lastResort, hyperVoice, ironTail, snore, knockOff, shockWave, waterPulse, suckerPunch, playRough]
}

pansear :: Pokemon
pansear = Pokemon {
  pokemonIndex = 512,
  pokemonName = "Pansear",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 53,
  defence = 48,
  specialAttack = 53,
  specialDefence = 48,
  pokemonMoves = [wrap, astonish, confusion, lastResort, uproar, psyshock, hiddenPower, psychic, shadowBall, facade, roundMove, echoedVoice, chargeBeam, dreamEater, dazzlingGleam, futureSight, storedPower, signalBeam, uproar, lastResort, icyWind, zenHeadbutt, hyperVoice, bind, snore, knockOff, shockWave]
}

simisear :: Pokemon
simisear = Pokemon {
  pokemonIndex = 513,
  pokemonName = "Simisear",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 98,
  defence = 63,
  specialAttack = 98,
  specialDefence = 63,
  pokemonMoves = [scratch, furySwipes, feint, acidSpray, bite, slash, nightSlash, suckerPunch, belch, explosion, venoshock, hiddenPower, shadowBall, flamethrower, sludgeBomb, fireBlast, facade, thief, roundMove, explosion, shadowClaw, payback, snarl, darkPulse, pursuit, smog, doubleEdge, crunch, astonish, ironTail, foulPlay, flameBurst, playRough, foulPlay, ironTail, snore]
}

panpour :: Pokemon
panpour = Pokemon {
  pokemonIndex = 514,
  pokemonName = "Panpour",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 53,
  defence = 48,
  specialAttack = 53,
  specialDefence = 48,
  pokemonMoves = [flamethrower, scratch, furySwipes, feint, acidSpray, bite, slash, nightSlash, suckerPunch, belch, explosion, venoshock, hiddenPower, hyperBeam, shadowBall, flamethrower, sludgeBomb, fireBlast, facade, thief, roundMove, explosion, shadowClaw, payback, gigaImpact, poisonJab, snarl, darkPulse, pursuit, smog, doubleEdge, crunch, astonish, ironTail, foulPlay, flameBurst, playRough, foulPlay, ironTail, snore]
}

simipour :: Pokemon
simipour = Pokemon {
  pokemonIndex = 515,
  pokemonName = "Simipour",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 98,
  defence = 63,
  specialAttack = 98,
  specialDefence = 63,
  pokemonMoves = [tackle, confusion, feintAttack, futureSight, extrasensory, payback, psyshock, hiddenPower, solarBeam, earthquake, psychic, shadowBall, rockTomb, facade, roundMove, chargeBeam, payback, bulldoze, rockSlide, dreamEater, flashCannon, signalBeam, snore]
}

munna :: Pokemon
munna = Pokemon {
  pokemonIndex = 516,
  pokemonName = "Munna",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 76,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 25,
  defence = 45,
  specialAttack = 67,
  specialDefence = 55,
  pokemonMoves = [tackle, confusion, feintAttack, futureSight, extrasensory, payback, psyshock, hiddenPower, hyperBeam, solarBeam, earthquake, psychic, shadowBall, rockTomb, facade, roundMove, chargeBeam, explosion, payback, gigaImpact, bulldoze, rockSlide, dreamEater, flashCannon, signalBeam, ironHead, zenHeadbutt, snore]
}

musharna :: Pokemon
musharna = Pokemon {
  pokemonIndex = 517,
  pokemonName = "Musharna",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 116,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 55,
  defence = 85,
  specialAttack = 107,
  specialDefence = 95,
  pokemonMoves = [rockThrow, feintAttack, rockTomb, rockSlide, suckerPunch, doubleEdge, hiddenPower, smackDown, brickBreak, rockTomb, facade, thief, roundMove, explosion, rockSlide, selfDestruct, headbutt, rollout, sandTomb, covet, uproar, earthPower, foulPlay, snore]
}

pidove :: Pokemon
pidove = Pokemon {
  pokemonIndex = 518,
  pokemonName = "Pidove",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 55,
  defence = 50,
  specialAttack = 36,
  specialDefence = 30,
  pokemonMoves = [confusion, doubleSlap, psybeam, psychic, psyshock, hiddenPower, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, facade, thief, roundMove, chargeBeam, infestation, dreamEater, futureSight, fakeOut, wakeUpSlap, icyWind, covet, signalBeam, uproar, icyWind, snore, drainPunch, focusPunch, shockWave]
}

tranquill :: Pokemon
tranquill = Pokemon {
  pokemonIndex = 519,
  pokemonName = "Tranquill",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 62,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 77,
  defence = 62,
  specialAttack = 50,
  specialDefence = 42,
  pokemonMoves = [pound, hiddenPower, solarBeam, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, dreamEater, lastResort, mudBomb, covet, uproar, lastResort, icyWind, zenHeadbutt, hyperVoice, snore, drainPunch, shockWave, waterPulse]
}

unfezant :: Pokemon
unfezant = Pokemon {
  pokemonIndex = 520,
  pokemonName = "Unfezant",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 115,
  defence = 80,
  specialAttack = 65,
  specialDefence = 55,
  pokemonMoves = [hyperVoice, chatter, peck, furyAttack, chatter, roundMove, echoedVoice, uproar, synchronoise, hyperVoice, hiddenPower, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, fly, uturn, steelWing, airCutter, boomburst, uproar, hyperVoice, snore, heatWave, skyAttack, airCutter]
}

blitzle :: Pokemon
blitzle = Pokemon {
  pokemonIndex = 521,
  pokemonName = "Blitzle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 60,
  defence = 32,
  specialAttack = 50,
  specialDefence = 32,
  pokemonMoves = [pursuit, shadowSneak, feintAttack, dreamEater, ominousWind, suckerPunch, darkPulse, hiddenPower, hyperBeam, psychic, shadowBall, rockTomb, facade, thief, roundMove, gigaImpact, infestation, dreamEater, snarl, darkPulse, shadowSneak, foulPlay, uproar, foulPlay, icyWind, snore, shockWave, waterPulse]
}

zebstrika :: Pokemon
zebstrika = Pokemon {
  pokemonIndex = 522,
  pokemonName = "Zebstrika",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 100,
  defence = 63,
  specialAttack = 80,
  specialDefence = 63,
  pokemonMoves = [tackle, takeDown, sandTomb, slash, dragonClaw, dig, dragonRush, dragonClaw, hiddenPower, earthquake, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, shadowClaw, stoneEdge, bulldoze, rockSlide, dracoMeteor, dragonBreath, outrage, twister, doubleEdge, thrash, metalClaw, sandTomb, bodySlam, ironHead, mudShot, rockClimb, ironTail, ironHead, earthPower, dragonPulse, ironTail, snore, outrage]
}

roggenrola :: Pokemon
roggenrola = Pokemon {
  pokemonIndex = 523,
  pokemonName = "Roggenrola",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Rock,
  pokemonType2 = None,
  attack = 75,
  defence = 85,
  specialAttack = 25,
  specialDefence = 25,
  pokemonMoves = [dualChop, tackle, takeDown, sandTomb, slash, dragonClaw, dig, dragonRush, dragonClaw, hiddenPower, earthquake, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, shadowClaw, stoneEdge, bulldoze, rockSlide, dracoMeteor, dragonBreath, outrage, twister, doubleEdge, thrash, metalClaw, sandTomb, bodySlam, ironHead, mudShot, rockClimb, ironTail, dualChop, ironHead, earthPower, dragonPulse, ironTail, snore, outrage]
}

boldore :: Pokemon
boldore = Pokemon {
  pokemonIndex = 524,
  pokemonName = "Boldore",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Rock,
  pokemonType2 = None,
  attack = 105,
  defence = 105,
  specialAttack = 50,
  specialDefence = 40,
  pokemonMoves = [crunch, dualChop, fireFang, tackle, takeDown, sandTomb, slash, dragonClaw, dig, dragonRush, dragonClaw, hiddenPower, hyperBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, falseSwipe, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, poisonJab, surf, dracoMeteor, dragonBreath, outrage, twister, doubleEdge, thrash, metalClaw, sandTomb, bodySlam, ironHead, mudShot, rockClimb, ironTail, dualChop, ironHead, earthPower, aquaTail, dragonPulse, ironTail, snore, outrage]
}

gigalith :: Pokemon
gigalith = Pokemon {
  pokemonIndex = 525,
  pokemonName = "Gigalith",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Rock,
  pokemonType2 = None,
  attack = 135,
  defence = 130,
  specialAttack = 60,
  specialDefence = 80,
  pokemonMoves = [crunch, dualChop, fireFang, tackle, takeDown, sandTomb, slash, dragonClaw, dig, dragonRush, dragonClaw, hiddenPower, hyperBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, falseSwipe, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, poisonJab, surf, dracoMeteor, dragonBreath, outrage, twister, doubleEdge, thrash, metalClaw, sandTomb, bodySlam, ironHead, mudShot, rockClimb, ironTail, dualChop, ironHead, earthPower, aquaTail, dragonPulse, ironTail, snore, outrage]
}

woobat :: Pokemon
woobat = Pokemon {
  pokemonIndex = 526,
  pokemonName = "Woobat",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Psychic,
  pokemonType2 = Flying,
  attack = 45,
  defence = 43,
  specialAttack = 55,
  specialDefence = 43,
  pokemonMoves = [lastResort, lick, tackle, lick, chipAway, bodySlam, rollout, lastResort, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, bulldoze, rockSlide, surf, lick, doubleEdge, pursuit, zenHeadbutt, selfDestruct, belch, covet, seedBomb, gunkShot, uproar, thunderPunch, firePunch, icePunch, lastResort, superpower, icyWind, zenHeadbutt, hyperVoice, snore, focusPunch, shockWave, waterPulse]
}

swoobat :: Pokemon
swoobat = Pokemon {
  pokemonIndex = 527,
  pokemonName = "Swoobat",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 67,
  pokemonType1 = Psychic,
  pokemonType2 = Flying,
  attack = 57,
  defence = 55,
  specialAttack = 77,
  specialDefence = 55,
  pokemonMoves = [quickAttack, feint, forcePalm, hiddenPower, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, shadowClaw, payback, bulldoze, rockSlide, poisonJab, crossChop, bite, skyUppercut, highJumpKick, vacuumWave, crunch, blazeKick, bulletPunch, circleThrow, dualChop, thunderPunch, icePunch, zenHeadbutt, ironTail, snore, drainPunch, focusPunch]
}

drilbur :: Pokemon
drilbur = Pokemon {
  pokemonIndex = 528,
  pokemonName = "Drilbur",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Ground,
  pokemonType2 = None,
  attack = 85,
  defence = 40,
  specialAttack = 30,
  specialDefence = 45,
  pokemonMoves = [auraSphere, quickAttack, metalClaw, feint, powerUpPunch, boneRush, closeCombat, dragonPulse, extremeSpeed, hiddenPower, hyperBeam, earthquake, psychic, shadowBall, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, shadowClaw, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, flashCannon, darkPulse, crossChop, bite, skyUppercut, highJumpKick, vacuumWave, crunch, blazeKick, bulletPunch, circleThrow, dualChop, thunderPunch, icePunch, zenHeadbutt, dragonPulse, ironTail, snore, drainPunch, focusPunch, waterPulse, forcePalm]
}

excadrill :: Pokemon
excadrill = Pokemon {
  pokemonIndex = 529,
  pokemonName = "Excadrill",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 110,
  pokemonType1 = Ground,
  pokemonType2 = Steel,
  attack = 135,
  defence = 60,
  specialAttack = 50,
  specialDefence = 65,
  pokemonMoves = [auraSphere, quickAttack, metalClaw, feint, powerUpPunch, boneRush, closeCombat, dragonPulse, extremeSpeed, hiddenPower, hyperBeam, earthquake, psychic, shadowBall, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, shadowClaw, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, flashCannon, darkPulse, crossChop, bite, skyUppercut, highJumpKick, vacuumWave, crunch, blazeKick, bulletPunch, circleThrow, dualChop, thunderPunch, icePunch, zenHeadbutt, dragonPulse, ironTail, snore, drainPunch, focusPunch, waterPulse, forcePalm]
}

audino :: Pokemon
audino = Pokemon {
  pokemonIndex = 530,
  pokemonName = "Audino",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 103,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 60,
  defence = 86,
  specialAttack = 60,
  specialDefence = 86,
  pokemonMoves = [tackle, bite, takeDown, dig, sandTomb, crunch, earthquake, doubleEdge, hiddenPower, earthquake, rockTomb, facade, roundMove, bulldoze, rockSlide, bodySlam, sandTomb, revenge, earthPower, superpower, ironTail, snore, waterPulse]
}

timburr :: Pokemon
timburr = Pokemon {
  pokemonIndex = 531,
  pokemonName = "Timburr",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 80,
  defence = 55,
  specialAttack = 25,
  specialDefence = 35,
  pokemonMoves = [iceFang, fireFang, thunderFang, tackle, bite, bite, takeDown, dig, sandTomb, crunch, earthquake, doubleEdge, hiddenPower, hyperBeam, earthquake, rockTomb, facade, roundMove, gigaImpact, stoneEdge, bulldoze, rockSlide, bodySlam, sandTomb, revenge, ironHead, earthPower, superpower, ironTail, snore, waterPulse]
}

gurdurr :: Pokemon
gurdurr = Pokemon {
  pokemonIndex = 532,
  pokemonName = "Gurdurr",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 105,
  defence = 85,
  specialAttack = 40,
  specialDefence = 50,
  pokemonMoves = [bite, poisonSting, knockOff, pinMissile, pursuit, bugBite, poisonFang, venoshock, nightSlash, crunch, fellStinger, crossPoison, venoshock, hiddenPower, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, falseSwipe, payback, xScissor, infestation, poisonJab, darkPulse, feintAttack, slash, pursuit, nightSlash, ironTail, twineedle, poisonTail, bugBite, aquaTail, ironTail, snore, knockOff]
}

conkeldurr :: Pokemon
conkeldurr = Pokemon {
  pokemonIndex = 533,
  pokemonName = "Conkeldurr",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 105,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 140,
  defence = 95,
  specialAttack = 55,
  specialDefence = 65,
  pokemonMoves = [thunderFang, iceFang, fireFang, bite, poisonSting, knockOff, knockOff, pinMissile, pursuit, bugBite, poisonFang, venoshock, nightSlash, crunch, fellStinger, crossPoison, venoshock, hiddenPower, hyperBeam, earthquake, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, falseSwipe, brutalSwing, payback, gigaImpact, bulldoze, rockSlide, xScissor, infestation, poisonJab, snarl, darkPulse, feintAttack, slash, pursuit, nightSlash, ironTail, twineedle, poisonTail, bugBite, aquaTail, ironTail, snore, knockOff]
}

tympole :: Pokemon
tympole = Pokemon {
  pokemonIndex = 534,
  pokemonName = "Tympole",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 50,
  defence = 40,
  specialAttack = 50,
  specialDefence = 40,
  pokemonMoves = [astonish, mudSlap, poisonSting, pursuit, feintAttack, revenge, mudBomb, suckerPunch, venoshock, poisonJab, sludgeBomb, belch, venoshock, hiddenPower, earthquake, shadowBall, brickBreak, sludgeWave, sludgeBomb, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, payback, bulldoze, rockSlide, xScissor, poisonJab, darkPulse, feint, dynamicPunch, headbutt, vacuumWave, fakeOut, wakeUpSlap, smellingSalts, crossChop, bulletPunch, drainPunch, dualChop, bounce, gunkShot, thunderPunch, icePunch, foulPlay, icyWind, snore, knockOff, drainPunch, focusPunch]
}

palpitoad :: Pokemon
palpitoad = Pokemon {
  pokemonIndex = 535,
  pokemonName = "Palpitoad",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Water,
  pokemonType2 = Ground,
  attack = 65,
  defence = 55,
  specialAttack = 65,
  specialDefence = 55,
  pokemonMoves = [astonish, mudSlap, poisonSting, mudSlap, poisonSting, pursuit, feintAttack, revenge, mudBomb, suckerPunch, venoshock, poisonJab, sludgeBomb, belch, venoshock, hiddenPower, hyperBeam, earthquake, shadowBall, brickBreak, sludgeWave, sludgeBomb, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, darkPulse, feint, dynamicPunch, headbutt, vacuumWave, fakeOut, wakeUpSlap, smellingSalts, crossChop, bulletPunch, drainPunch, dualChop, bounce, gunkShot, thunderPunch, icePunch, foulPlay, icyWind, snore, knockOff, drainPunch, focusPunch]
}

seismitoad :: Pokemon
seismitoad = Pokemon {
  pokemonIndex = 536,
  pokemonName = "Seismitoad",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 105,
  pokemonType1 = Water,
  pokemonType2 = Ground,
  attack = 95,
  defence = 75,
  specialAttack = 85,
  specialDefence = 75,
  pokemonMoves = [bind, bite, vineWhip, feintAttack, leafTornado, crunch, powerWhip, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, thief, roundMove, energyBall, payback, gigaImpact, infestation, razorLeaf, slam, magicalLeaf, gigaDrain, bugBite, seedBomb, bind, snore, knockOff, gigaDrain]
}

throh :: Pokemon
throh = Pokemon {
  pokemonIndex = 537,
  pokemonName = "Throh",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 120,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 100,
  defence = 85,
  specialAttack = 30,
  specialDefence = 85,
  pokemonMoves = [pound, waterGun, gust, waterPulse, whirlpool, uturn, bounce, silverWind, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, payback, uturn, surf, waterfall, aquaTail, psybeam, brine, auroraBeam, signalBeam, signalBeam, bounce, icyWind, aquaTail, snore, waterPulse]
}

sawk :: Pokemon
sawk = Pokemon {
  pokemonIndex = 538,
  pokemonName = "Sawk",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 125,
  defence = 75,
  specialAttack = 30,
  specialDefence = 75,
  pokemonMoves = [gust, pound, waterGun, waterGun, gust, waterPulse, whirlpool, uturn, bounce, silverWind, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, scald, payback, gigaImpact, uturn, surf, waterfall, aquaTail, psybeam, brine, auroraBeam, signalBeam, signalBeam, bounce, icyWind, aquaTail, snore, waterPulse]
}

sewaddle :: Pokemon
sewaddle = Pokemon {
  pokemonIndex = 539,
  pokemonName = "Sewaddle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Bug,
  pokemonType2 = Grass,
  attack = 53,
  defence = 70,
  specialAttack = 40,
  specialDefence = 60,
  pokemonMoves = [tackle, bubble, bubbleBeam, wingAttack, headbutt, waterPulse, takeDown, airSlash, bounce, hydroPump, hiddenPower, iceBeam, blizzard, earthquake, aerialAce, facade, roundMove, scald, acrobatics, bulldoze, rockSlide, surf, waterfall, twister, hydroPump, slam, signalBeam, signalBeam, bounce, icyWind, snore, waterPulse]
}

swadloon :: Pokemon
swadloon = Pokemon {
  pokemonIndex = 540,
  pokemonName = "Swadloon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Bug,
  pokemonType2 = Grass,
  attack = 63,
  defence = 90,
  specialAttack = 50,
  specialDefence = 80,
  pokemonMoves = [powderSnow, razorLeaf, icyWind, iceShard, woodHammer, blizzard, hiddenPower, iceBeam, blizzard, solarBeam, shadowBall, facade, roundMove, energyBall, frostBreath, magicalLeaf, seedBomb, doubleEdge, stomp, skullBash, avalanche, bulletSeed, seedBomb, icePunch, icyWind, ironTail, snore, gigaDrain, waterPulse]
}

leavanny :: Pokemon
leavanny = Pokemon {
  pokemonIndex = 541,
  pokemonName = "Leavanny",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Bug,
  pokemonType2 = Grass,
  attack = 103,
  defence = 80,
  specialAttack = 70,
  specialDefence = 80,
  pokemonMoves = [icePunch, powderSnow, razorLeaf, icyWind, razorLeaf, icyWind, iceShard, woodHammer, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, earthquake, shadowBall, brickBreak, rockTomb, facade, roundMove, focusBlast, energyBall, gigaImpact, bulldoze, frostBreath, rockSlide, magicalLeaf, seedBomb, doubleEdge, stomp, skullBash, avalanche, bulletSeed, seedBomb, icePunch, icyWind, ironTail, snore, gigaDrain, focusPunch, waterPulse, outrage]
}

venipede :: Pokemon
venipede = Pokemon {
  pokemonIndex = 542,
  pokemonName = "Venipede",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 30,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 45,
  defence = 59,
  specialAttack = 30,
  specialDefence = 39,
  pokemonMoves = [icePunch, powderSnow, razorLeaf, icyWind, razorLeaf, icyWind, iceShard, woodHammer, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, earthquake, shadowBall, brickBreak, rockTomb, facade, roundMove, focusBlast, energyBall, gigaImpact, bulldoze, frostBreath, rockSlide, magicalLeaf, seedBomb, doubleEdge, stomp, skullBash, avalanche, bulletSeed, seedBomb, icePunch, icyWind, ironTail, snore, gigaDrain, focusPunch, waterPulse, outrage]
}

whirlipede :: Pokemon
whirlipede = Pokemon {
  pokemonIndex = 543,
  pokemonName = "Whirlipede",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 55,
  defence = 99,
  specialAttack = 40,
  specialDefence = 79,
  pokemonMoves = [revenge, assurance, scratch, quickAttack, quickAttack, feintAttack, icyWind, furySwipes, metalClaw, nightSlash, darkPulse, hiddenPower, iceBeam, blizzard, hyperBeam, shadowBall, brickBreak, aerialAce, facade, thief, lowSweep, roundMove, focusBlast, falseSwipe, shadowClaw, payback, gigaImpact, xScissor, poisonJab, dreamEater, surf, snarl, darkPulse, bite, crushClaw, fakeOut, doubleHit, pursuit, iceShard, icePunch, avalanche, feint, icicleCrash, throatChop, icePunch, foulPlay, icyWind, ironTail, snore, knockOff, focusPunch, slash, iceShard]
}

scolipede :: Pokemon
scolipede = Pokemon {
  pokemonIndex = 544,
  pokemonName = "Scolipede",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Bug,
  pokemonType2 = Poison,
  attack = 100,
  defence = 89,
  specialAttack = 55,
  specialDefence = 69,
  pokemonMoves = [triAttack, zapCannon, tackle, thunderShock, magnetBomb, thunderShock, magnetBomb, spark, mirrorShot, flashCannon, discharge, zapCannon, hiddenPower, hyperBeam, thunderbolt, thunder, facade, roundMove, chargeBeam, explosion, gigaImpact, voltSwitch, flashCannon, wildCharge, signalBeam, ironHead, electroweb, snore, shockWave]
}

cottonee :: Pokemon
cottonee = Pokemon {
  pokemonIndex = 545,
  pokemonName = "Cottonee",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Grass,
  pokemonType2 = Fairy,
  attack = 27,
  defence = 60,
  specialAttack = 37,
  specialDefence = 50,
  pokemonMoves = [powerWhip, lick, knockOff, wrap, stomp, slam, rollout, chipAway, powerWhip, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, brutalSwing, explosion, gigaImpact, bulldoze, rockSlide, dragonTail, dreamEater, surf, bodySlam, smellingSalts, snore, hammerArm, muddyWater, zenHeadbutt, belch, thunderPunch, firePunch, icePunch, icyWind, aquaTail, zenHeadbutt, ironTail, bind, snore, knockOff, focusPunch, shockWave, waterPulse]
}

whimsicott :: Pokemon
whimsicott = Pokemon {
  pokemonIndex = 546,
  pokemonName = "Whimsicott",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Grass,
  pokemonType2 = Fairy,
  attack = 67,
  defence = 85,
  specialAttack = 77,
  specialDefence = 75,
  pokemonMoves = [hammerArm, rockWrecker, poisonJab, hornAttack, furyAttack, furyAttack, smackDown, stomp, bulldoze, chipAway, rockBlast, drillRun, takeDown, stoneEdge, earthquake, megahorn, rockWrecker, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, brutalSwing, shadowClaw, payback, smartStrike, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, poisonJab, flashCannon, surf, crunch, crushClaw, dragonRush, iceFang, fireFang, thunderFang, skullBash, ironTail, rockClimb, ironHead, drillRun, uproar, thunderPunch, firePunch, icePunch, earthPower, superpower, icyWind, aquaTail, dragonPulse, ironTail, snore, focusPunch, shockWave, outrage]
}

petilil :: Pokemon
petilil = Pokemon {
  pokemonIndex = 547,
  pokemonName = "Petilil",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 35,
  defence = 50,
  specialAttack = 70,
  specialDefence = 50,
  pokemonMoves = [constrict, vineWhip, absorb, bind, megaDrain, knockOff, gigaDrain, ancientPower, slam, powerWhip, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, energyBall, payback, gigaImpact, bulldoze, rockSlide, infestation, poisonJab, confusion, megaDrain, leafStorm, gigaDrain, seedBomb, bind, snore, knockOff, gigaDrain, shockWave]
}

lilligant :: Pokemon
lilligant = Pokemon {
  pokemonIndex = 548,
  pokemonName = "Lilligant",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 60,
  defence = 75,
  specialAttack = 110,
  specialDefence = 75,
  pokemonMoves = [firePunch, quickAttack, thunderShock, thunderShock, swift, shockWave, thunderPunch, discharge, thunderbolt, thunder, gigaImpact, hiddenPower, hyperBeam, thunderbolt, thunder, earthquake, psychic, brickBreak, flamethrower, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, chargeBeam, gigaImpact, voltSwitch, bulldoze, rockSlide, wildCharge, karateChop, rollingKick, crossChop, firePunch, icePunch, dynamicPunch, feint, hammerArm, focusPunch, covet, dualChop, signalBeam, thunderPunch, firePunch, icePunch, electroweb, ironTail, snore, focusPunch, shockWave]
}

basculin :: Pokemon
basculin = Pokemon {
  pokemonIndex = 549,
  pokemonName = "Basculin",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 92,
  defence = 65,
  specialAttack = 80,
  specialDefence = 55,
  pokemonMoves = [thunderPunch, smog, ember, ember, feintAttack, fireSpin, clearSmog, flameBurst, firePunch, lavaPlume, flamethrower, fireBlast, hyperBeam, hiddenPower, hyperBeam, solarBeam, thunderbolt, earthquake, psychic, brickBreak, flamethrower, fireBlast, rockTomb, facade, flameCharge, thief, lowSweep, roundMove, overheat, focusBlast, gigaImpact, bulldoze, rockSlide, karateChop, megaPunch, crossChop, thunderPunch, machPunch, dynamicPunch, flareBlitz, ironTail, belch, covet, dualChop, thunderPunch, firePunch, ironTail, snore, heatWave, focusPunch]
}

sandile :: Pokemon
sandile = Pokemon {
  pokemonIndex = 550,
  pokemonName = "Sandile",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Ground,
  pokemonType2 = Dark,
  attack = 72,
  defence = 35,
  specialAttack = 35,
  specialDefence = 35,
  pokemonMoves = [skyAttack, extremeSpeed, auraSphere, airSlash, psyshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, brickBreak, flamethrower, fireBlast, aerialAce, facade, roundMove, echoedVoice, steelWing, gigaImpact, fly, dreamEater, dazzlingGleam, peck, futureSight, extrasensory, secretPower, storedPower, covet, signalBeam, lastResort, zenHeadbutt, hyperVoice, snore, heatWave, skyAttack, drainPunch, airCutter, focusPunch, shockWave, waterPulse, magicalLeaf, fairyWind, ancientPower, doubleEdge, lastResort]
}

krokorok :: Pokemon
krokorok = Pokemon {
  pokemonIndex = 551,
  pokemonName = "Krokorok",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Ground,
  pokemonType2 = Dark,
  attack = 82,
  defence = 45,
  specialAttack = 45,
  specialDefence = 45,
  pokemonMoves = [bugBuzz, airSlash, nightSlash, bugBite, tackle, quickAttack, quickAttack, uproar, pursuit, ancientPower, feint, slash, uturn, airSlash, bugBuzz, hiddenPower, hyperBeam, solarBeam, leechLife, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, gigaImpact, dreamEater, uturn, leechLife, signalBeam, silverWind, feint, feintAttack, pursuit, doubleEdge, secretPower, bugBite, signalBeam, uproar, snore, gigaDrain, airCutter, wingAttack]
}

krookodile :: Pokemon
krookodile = Pokemon {
  pokemonIndex = 552,
  pokemonName = "Krookodile",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Ground,
  pokemonType2 = Dark,
  attack = 117,
  defence = 80,
  specialAttack = 65,
  specialDefence = 70,
  pokemonMoves = [razorLeaf, tackle, quickAttack, magicalLeaf, gigaDrain, lastResort, leafBlade, hiddenPower, hyperBeam, solarBeam, shadowBall, aerialAce, facade, roundMove, echoedVoice, energyBall, gigaImpact, xScissor, covet, storedPower, synchronoise, covet, seedBomb, lastResort, hyperVoice, ironTail, snore, knockOff, gigaDrain, covet, bite, swift, takeDown, doubleEdge]
}

darumaka :: Pokemon
darumaka = Pokemon {
  pokemonIndex = 553,
  pokemonName = "Darumaka",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 90,
  defence = 45,
  specialAttack = 15,
  specialDefence = 45,
  pokemonMoves = [icyWind, tackle, quickAttack, bite, iceFang, iceShard, lastResort, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, shadowBall, facade, roundMove, echoedVoice, gigaImpact, frostBreath, covet, storedPower, synchronoise, covet, signalBeam, lastResort, icyWind, aquaTail, hyperVoice, ironTail, snore, waterPulse, covet, swift, takeDown, doubleEdge]
}

darmanitan :: Pokemon
darmanitan = Pokemon {
  pokemonIndex = 554,
  pokemonName = "Darmanitan",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 105,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 140,
  defence = 55,
  specialAttack = 30,
  specialDefence = 55,
  pokemonMoves = [thunderFang, iceFang, fireFang, poisonJab, knockOff, knockOff, quickAttack, furyCutter, feintAttack, acrobatics, nightSlash, uturn, xScissor, skyUppercut, venoshock, hiddenPower, hyperBeam, earthquake, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, steelWing, falseSwipe, brutalSwing, acrobatics, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, uturn, darkPulse, metalClaw, wingAttack, razorWind, sandTomb, doubleEdge, feint, nightSlash, crossPoison, rockClimb, poisonTail, bugBite, earthPower, aquaTail, ironTail, snore, knockOff, skyAttack, airCutter, poisonSting, slash]
}

maractus :: Pokemon
maractus = Pokemon {
  pokemonIndex = 555,
  pokemonName = "Maractus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 86,
  defence = 67,
  specialAttack = 106,
  specialDefence = 67,
  pokemonMoves = [furyAttack, ancientPower, peck, powderSnow, powderSnow, mudSlap, mudBomb, iceFang, takeDown, doubleHit, thrash, earthquake, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, roundMove, gigaImpact, stoneEdge, bulldoze, rockSlide, takeDown, bite, bodySlam, ancientPower, mudShot, icicleSpear, doubleEdge, mudShot, avalanche, icicleCrash, freezeDry, ironHead, earthPower, superpower, icyWind, snore, knockOff, icyWind, tackle, iceShard]
}

dwebble :: Pokemon
dwebble = Pokemon {
  pokemonIndex = 556,
  pokemonName = "Dwebble",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Bug,
  pokemonType2 = Rock,
  attack = 65,
  defence = 85,
  specialAttack = 35,
  specialDefence = 35,
  pokemonMoves = [zapCannon, tackle, psybeam, signalBeam, discharge, triAttack, zapCannon, hyperBeam, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, aerialAce, facade, thief, roundMove, chargeBeam, gigaImpact, dreamEater, darkPulse, signalBeam, uproar, foulPlay, lastResort, electroweb, icyWind, zenHeadbutt, ironTail, snore, shockWave]
}

crustle :: Pokemon
crustle = Pokemon {
  pokemonIndex = 557,
  pokemonName = "Crustle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Bug,
  pokemonType2 = Rock,
  attack = 105,
  defence = 125,
  specialAttack = 65,
  specialDefence = 75,
  pokemonMoves = [slash, storedPower, closeCombat, leafBlade, nightSlash, confusion, confusion, furyCutter, aerialAce, psychoCut, feint, falseSwipe, closeCombat, storedPower, psyshock, hiddenPower, hyperBeam, thunderbolt, earthquake, psychic, shadowBall, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, echoedVoice, focusBlast, falseSwipe, chargeBeam, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, dreamEater, dazzlingGleam, shadowSneak, synchronoise, dualChop, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, hyperVoice, snore, knockOff, drainPunch, focusPunch, shockWave, disarmingVoice, magicalLeaf, drainingKiss, psychic, futureSight, dreamEater]
}

scraggy :: Pokemon
scraggy = Pokemon {
  pokemonIndex = 558,
  pokemonName = "Scraggy",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Dark,
  pokemonType2 = Fighting,
  attack = 75,
  defence = 70,
  specialAttack = 35,
  specialDefence = 70,
  pokemonMoves = [slash, storedPower, closeCombat, leafBlade, nightSlash, confusion, confusion, furyCutter, aerialAce, psychoCut, feint, falseSwipe, closeCombat, storedPower, psyshock, hiddenPower, hyperBeam, thunderbolt, earthquake, psychic, shadowBall, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, echoedVoice, focusBlast, falseSwipe, chargeBeam, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, dreamEater, dazzlingGleam, shadowSneak, synchronoise, dualChop, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, hyperVoice, snore, knockOff, drainPunch, focusPunch, shockWave, disarmingVoice, magicalLeaf, drainingKiss, psychic, futureSight, dreamEater]
}

scrafty :: Pokemon
scrafty = Pokemon {
  pokemonIndex = 559,
  pokemonName = "Scrafty",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Dark,
  pokemonType2 = Fighting,
  attack = 90,
  defence = 115,
  specialAttack = 45,
  specialDefence = 115,
  pokemonMoves = [triAttack, tackle, magnetBomb, magnetBomb, spark, rockSlide, powerGem, rockBlast, discharge, earthPower, stoneEdge, zapCannon, hiddenPower, hyperBeam, smackDown, thunderbolt, thunder, earthquake, rockTomb, facade, roundMove, explosion, gigaImpact, stoneEdge, voltSwitch, bulldoze, rockSlide, flashCannon, dazzlingGleam, rollout, doubleEdge, ironHead, thunderPunch, firePunch, icePunch, earthPower, snore, shockWave, rockThrow]
}

sigilyph :: Pokemon
sigilyph = Pokemon {
  pokemonIndex = 560,
  pokemonName = "Sigilyph",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 72,
  pokemonType1 = Psychic,
  pokemonType2 = Flying,
  attack = 58,
  defence = 80,
  specialAttack = 103,
  specialDefence = 80,
  pokemonMoves = [shadowPunch, futureSight, firePunch, icePunch, thunderPunch, bind, astonish, astonish, shadowSneak, pursuit, hex, shadowBall, payback, futureSight, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, shadowBall, brickBreak, rockTomb, facade, thief, roundMove, focusBlast, chargeBeam, payback, gigaImpact, bulldoze, rockSlide, infestation, dreamEater, darkPulse, feintAttack, ominousWind, darkPulse, thunderPunch, firePunch, icePunch, icyWind, bind, snore, focusPunch]
}

yamask :: Pokemon
yamask = Pokemon {
  pokemonIndex = 561,
  pokemonName = "Yamask",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 38,
  pokemonType1 = Ghost,
  pokemonType2 = None,
  attack = 30,
  defence = 85,
  specialAttack = 55,
  specialDefence = 65,
  pokemonMoves = [ominousWind, powderSnow, iceShard, iceShard, icyWind, astonish, drainingKiss, wakeUpSlap, shadowBall, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, psychic, shadowBall, facade, roundMove, payback, gigaImpact, frostBreath, dreamEater, rollout, weatherBall, avalanche, hex, signalBeam, icePunch, icyWind, snore, shockWave, waterPulse, razorLeaf, woodHammer]
}

cofagrigus :: Pokemon
cofagrigus = Pokemon {
  pokemonIndex = 562,
  pokemonName = "Cofagrigus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 58,
  pokemonType1 = Ghost,
  pokemonType2 = None,
  attack = 50,
  defence = 145,
  specialAttack = 95,
  specialDefence = 105,
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, discharge, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, signalBeam, uproar, foulPlay, electroweb, snore, shockWave]
}

tirtouga :: Pokemon
tirtouga = Pokemon {
  pokemonIndex = 563,
  pokemonName = "Tirtouga",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 54,
  pokemonType1 = Water,
  pokemonType2 = Rock,
  attack = 78,
  defence = 103,
  specialAttack = 53,
  specialDefence = 45,
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, discharge, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, overheat, signalBeam, uproar, foulPlay, electroweb, snore, shockWave]
}

carracosta :: Pokemon
carracosta = Pokemon {
  pokemonIndex = 564,
  pokemonName = "Carracosta",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 74,
  pokemonType1 = Water,
  pokemonType2 = Rock,
  attack = 108,
  defence = 133,
  specialAttack = 83,
  specialDefence = 65,
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, discharge, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, hydroPump, signalBeam, uproar, foulPlay, electroweb, snore, shockWave]
}

archen :: Pokemon
archen = Pokemon {
  pokemonIndex = 565,
  pokemonName = "Archen",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Rock,
  pokemonType2 = Flying,
  attack = 112,
  defence = 45,
  specialAttack = 74,
  specialDefence = 45,
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, discharge, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, blizzard, signalBeam, uproar, foulPlay, electroweb, snore, shockWave]
}

archeops :: Pokemon
archeops = Pokemon {
  pokemonIndex = 566,
  pokemonName = "Archeops",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Rock,
  pokemonType2 = Flying,
  attack = 140,
  defence = 65,
  specialAttack = 112,
  specialDefence = 65,
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, discharge, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, airSlash, signalBeam, uproar, foulPlay, electroweb, snore, shockWave]
}

trubbish :: Pokemon
trubbish = Pokemon {
  pokemonIndex = 567,
  pokemonName = "Trubbish",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 50,
  defence = 62,
  specialAttack = 40,
  specialDefence = 62,
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, discharge, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, leafStorm, signalBeam, uproar, foulPlay, electroweb, snore, shockWave]
}

garbodor :: Pokemon
garbodor = Pokemon {
  pokemonIndex = 568,
  pokemonName = "Garbodor",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Poison,
  pokemonType2 = None,
  attack = 95,
  defence = 82,
  specialAttack = 60,
  specialDefence = 82,
  pokemonMoves = [confusion, swift, futureSight, extrasensory, psyshock, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, facade, roundMove, energyBall, chargeBeam, acrobatics, gigaImpact, dreamEater, uturn, dazzlingGleam, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, ironTail, snore, knockOff, gigaDrain, shockWave, waterPulse]
}

zorua :: Pokemon
zorua = Pokemon {
  pokemonIndex = 569,
  pokemonName = "Zorua",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Dark,
  pokemonType2 = None,
  attack = 65,
  defence = 40,
  specialAttack = 80,
  specialDefence = 40,
  pokemonMoves = [confusion, swift, futureSight, extrasensory, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, psychic, shadowBall, facade, roundMove, energyBall, chargeBeam, acrobatics, gigaImpact, dreamEater, uturn, dazzlingGleam, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, ironTail, snore, knockOff, shockWave, waterPulse]
}

zoroark :: Pokemon
zoroark = Pokemon {
  pokemonIndex = 570,
  pokemonName = "Zoroark",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Dark,
  pokemonType2 = None,
  attack = 105,
  defence = 60,
  specialAttack = 120,
  specialDefence = 60,
  pokemonMoves = [lastResort, confusion, swift, uproar, futureSight, extrasensory, lastResort, explosion, psyshock, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, energyBall, chargeBeam, acrobatics, explosion, payback, gigaImpact, dreamEater, uturn, dazzlingGleam, signalBeam, uproar, thunderPunch, firePunch, icePunch, lastResort, zenHeadbutt, ironTail, snore, knockOff, shockWave, waterPulse]
}

minccino :: Pokemon
minccino = Pokemon {
  pokemonIndex = 571,
  pokemonName = "Minccino",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 50,
  defence = 40,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [dragonBreath, metalClaw, ancientPower, slash, powerGem, dragonClaw, earthPower, auraSphere, ironTail, roarofTime, flashCannon, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, echoedVoice, overheat, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, flashCannon, dracoMeteor, ironHead, earthPower, dragonPulse, hyperVoice, ironTail, snore, shockWave, outrage]
}

cinccino :: Pokemon
cinccino = Pokemon {
  pokemonIndex = 572,
  pokemonName = "Cinccino",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 95,
  defence = 60,
  specialAttack = 65,
  specialDefence = 60,
  pokemonMoves = [dragonBreath, waterPulse, ancientPower, slash, powerGem, aquaTail, dragonClaw, earthPower, auraSphere, aquaTail, spacialRend, hydroPump, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, echoedVoice, focusBlast, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, surf, dracoMeteor, earthPower, aquaTail, dragonPulse, hyperVoice, snore, focusPunch, shockWave, waterPulse, outrage]
}

gothita :: Pokemon
gothita = Pokemon {
  pokemonIndex = 573,
  pokemonName = "Gothita",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 30,
  defence = 50,
  specialAttack = 55,
  specialDefence = 65,
  pokemonMoves = [magmaStorm, heatWave, earthPower, ironHead, fireSpin, ancientPower, fireFang, crunch, lavaPlume, fireSpin, ironHead, earthPower, heatWave, stoneEdge, magmaStorm, hiddenPower, hyperBeam, solarBeam, earthquake, flamethrower, fireBlast, rockTomb, facade, flameCharge, roundMove, overheat, explosion, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, flashCannon, darkPulse, bugBite, ironHead, uproar, earthPower, dragonPulse, snore, heatWave]
}

gothorita :: Pokemon
gothorita = Pokemon {
  pokemonIndex = 574,
  pokemonName = "Gothorita",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 45,
  defence = 70,
  specialAttack = 75,
  specialDefence = 85,
  pokemonMoves = [firePunch, icePunch, thunderPunch, dizzyPunch, knockOff, revenge, zenHeadbutt, payback, gigaImpact, hiddenPower, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, rockTomb, aerialAce, facade, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, ironHead, thunderPunch, firePunch, icePunch, earthPower, superpower, icyWind, zenHeadbutt, snore, knockOff, drainPunch, focusPunch, shockWave]
}

gothitelle :: Pokemon
gothitelle = Pokemon {
  pokemonIndex = 575,
  pokemonName = "Gothitelle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 55,
  defence = 95,
  specialAttack = 95,
  specialDefence = 110,
  pokemonMoves = [dragonBreath, ominousWind, ancientPower, slash, shadowSneak, dragonClaw, earthPower, auraSphere, shadowClaw, shadowForce, hex, dragonClaw, hiddenPower, hyperBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, aerialAce, facade, roundMove, echoedVoice, steelWing, energyBall, chargeBeam, brutalSwing, shadowClaw, payback, gigaImpact, stoneEdge, fly, bulldoze, dragonTail, dreamEater, darkPulse, dracoMeteor, ironHead, earthPower, icyWind, aquaTail, dragonPulse, hyperVoice, ironTail, snore, shockWave, outrage]
}

solosis :: Pokemon
solosis = Pokemon {
  pokemonIndex = 576,
  pokemonName = "Solosis",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 30,
  defence = 40,
  specialAttack = 105,
  specialDefence = 50,
  pokemonMoves = [dragonBreath, ominousWind, ancientPower, slash, shadowSneak, dragonClaw, earthPower, auraSphere, shadowClaw, shadowForce, hex, dragonClaw, hiddenPower, hyperBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, aerialAce, facade, roundMove, echoedVoice, steelWing, energyBall, chargeBeam, brutalSwing, shadowClaw, payback, gigaImpact, stoneEdge, fly, bulldoze, dragonTail, dreamEater, darkPulse, dracoMeteor, ironHead, earthPower, icyWind, aquaTail, dragonPulse, hyperVoice, ironTail, snore, shockWave, outrage]
}

duosion :: Pokemon
duosion = Pokemon {
  pokemonIndex = 577,
  pokemonName = "Duosion",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 40,
  defence = 50,
  specialAttack = 125,
  specialDefence = 60,
  pokemonMoves = [psychoCut, confusion, auroraBeam, futureSight, slash, psychoCut, psychic, moonblast, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, psychic, shadowBall, facade, roundMove, energyBall, chargeBeam, gigaImpact, dreamEater, signalBeam, icyWind, zenHeadbutt, snore]
}

reuniclus :: Pokemon
reuniclus = Pokemon {
  pokemonIndex = 578,
  pokemonName = "Reuniclus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 110,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 65,
  defence = 75,
  specialAttack = 125,
  specialDefence = 85,
  pokemonMoves = [bubble, bubbleBeam, whirlpool, waterPulse, dive, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, uturn, surf, waterfall, dazzlingGleam, covet, signalBeam, bounce, uproar, lastResort, icyWind, snore, knockOff, waterPulse]
}

ducklett :: Pokemon
ducklett = Pokemon {
  pokemonIndex = 579,
  pokemonName = "Ducklett",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 62,
  pokemonType1 = Water,
  pokemonType2 = Flying,
  attack = 44,
  defence = 50,
  specialAttack = 44,
  specialDefence = 50,
  pokemonMoves = [bubble, bubbleBeam, whirlpool, waterPulse, dive, hiddenPower, iceBeam, blizzard, hyperBeam, psychic, shadowBall, facade, roundMove, energyBall, scald, gigaImpact, uturn, surf, waterfall, dazzlingGleam, covet, signalBeam, bounce, uproar, lastResort, icyWind, snore, knockOff, waterPulse]
}

swanna :: Pokemon
swanna = Pokemon {
  pokemonIndex = 580,
  pokemonName = "Swanna",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Water,
  pokemonType2 = Flying,
  attack = 87,
  defence = 63,
  specialAttack = 87,
  specialDefence = 63,
  pokemonMoves = [ominousWind, quickAttack, feintAttack, dreamEater, darkPulse, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, chargeBeam, shadowClaw, payback, gigaImpact, rockSlide, xScissor, poisonJab, dreamEater, snarl, darkPulse, foulPlay, lastResort, icyWind, snore, knockOff, drainPunch, focusPunch, shockWave]
}

vanillite :: Pokemon
vanillite = Pokemon {
  pokemonIndex = 581,
  pokemonName = "Vanillite",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 36,
  pokemonType1 = Ice,
  pokemonType2 = None,
  attack = 50,
  defence = 50,
  specialAttack = 65,
  specialDefence = 60,
  pokemonMoves = [magicalLeaf, energyBall, seedFlare, hiddenPower, hyperBeam, solarBeam, psychic, facade, roundMove, energyBall, gigaImpact, dazzlingGleam, covet, seedBomb, earthPower, lastResort, zenHeadbutt, snore, gigaDrain]
}

vanillish :: Pokemon
vanillish = Pokemon {
  pokemonIndex = 582,
  pokemonName = "Vanillish",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 51,
  pokemonType1 = Ice,
  pokemonType2 = None,
  attack = 65,
  defence = 65,
  specialAttack = 80,
  specialDefence = 75,
  pokemonMoves = [magicalLeaf, quickAttack, airSlash, energyBall, leafStorm, seedFlare, hiddenPower, hyperBeam, solarBeam, psychic, facade, roundMove, energyBall, gigaImpact, dazzlingGleam, covet, seedBomb, lastResort, zenHeadbutt, snore, gigaDrain]
}

vanilluxe :: Pokemon
vanilluxe = Pokemon {
  pokemonIndex = 583,
  pokemonName = "Vanilluxe",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 71,
  pokemonType1 = Ice,
  pokemonType2 = None,
  attack = 95,
  defence = 85,
  specialAttack = 110,
  specialDefence = 95,
  pokemonMoves = [earthPower, hyperVoice, extremeSpeed, futureSight, hyperBeam, judgment, dragonClaw, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, sludgeBomb, fireBlast, rockTomb, aerialAce, facade, roundMove, echoedVoice, overheat, focusBlast, energyBall, chargeBeam, shadowClaw, payback, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, xScissor, poisonJab, dreamEater, flashCannon, surf, snarl, darkPulse, waterfall, dracoMeteor, signalBeam, ironHead, earthPower, lastResort, icyWind, aquaTail, zenHeadbutt, dragonPulse, hyperVoice, ironTail, snore, heatWave, gigaDrain, shockWave, waterPulse, outrage]
}

deerling :: Pokemon
deerling = Pokemon {
  pokemonIndex = 584,
  pokemonName = "Deerling",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Normal,
  pokemonType2 = Grass,
  attack = 60,
  defence = 50,
  specialAttack = 40,
  specialDefence = 50,
  pokemonMoves = [searingShot, confusion, incinerate, quickAttack, headbutt, flameCharge, flameBurst, zenHeadbutt, inferno, doubleEdge, flareBlitz, storedPower, overheat, psyshock, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, flameCharge, roundMove, overheat, focusBlast, energyBall, chargeBeam, gigaImpact, uturn, wildCharge, dazzlingGleam, signalBeam, bounce, uproar, thunderPunch, firePunch, lastResort, zenHeadbutt, snore, heatWave, shockWave]
}

sawsbuck :: Pokemon
sawsbuck = Pokemon {
  pokemonIndex = 585,
  pokemonName = "Sawsbuck",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Normal,
  pokemonType2 = Grass,
  attack = 100,
  defence = 70,
  specialAttack = 60,
  specialDefence = 70,
  pokemonMoves = [tackle, vineWhip, wrap, leafTornado, megaDrain, slam, leafBlade, gigaDrain, leafStorm, hiddenPower, solarBeam, aerialAce, facade, roundMove, energyBall, frenzyPlant, ironTail, magicalLeaf, pursuit, twister, seedBomb, aquaTail, ironTail, bind, snore, knockOff, gigaDrain]
}

emolga :: Pokemon
emolga = Pokemon {
  pokemonIndex = 586,
  pokemonName = "Emolga",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Electric,
  pokemonType2 = Flying,
  attack = 75,
  defence = 60,
  specialAttack = 75,
  specialDefence = 60,
  pokemonMoves = [tackle, vineWhip, wrap, vineWhip, wrap, leafTornado, megaDrain, slam, leafBlade, gigaDrain, leafStorm, hiddenPower, solarBeam, aerialAce, facade, roundMove, energyBall, frenzyPlant, ironTail, magicalLeaf, pursuit, twister, seedBomb, aquaTail, ironTail, bind, snore, knockOff, gigaDrain]
}

karrablast :: Pokemon
karrablast = Pokemon {
  pokemonIndex = 587,
  pokemonName = "Karrablast",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 75,
  defence = 45,
  specialAttack = 40,
  specialDefence = 45,
  pokemonMoves = [tackle, vineWhip, wrap, vineWhip, wrap, leafTornado, megaDrain, slam, leafBlade, gigaDrain, leafStorm, hiddenPower, hyperBeam, solarBeam, aerialAce, facade, roundMove, energyBall, brutalSwing, gigaImpact, dragonTail, frenzyPlant, grassPledge, ironTail, magicalLeaf, pursuit, twister, seedBomb, aquaTail, dragonPulse, ironTail, bind, snore, knockOff, gigaDrain, outrage]
}

escavalier :: Pokemon
escavalier = Pokemon {
  pokemonIndex = 588,
  pokemonName = "Escavalier",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Bug,
  pokemonType2 = Steel,
  attack = 135,
  defence = 105,
  specialAttack = 60,
  specialDefence = 105,
  pokemonMoves = [tackle, ember, flameCharge, smog, rollout, takeDown, assurance, flamethrower, headSmash, flareBlitz, hiddenPower, solarBeam, flamethrower, fireBlast, rockTomb, facade, flameCharge, roundMove, echoedVoice, overheat, wildCharge, blastBurn, covet, bodySlam, thrash, superpower, suckerPunch, covet, superpower, zenHeadbutt, ironTail, snore, heatWave]
}

foongus :: Pokemon
foongus = Pokemon {
  pokemonIndex = 589,
  pokemonName = "Foongus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 69,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 55,
  defence = 45,
  specialAttack = 55,
  specialDefence = 55,
  pokemonMoves = [armThrust, tackle, ember, ember, flameCharge, smog, rollout, takeDown, assurance, flamethrower, headSmash, flareBlitz, hiddenPower, solarBeam, brickBreak, flamethrower, fireBlast, rockTomb, facade, flameCharge, lowSweep, roundMove, echoedVoice, overheat, focusBlast, stoneEdge, bulldoze, rockSlide, poisonJab, wildCharge, blastBurn, covet, bodySlam, thrash, superpower, suckerPunch, covet, thunderPunch, firePunch, superpower, zenHeadbutt, ironTail, snore, heatWave, focusPunch]
}

amoonguss :: Pokemon
amoonguss = Pokemon {
  pokemonIndex = 590,
  pokemonName = "Amoonguss",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 114,
  pokemonType1 = Grass,
  pokemonType2 = Poison,
  attack = 85,
  defence = 70,
  specialAttack = 85,
  specialDefence = 80,
  pokemonMoves = [armThrust, hammerArm, tackle, ember, ember, flameCharge, smog, rollout, takeDown, assurance, flamethrower, headSmash, flareBlitz, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, flameCharge, lowSweep, roundMove, echoedVoice, overheat, focusBlast, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, wildCharge, blastBurn, firePledge, covet, bodySlam, thrash, superpower, suckerPunch, covet, ironHead, thunderPunch, firePunch, superpower, zenHeadbutt, ironTail, snore, heatWave, focusPunch]
}

frillish :: Pokemon
frillish = Pokemon {
  pokemonIndex = 591,
  pokemonName = "Frillish",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Water,
  pokemonType2 = Ghost,
  attack = 40,
  defence = 50,
  specialAttack = 65,
  specialDefence = 85,
  pokemonMoves = [tackle, waterGun, razorShell, furyCutter, waterPulse, revenge, aquaJet, aquaTail, retaliate, hydroPump, hiddenPower, iceBeam, blizzard, aerialAce, facade, roundMove, falseSwipe, scald, xScissor, surf, waterfall, hydroCannon, airSlash, assurance, brine, nightSlash, covet, icyWind, aquaTail, ironTail, snore, waterPulse]
}

jellicent :: Pokemon
jellicent = Pokemon {
  pokemonIndex = 592,
  pokemonName = "Jellicent",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Water,
  pokemonType2 = Ghost,
  attack = 60,
  defence = 70,
  specialAttack = 85,
  specialDefence = 105,
  pokemonMoves = [tackle, waterGun, waterGun, razorShell, furyCutter, waterPulse, revenge, aquaJet, aquaTail, retaliate, hydroPump, hiddenPower, iceBeam, blizzard, aerialAce, facade, roundMove, falseSwipe, scald, xScissor, surf, waterfall, hydroCannon, airSlash, assurance, brine, nightSlash, covet, icyWind, aquaTail, ironTail, snore, waterPulse]
}

alomomola :: Pokemon
alomomola = Pokemon {
  pokemonIndex = 593,
  pokemonName = "Alomomola",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 165,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 75,
  defence = 80,
  specialAttack = 40,
  specialDefence = 45,
  pokemonMoves = [slash, megahorn, tackle, waterGun, waterGun, razorShell, furyCutter, waterPulse, revenge, aquaJet, aquaTail, retaliate, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, aerialAce, facade, roundMove, falseSwipe, scald, smartStrike, gigaImpact, xScissor, dragonTail, surf, waterfall, hydroCannon, waterPledge, airSlash, assurance, brine, nightSlash, covet, superpower, icyWind, aquaTail, ironTail, snore, knockOff, waterPulse]
}

joltik :: Pokemon
joltik = Pokemon {
  pokemonIndex = 594,
  pokemonName = "Joltik",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Bug,
  pokemonType2 = Electric,
  attack = 47,
  defence = 50,
  specialAttack = 57,
  specialDefence = 50,
  pokemonMoves = [tackle, bite, crunch, hyperFang, slam, hiddenPower, thunderbolt, shadowBall, facade, roundMove, ironTail, assurance, pursuit, revenge, covet, seedBomb, gunkShot, lastResort, aquaTail, zenHeadbutt, ironTail, snore, shockWave]
}

galvantula :: Pokemon
galvantula = Pokemon {
  pokemonIndex = 595,
  pokemonName = "Galvantula",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Bug,
  pokemonType2 = Electric,
  attack = 77,
  defence = 60,
  specialAttack = 97,
  specialDefence = 60,
  pokemonMoves = [tackle, bite, bite, crunch, hyperFang, slam, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, flamethrower, facade, roundMove, focusBlast, gigaImpact, dreamEater, ironTail, assurance, pursuit, revenge, covet, signalBeam, seedBomb, gunkShot, thunderPunch, firePunch, icePunch, lastResort, aquaTail, zenHeadbutt, ironTail, snore, knockOff, focusPunch, shockWave]
}

ferroseed :: Pokemon
ferroseed = Pokemon {
  pokemonIndex = 596,
  pokemonName = "Ferroseed",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 44,
  pokemonType1 = Grass,
  pokemonType2 = Steel,
  attack = 50,
  defence = 91,
  specialAttack = 24,
  specialDefence = 86,
  pokemonMoves = [tackle, bite, takeDown, crunch, retaliate, lastResort, gigaImpact, playRough, hiddenPower, thunderbolt, shadowBall, rockTomb, aerialAce, facade, roundMove, gigaImpact, wildCharge, snarl, mudSlap, lick, pursuit, fireFang, thunderFang, iceFang, psychicFangs, covet, uproar, lastResort, hyperVoice, snore, shockWave]
}

ferrothorn :: Pokemon
ferrothorn = Pokemon {
  pokemonIndex = 597,
  pokemonName = "Ferrothorn",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 74,
  pokemonType1 = Grass,
  pokemonType2 = Steel,
  attack = 94,
  defence = 131,
  specialAttack = 54,
  specialDefence = 116,
  pokemonMoves = [tackle, bite, bite, takeDown, crunch, retaliate, lastResort, gigaImpact, playRough, hiddenPower, thunderbolt, shadowBall, rockTomb, aerialAce, facade, roundMove, payback, gigaImpact, wildCharge, surf, snarl, mudSlap, lick, pursuit, fireFang, thunderFang, iceFang, psychicFangs, covet, uproar, lastResort, hyperVoice, snore, shockWave]
}

klink :: Pokemon
klink = Pokemon {
  pokemonIndex = 598,
  pokemonName = "Klink",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Steel,
  pokemonType2 = None,
  attack = 55,
  defence = 70,
  specialAttack = 45,
  specialDefence = 60,
  pokemonMoves = [iceFang, fireFang, thunderFang, tackle, bite, bite, takeDown, crunch, retaliate, lastResort, gigaImpact, playRough, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, rockTomb, aerialAce, facade, roundMove, payback, gigaImpact, wildCharge, surf, snarl, mudSlap, lick, pursuit, fireFang, thunderFang, iceFang, psychicFangs, covet, ironHead, uproar, lastResort, superpower, hyperVoice, snore, shockWave]
}

klang :: Pokemon
klang = Pokemon {
  pokemonIndex = 599,
  pokemonName = "Klang",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Steel,
  pokemonType2 = None,
  attack = 80,
  defence = 95,
  specialAttack = 70,
  specialDefence = 85,
  pokemonMoves = [scratch, furySwipes, pursuit, fakeOut, assurance, slash, nightSlash, suckerPunch, playRough, hiddenPower, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, dreamEater, uturn, snarl, darkPulse, payDay, foulPlay, feintAttack, covet, covet, seedBomb, gunkShot, foulPlay, hyperVoice, ironTail, snore, knockOff]
}

klinklang :: Pokemon
klinklang = Pokemon {
  pokemonIndex = 600,
  pokemonName = "Klinklang",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Steel,
  pokemonType2 = None,
  attack = 100,
  defence = 115,
  specialAttack = 70,
  specialDefence = 85,
  pokemonMoves = [scratch, furySwipes, pursuit, fakeOut, assurance, slash, nightSlash, suckerPunch, playRough, hiddenPower, hyperBeam, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, gigaImpact, dreamEater, uturn, snarl, darkPulse, payDay, foulPlay, feintAttack, covet, covet, seedBomb, gunkShot, foulPlay, hyperVoice, ironTail, snore, knockOff]
}

tynamo :: Pokemon
tynamo = Pokemon {
  pokemonIndex = 601,
  pokemonName = "Tynamo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 35,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 55,
  defence = 40,
  specialAttack = 45,
  specialDefence = 40,
  pokemonMoves = [scratch, lick, vineWhip, furySwipes, bite, seedBomb, acrobatics, crunch, hiddenPower, solarBeam, rockTomb, facade, thief, lowSweep, roundMove, energyBall, acrobatics, shadowClaw, payback, frenzyPlant, covet, astonish, magicalLeaf, bulletSeed, leafStorm, disarmingVoice, covet, seedBomb, gunkShot, uproar, ironTail, snore, knockOff, gigaDrain, focusPunch]
}

eelektrik :: Pokemon
eelektrik = Pokemon {
  pokemonIndex = 602,
  pokemonName = "Eelektrik",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 85,
  defence = 70,
  specialAttack = 75,
  specialDefence = 70,
  pokemonMoves = [lick, furySwipes, seedBomb, hiddenPower, hyperBeam, solarBeam, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, energyBall, acrobatics, shadowClaw, payback, gigaImpact, rockSlide, frenzyPlant, covet, astonish, magicalLeaf, bulletSeed, leafStorm, disarmingVoice, covet, seedBomb, gunkShot, uproar, superpower, ironTail, snore, knockOff, gigaDrain, focusPunch, scratch, vineWhip, bite, acrobatics, crunch]
}

eelektross :: Pokemon
eelektross = Pokemon {
  pokemonIndex = 603,
  pokemonName = "Eelektross",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 115,
  defence = 80,
  specialAttack = 105,
  specialDefence = 80,
  pokemonMoves = [scratch, lick, incinerate, furySwipes, bite, flameBurst, acrobatics, fireBlast, crunch, hiddenPower, solarBeam, flamethrower, fireBlast, rockTomb, facade, flameCharge, thief, lowSweep, roundMove, overheat, acrobatics, shadowClaw, payback, blastBurn, covet, astonish, fireSpin, firePunch, heatWave, disarmingVoice, covet, gunkShot, uproar, firePunch, ironTail, snore, knockOff, heatWave, focusPunch]
}

elgyem :: Pokemon
elgyem = Pokemon {
  pokemonIndex = 604,
  pokemonName = "Elgyem",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 55,
  defence = 55,
  specialAttack = 85,
  specialDefence = 55,
  pokemonMoves = [lick, furySwipes, flameBurst, hiddenPower, hyperBeam, solarBeam, brickBreak, flamethrower, fireBlast, rockTomb, facade, flameCharge, thief, lowSweep, roundMove, overheat, focusBlast, acrobatics, shadowClaw, payback, gigaImpact, rockSlide, blastBurn, covet, astonish, fireSpin, firePunch, heatWave, disarmingVoice, covet, gunkShot, uproar, firePunch, superpower, ironTail, snore, knockOff, heatWave, focusPunch, scratch, incinerate, bite, acrobatics, fireBlast, crunch]
}

beheeyem :: Pokemon
beheeyem = Pokemon {
  pokemonIndex = 605,
  pokemonName = "Beheeyem",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 75,
  defence = 75,
  specialAttack = 125,
  specialDefence = 95,
  pokemonMoves = [scratch, lick, waterGun, furySwipes, bite, scald, acrobatics, brine, crunch, hiddenPower, iceBeam, blizzard, rockTomb, facade, thief, lowSweep, roundMove, scald, acrobatics, shadowClaw, payback, surf, waterfall, hydroCannon, covet, astonish, aquaTail, hydroPump, disarmingVoice, covet, gunkShot, uproar, icePunch, icyWind, aquaTail, ironTail, snore, knockOff, focusPunch, waterPulse]
}

litwick :: Pokemon
litwick = Pokemon {
  pokemonIndex = 606,
  pokemonName = "Litwick",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Ghost,
  pokemonType2 = Fire,
  attack = 30,
  defence = 55,
  specialAttack = 65,
  specialDefence = 55,
  pokemonMoves = [lick, furySwipes, scald, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, scald, acrobatics, shadowClaw, payback, gigaImpact, rockSlide, surf, waterfall, hydroCannon, covet, astonish, aquaTail, hydroPump, disarmingVoice, covet, gunkShot, uproar, icePunch, superpower, icyWind, aquaTail, ironTail, snore, knockOff, focusPunch, waterPulse, scratch, waterGun, bite, acrobatics, brine, crunch]
}

lampent :: Pokemon
lampent = Pokemon {
  pokemonIndex = 607,
  pokemonName = "Lampent",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Ghost,
  pokemonType2 = Fire,
  attack = 40,
  defence = 60,
  specialAttack = 95,
  specialDefence = 60,
  pokemonMoves = [psybeam, zenHeadbutt, synchronoise, futureSight, psychic, dreamEater, storedPower, psyshock, hiddenPower, psychic, shadowBall, rockTomb, facade, roundMove, energyBall, chargeBeam, rockSlide, dreamEater, dazzlingGleam, secretPower, swift, signalBeam, zenHeadbutt, snore, shockWave]
}

chandelure :: Pokemon
chandelure = Pokemon {
  pokemonIndex = 608,
  pokemonName = "Chandelure",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Ghost,
  pokemonType2 = Fire,
  attack = 55,
  defence = 90,
  specialAttack = 145,
  specialDefence = 90,
  pokemonMoves = [psybeam, psyshock, hiddenPower, hyperBeam, psychic, shadowBall, rockTomb, facade, roundMove, energyBall, chargeBeam, gigaImpact, rockSlide, dreamEater, dazzlingGleam, secretPower, swift, signalBeam, zenHeadbutt, snore, shockWave, zenHeadbutt, synchronoise, futureSight, psychic, dreamEater, storedPower]
}

axew :: Pokemon
axew = Pokemon {
  pokemonIndex = 609,
  pokemonName = "Axew",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 46,
  pokemonType1 = Dragon,
  pokemonType2 = None,
  attack = 87,
  defence = 60,
  specialAttack = 30,
  specialDefence = 40,
  pokemonMoves = [gust, quickAttack, airCutter, airSlash, razorWind, facade, skyAttack, hiddenPower, aerialAce, facade, roundMove, echoedVoice, steelWing, fly, uturn, steelWing, uproar, nightSlash, uproar, snore, heatWave, skyAttack, airCutter]
}

fraxure :: Pokemon
fraxure = Pokemon {
  pokemonIndex = 610,
  pokemonName = "Fraxure",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 66,
  pokemonType1 = Dragon,
  pokemonType2 = None,
  attack = 117,
  defence = 70,
  specialAttack = 40,
  specialDefence = 50,
  pokemonMoves = [gust, quickAttack, quickAttack, airCutter, airSlash, razorWind, facade, skyAttack, hiddenPower, aerialAce, facade, roundMove, echoedVoice, steelWing, fly, uturn, steelWing, uproar, nightSlash, uproar, snore, heatWave, skyAttack, airCutter]
}

haxorus :: Pokemon
haxorus = Pokemon {
  pokemonIndex = 611,
  pokemonName = "Haxorus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 76,
  pokemonType1 = Dragon,
  pokemonType2 = None,
  attack = 147,
  defence = 90,
  specialAttack = 60,
  specialDefence = 70,
  pokemonMoves = [gust, quickAttack, quickAttack, airCutter, airSlash, razorWind, facade, skyAttack, hiddenPower, hyperBeam, aerialAce, facade, roundMove, echoedVoice, steelWing, gigaImpact, fly, uturn, steelWing, uproar, nightSlash, uproar, snore, heatWave, skyAttack, airCutter]
}

cubchoo :: Pokemon
cubchoo = Pokemon {
  pokemonIndex = 612,
  pokemonName = "Cubchoo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Ice,
  pokemonType2 = None,
  attack = 70,
  defence = 40,
  specialAttack = 60,
  specialDefence = 40,
  pokemonMoves = [quickAttack, shockWave, flameCharge, pursuit, spark, stomp, discharge, wildCharge, thrash, hiddenPower, thunderbolt, thunder, facade, flameCharge, roundMove, chargeBeam, voltSwitch, wildCharge, takeDown, doubleKick, rage, doubleEdge, shockWave, signalBeam, bounce, snore, shockWave]
}

beartic :: Pokemon
beartic = Pokemon {
  pokemonIndex = 613,
  pokemonName = "Beartic",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Ice,
  pokemonType2 = None,
  attack = 130,
  defence = 80,
  specialAttack = 70,
  specialDefence = 80,
  pokemonMoves = [quickAttack, shockWave, flameCharge, pursuit, spark, stomp, discharge, wildCharge, thrash, hiddenPower, hyperBeam, thunderbolt, thunder, facade, flameCharge, roundMove, overheat, chargeBeam, gigaImpact, voltSwitch, wildCharge, takeDown, doubleKick, rage, doubleEdge, shockWave, signalBeam, bounce, snore, shockWave]
}

cryogonal :: Pokemon
cryogonal = Pokemon {
  pokemonIndex = 614,
  pokemonName = "Cryogonal",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Ice,
  pokemonType2 = None,
  attack = 50,
  defence = 50,
  specialAttack = 95,
  specialDefence = 135,
  pokemonMoves = [tackle, headbutt, rockBlast, mudSlap, smackDown, rockSlide, stoneEdge, explosion, hiddenPower, smackDown, earthquake, rockTomb, facade, roundMove, explosion, stoneEdge, bulldoze, rockSlide, flashCannon, rockTomb, takeDown, earthPower, snore]
}

shelmet :: Pokemon
shelmet = Pokemon {
  pokemonIndex = 615,
  pokemonName = "Shelmet",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 40,
  defence = 85,
  specialAttack = 40,
  specialDefence = 65,
  pokemonMoves = [powerGem, tackle, headbutt, headbutt, rockBlast, mudSlap, smackDown, rockSlide, stoneEdge, explosion, hiddenPower, smackDown, earthquake, rockTomb, facade, roundMove, explosion, stoneEdge, bulldoze, rockSlide, flashCannon, rockTomb, takeDown, earthPower, snore]
}

accelgor :: Pokemon
accelgor = Pokemon {
  pokemonIndex = 616,
  pokemonName = "Accelgor",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 70,
  defence = 40,
  specialAttack = 100,
  specialDefence = 60,
  pokemonMoves = [powerGem, tackle, headbutt, headbutt, rockBlast, mudSlap, smackDown, rockSlide, stoneEdge, explosion, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, rockTomb, facade, roundMove, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, flashCannon, rockTomb, takeDown, ironHead, earthPower, superpower, snore]
}

stunfisk :: Pokemon
stunfisk = Pokemon {
  pokemonIndex = 617,
  pokemonName = "Stunfisk",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 109,
  pokemonType1 = Ground,
  pokemonType2 = Electric,
  attack = 66,
  defence = 84,
  specialAttack = 81,
  specialDefence = 99,
  pokemonMoves = [confusion, gust, assurance, heartStamp, airCutter, airSlash, futureSight, psychic, psyshock, hiddenPower, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, energyBall, chargeBeam, acrobatics, fly, dreamEater, uturn, knockOff, synchronoise, storedPower, signalBeam, uproar, zenHeadbutt, snore, knockOff, heatWave, gigaDrain, airCutter, shockWave]
}

mienfoo :: Pokemon
mienfoo = Pokemon {
  pokemonIndex = 618,
  pokemonName = "Mienfoo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 85,
  defence = 50,
  specialAttack = 55,
  specialDefence = 50,
  pokemonMoves = [confusion, gust, assurance, gust, assurance, heartStamp, airCutter, airSlash, futureSight, psychic, psyshock, hiddenPower, hyperBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, energyBall, chargeBeam, acrobatics, gigaImpact, fly, dreamEater, uturn, knockOff, synchronoise, storedPower, signalBeam, uproar, zenHeadbutt, snore, knockOff, heatWave, skyAttack, gigaDrain, airCutter, shockWave]
}

mienshao :: Pokemon
mienshao = Pokemon {
  pokemonIndex = 619,
  pokemonName = "Mienshao",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Fighting,
  pokemonType2 = None,
  attack = 125,
  defence = 60,
  specialAttack = 95,
  specialDefence = 60,
  pokemonMoves = [scratch, rapidSpin, mudSlap, furySwipes, metalClaw, dig, slash, rockSlide, earthquake, drillRun, hiddenPower, earthquake, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, shadowClaw, bulldoze, rockSlide, xScissor, poisonJab, rapidSpin, earthPower, crushClaw, submission, skullBash, rockClimb, drillRun, earthPower, snore]
}

druddigon :: Pokemon
druddigon = Pokemon {
  pokemonIndex = 620,
  pokemonName = "Druddigon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 77,
  pokemonType1 = Dragon,
  pokemonType2 = None,
  attack = 120,
  defence = 90,
  specialAttack = 60,
  specialDefence = 90,
  pokemonMoves = [scratch, rapidSpin, mudSlap, rapidSpin, mudSlap, furySwipes, metalClaw, dig, slash, rockSlide, earthquake, drillRun, hiddenPower, hyperBeam, earthquake, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, focusBlast, brutalSwing, shadowClaw, smartStrike, gigaImpact, bulldoze, rockSlide, xScissor, poisonJab, rapidSpin, earthPower, crushClaw, submission, skullBash, rockClimb, ironHead, drillRun, earthPower, snore]
}

golett :: Pokemon
golett = Pokemon {
  pokemonIndex = 621,
  pokemonName = "Golett",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 59,
  pokemonType1 = Ground,
  pokemonType2 = Ghost,
  attack = 74,
  defence = 50,
  specialAttack = 35,
  specialDefence = 50,
  pokemonMoves = [lastResort, hyperVoice, pound, disarmingVoice, doubleSlap, secretPower, takeDown, doubleEdge, hyperVoice, lastResort, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, chargeBeam, dreamEater, wildCharge, surf, dazzlingGleam, drainingKiss, covet, signalBeam, uproar, thunderPunch, firePunch, icePunch, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, knockOff, drainPunch, focusPunch]
}

golurk :: Pokemon
golurk = Pokemon {
  pokemonIndex = 622,
  pokemonName = "Golurk",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 89,
  pokemonType1 = Ground,
  pokemonType2 = Ghost,
  attack = 124,
  defence = 80,
  specialAttack = 55,
  specialDefence = 80,
  pokemonMoves = [lastResort, hyperVoice, pound, disarmingVoice, doubleSlap, secretPower, takeDown, doubleEdge, hyperVoice, lastResort, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, chargeBeam, dreamEater, wildCharge, surf, dazzlingGleam, drainingKiss, covet, signalBeam, uproar, thunderPunch, firePunch, icePunch, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, knockOff, drainPunch, focusPunch]
}

pawniard :: Pokemon
pawniard = Pokemon {
  pokemonIndex = 623,
  pokemonName = "Pawniard",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Dark,
  pokemonType2 = Steel,
  attack = 85,
  defence = 70,
  specialAttack = 40,
  specialDefence = 40,
  pokemonMoves = [pound, rockThrow, wakeUpSlap, chipAway, rockSlide, dynamicPunch, hammerArm, stoneEdge, focusPunch, superpower, hiddenPower, smackDown, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, brutalSwing, payback, stoneEdge, rockSlide, poisonJab, drainPunch, cometPunch, smellingSalts, forcePalm, machPunch, thunderPunch, firePunch, icePunch, superpower, snore, knockOff, drainPunch, focusPunch]
}

bisharp :: Pokemon
bisharp = Pokemon {
  pokemonIndex = 624,
  pokemonName = "Bisharp",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Dark,
  pokemonType2 = Steel,
  attack = 125,
  defence = 100,
  specialAttack = 60,
  specialDefence = 70,
  pokemonMoves = [pound, rockThrow, wakeUpSlap, chipAway, rockSlide, dynamicPunch, hammerArm, stoneEdge, focusPunch, superpower, hiddenPower, smackDown, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, brutalSwing, payback, stoneEdge, rockSlide, poisonJab, drainPunch, cometPunch, smellingSalts, forcePalm, machPunch, thunderPunch, firePunch, icePunch, superpower, snore, knockOff, drainPunch, focusPunch]
}

bouffalant :: Pokemon
bouffalant = Pokemon {
  pokemonIndex = 625,
  pokemonName = "Bouffalant",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 110,
  defence = 95,
  specialAttack = 40,
  specialDefence = 95,
  pokemonMoves = [pound, rockThrow, wakeUpSlap, chipAway, rockSlide, dynamicPunch, hammerArm, stoneEdge, focusPunch, superpower, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, brutalSwing, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, drainPunch, cometPunch, smellingSalts, forcePalm, machPunch, thunderPunch, firePunch, icePunch, superpower, snore, knockOff, drainPunch, focusPunch]
}

rufflet :: Pokemon
rufflet = Pokemon {
  pokemonIndex = 626,
  pokemonName = "Rufflet",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 83,
  defence = 50,
  specialAttack = 37,
  specialDefence = 50,
  pokemonMoves = [bubble, roundMove, bubbleBeam, mudShot, uproar, muddyWater, echoedVoice, hydroPump, hyperVoice, hiddenPower, sludgeWave, sludgeBomb, facade, roundMove, echoedVoice, scald, infestation, surf, waterPulse, mudBomb, snore, earthPower, bounce, uproar, earthPower, icyWind, hyperVoice, snore, waterPulse]
}

braviary :: Pokemon
braviary = Pokemon {
  pokemonIndex = 627,
  pokemonName = "Braviary",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 123,
  defence = 75,
  specialAttack = 57,
  specialDefence = 75,
  pokemonMoves = [bubble, roundMove, roundMove, bubbleBeam, mudShot, uproar, muddyWater, echoedVoice, hydroPump, hyperVoice, hiddenPower, sludgeWave, sludgeBomb, facade, roundMove, echoedVoice, scald, bulldoze, infestation, surf, waterPulse, mudBomb, snore, earthPower, bounce, uproar, earthPower, icyWind, hyperVoice, snore, focusPunch, waterPulse]
}

vullaby :: Pokemon
vullaby = Pokemon {
  pokemonIndex = 628,
  pokemonName = "Vullaby",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 70,
  pokemonType1 = Dark,
  pokemonType2 = Flying,
  attack = 55,
  defence = 75,
  specialAttack = 45,
  specialDefence = 65,
  pokemonMoves = [acid, bubble, roundMove, roundMove, bubbleBeam, mudShot, uproar, muddyWater, drainPunch, echoedVoice, hydroPump, hyperVoice, venoshock, hiddenPower, hyperBeam, earthquake, brickBreak, sludgeWave, sludgeBomb, rockTomb, facade, roundMove, echoedVoice, focusBlast, scald, payback, gigaImpact, bulldoze, rockSlide, infestation, poisonJab, surf, waterPulse, mudBomb, snore, earthPower, bounce, uproar, icePunch, earthPower, icyWind, hyperVoice, snore, knockOff, drainPunch, focusPunch, waterPulse]
}

mandibuzz :: Pokemon
mandibuzz = Pokemon {
  pokemonIndex = 629,
  pokemonName = "Mandibuzz",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 110,
  pokemonType1 = Dark,
  pokemonType2 = Flying,
  attack = 65,
  defence = 105,
  specialAttack = 55,
  specialDefence = 95,
  pokemonMoves = [bind, vitalThrow, revenge, stormThrow, bodySlam, circleThrow, superpower, hiddenPower, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, thunderPunch, firePunch, icePunch, superpower, zenHeadbutt, bind, snore, knockOff, focusPunch]
}

heatmor :: Pokemon
heatmor = Pokemon {
  pokemonIndex = 630,
  pokemonName = "Heatmor",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 97,
  defence = 66,
  specialAttack = 105,
  specialDefence = 66,
  pokemonMoves = [rockSmash, doubleKick, lowSweep, karateChop, brickBreak, retaliate, closeCombat, hiddenPower, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, dualChop, thunderPunch, firePunch, icePunch, superpower, zenHeadbutt, snore, knockOff, focusPunch]
}

durant :: Pokemon
durant = Pokemon {
  pokemonIndex = 631,
  pokemonName = "Durant",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 58,
  pokemonType1 = Bug,
  pokemonType2 = Steel,
  attack = 109,
  defence = 112,
  specialAttack = 48,
  specialDefence = 48,
  pokemonMoves = [tackle, bugBite, razorLeaf, struggleBug, bugBuzz, hiddenPower, solarBeam, facade, roundMove, energyBall, payback, dreamEater, silverWind, razorWind, airSlash, bugBite, signalBeam, seedBomb, electroweb, snore, gigaDrain]
}

deino :: Pokemon
deino = Pokemon {
  pokemonIndex = 632,
  pokemonName = "Deino",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 52,
  pokemonType1 = Dark,
  pokemonType2 = Dragon,
  attack = 65,
  defence = 50,
  specialAttack = 45,
  specialDefence = 50,
  pokemonMoves = [tackle, bugBite, razorLeaf, hiddenPower, solarBeam, facade, roundMove, energyBall, payback, dreamEater, silverWind, razorWind, airSlash, bugBite, signalBeam, seedBomb, electroweb, snore, gigaDrain, struggleBug, bugBuzz]
}

zweilous :: Pokemon
zweilous = Pokemon {
  pokemonIndex = 633,
  pokemonName = "Zweilous",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 72,
  pokemonType1 = Dark,
  pokemonType2 = Dragon,
  attack = 85,
  defence = 70,
  specialAttack = 65,
  specialDefence = 70,
  pokemonMoves = [slash, falseSwipe, tackle, bugBite, razorLeaf, bugBite, razorLeaf, struggleBug, fellStinger, leafBlade, xScissor, leafStorm, hiddenPower, hyperBeam, solarBeam, aerialAce, facade, roundMove, steelWing, energyBall, falseSwipe, shadowClaw, payback, gigaImpact, xScissor, poisonJab, dreamEater, silverWind, razorWind, airSlash, bugBite, signalBeam, seedBomb, electroweb, snore, knockOff, gigaDrain, bugBuzz]
}

hydreigon :: Pokemon
hydreigon = Pokemon {
  pokemonIndex = 634,
  pokemonName = "Hydreigon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 92,
  pokemonType1 = Dark,
  pokemonType2 = Dragon,
  attack = 105,
  defence = 90,
  specialAttack = 125,
  specialDefence = 90,
  pokemonMoves = [rollout, poisonSting, pursuit, poisonTail, bugBite, venoshock, steamroller, venoshock, rockClimb, doubleEdge, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, payback, infestation, poisonJab, twineedle, pinMissile, takeDown, rockClimb, bugBite, signalBeam, snore]
}

larvesta :: Pokemon
larvesta = Pokemon {
  pokemonIndex = 635,
  pokemonName = "Larvesta",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 55,
  pokemonType1 = Bug,
  pokemonType2 = Fire,
  attack = 85,
  defence = 55,
  specialAttack = 50,
  specialDefence = 55,
  pokemonMoves = [rollout, poisonSting, poisonSting, pursuit, poisonTail, bugBite, venoshock, steamroller, rockClimb, doubleEdge, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, payback, infestation, poisonJab, twineedle, pinMissile, takeDown, rockClimb, bugBite, signalBeam, snore]
}

volcarona :: Pokemon
volcarona = Pokemon {
  pokemonIndex = 636,
  pokemonName = "Volcarona",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Bug,
  pokemonType2 = Fire,
  attack = 60,
  defence = 65,
  specialAttack = 135,
  specialDefence = 105,
  pokemonMoves = [megahorn, rollout, poisonSting, poisonSting, pursuit, poisonTail, bugBite, venoshock, steamroller, rockClimb, doubleEdge, megahorn, venoshock, hiddenPower, hyperBeam, solarBeam, earthquake, sludgeBomb, rockTomb, facade, roundMove, payback, smartStrike, gigaImpact, bulldoze, rockSlide, xScissor, infestation, poisonJab, twineedle, pinMissile, takeDown, rockClimb, bugBite, signalBeam, superpower, aquaTail, ironTail, snore]
}

cobalion :: Pokemon
cobalion = Pokemon {
  pokemonIndex = 637,
  pokemonName = "Cobalion",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 91,
  pokemonType1 = Steel,
  pokemonType2 = Fighting,
  attack = 90,
  defence = 129,
  specialAttack = 90,
  specialDefence = 72,
  pokemonMoves = [absorb, fairyWind, megaDrain, razorLeaf, gigaDrain, energyBall, solarBeam, hiddenPower, solarBeam, facade, roundMove, energyBall, dreamEater, dazzlingGleam, covet, seedBomb, snore, knockOff, gigaDrain]
}

terrakion :: Pokemon
terrakion = Pokemon {
  pokemonIndex = 638,
  pokemonName = "Terrakion",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 91,
  pokemonType1 = Rock,
  pokemonType2 = Fighting,
  attack = 129,
  defence = 90,
  specialAttack = 72,
  specialDefence = 90,
  pokemonMoves = [megaDrain, gust, hurricane, moonblast, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, facade, thief, roundMove, energyBall, gigaImpact, dreamEater, uturn, dazzlingGleam, covet, seedBomb, snore, knockOff, gigaDrain, absorb, fairyWind, razorLeaf, gigaDrain, energyBall, solarBeam]
}

virizion :: Pokemon
virizion = Pokemon {
  pokemonIndex = 639,
  pokemonName = "Virizion",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 91,
  pokemonType1 = Grass,
  pokemonType2 = Fighting,
  attack = 90,
  defence = 72,
  specialAttack = 90,
  specialDefence = 129,
  pokemonMoves = [absorb, megaDrain, magicalLeaf, gigaDrain, energyBall, leafStorm, hiddenPower, solarBeam, facade, roundMove, energyBall, dreamEater, covet, seedBomb, snore, gigaDrain]
}

tornadus :: Pokemon
tornadus = Pokemon {
  pokemonIndex = 640,
  pokemonName = "Tornadus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 79,
  pokemonType1 = Flying,
  pokemonType2 = None,
  attack = 115,
  defence = 70,
  specialAttack = 125,
  specialDefence = 80,
  pokemonMoves = [megaDrain, petalDance, petalBlizzard, hiddenPower, hyperBeam, solarBeam, facade, roundMove, energyBall, gigaImpact, dreamEater, covet, seedBomb, snore, gigaDrain, absorb, magicalLeaf, gigaDrain, energyBall, leafStorm]
}

thundurus :: Pokemon
thundurus = Pokemon {
  pokemonIndex = 641,
  pokemonName = "Thundurus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 79,
  pokemonType1 = Electric,
  pokemonType2 = Flying,
  attack = 115,
  defence = 70,
  specialAttack = 125,
  specialDefence = 80,
  pokemonMoves = [tackle, waterGun, uproar, headbutt, bite, aquaJet, chipAway, takeDown, crunch, aquaTail, doubleEdge, thrash, headSmash, hiddenPower, iceBeam, facade, roundMove, scald, surf, waterfall, swift, bubbleBeam, mudShot, muddyWater, whirlpool, rage, brine, revenge, bounce, uproar, superpower, icyWind, aquaTail, zenHeadbutt, snore]
}

reshiram :: Pokemon
reshiram = Pokemon {
  pokemonIndex = 642,
  pokemonName = "Reshiram",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Dragon,
  pokemonType2 = Fire,
  attack = 120,
  defence = 100,
  specialAttack = 150,
  specialDefence = 120,
  pokemonMoves = [tackle, waterGun, uproar, headbutt, bite, aquaJet, chipAway, takeDown, crunch, aquaTail, doubleEdge, thrash, headSmash, hiddenPower, iceBeam, facade, roundMove, scald, surf, waterfall, swift, bubbleBeam, mudShot, muddyWater, whirlpool, rage, brine, revenge, bounce, uproar, superpower, icyWind, aquaTail, zenHeadbutt, snore]
}

zekrom :: Pokemon
zekrom = Pokemon {
  pokemonIndex = 643,
  pokemonName = "Zekrom",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Dragon,
  pokemonType2 = Electric,
  attack = 150,
  defence = 120,
  specialAttack = 120,
  specialDefence = 100,
  pokemonMoves = [rage, bite, sandTomb, assurance, mudSlap, crunch, dig, foulPlay, earthquake, thrash, hiddenPower, earthquake, sludgeBomb, rockTomb, facade, thief, roundMove, payback, stoneEdge, bulldoze, rockSlide, snarl, darkPulse, doubleEdge, rockClimb, pursuit, uproar, fireFang, thunderFang, powerTrip, uproar, earthPower, foulPlay, aquaTail, ironTail, snore]
}

landorus :: Pokemon
landorus = Pokemon {
  pokemonIndex = 644,
  pokemonName = "Landorus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 89,
  pokemonType1 = Ground,
  pokemonType2 = Flying,
  attack = 125,
  defence = 90,
  specialAttack = 115,
  specialDefence = 80,
  pokemonMoves = [rage, bite, bite, sandTomb, assurance, mudSlap, crunch, dig, foulPlay, earthquake, thrash, hiddenPower, earthquake, brickBreak, sludgeBomb, rockTomb, facade, thief, lowSweep, roundMove, brutalSwing, shadowClaw, payback, stoneEdge, bulldoze, rockSlide, snarl, darkPulse, doubleEdge, rockClimb, pursuit, uproar, fireFang, thunderFang, powerTrip, uproar, earthPower, foulPlay, aquaTail, ironTail, snore, knockOff, focusPunch]
}

kyurem :: Pokemon
kyurem = Pokemon {
  pokemonIndex = 645,
  pokemonName = "Kyurem",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 125,
  pokemonType1 = Dragon,
  pokemonType2 = Ice,
  attack = 130,
  defence = 90,
  specialAttack = 130,
  specialDefence = 90,
  pokemonMoves = [powerTrip, rage, bite, bite, sandTomb, assurance, mudSlap, crunch, dig, foulPlay, earthquake, outrage, dragonClaw, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, focusBlast, brutalSwing, shadowClaw, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, snarl, darkPulse, doubleEdge, rockClimb, pursuit, uproar, fireFang, thunderFang, powerTrip, uproar, earthPower, foulPlay, superpower, aquaTail, dragonPulse, ironTail, snore, knockOff, focusPunch, outrage, thrash]
}

keldeo :: Pokemon
keldeo = Pokemon {
  pokemonIndex = 646,
  pokemonName = "Keldeo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 91,
  pokemonType1 = Water,
  pokemonType2 = Fighting,
  attack = 72,
  defence = 90,
  specialAttack = 129,
  specialDefence = 90,
  pokemonMoves = [tackle, rollout, incinerate, rage, fireFang, headbutt, uproar, facade, firePunch, thrash, flareBlitz, superpower, overheat, hiddenPower, solarBeam, brickBreak, flamethrower, fireBlast, rockTomb, facade, flameCharge, thief, roundMove, overheat, rockSlide, uturn, focusPunch, hammerArm, takeDown, flameWheel, uproar, firePunch, superpower, zenHeadbutt, snore, heatWave, focusPunch]
}

meloetta :: Pokemon
meloetta = Pokemon {
  pokemonIndex = 647,
  pokemonName = "Meloetta",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 100,
  pokemonType1 = Normal,
  pokemonType2 = Psychic,
  attack = 77,
  defence = 77,
  specialAttack = 128,
  specialDefence = 128,
  pokemonMoves = [hammerArm, tackle, rollout, incinerate, rage, rollout, incinerate, rage, fireFang, headbutt, facade, firePunch, thrash, flareBlitz, superpower, overheat, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, psychic, brickBreak, flamethrower, fireBlast, rockTomb, facade, flameCharge, thief, roundMove, overheat, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, uturn, focusPunch, hammerArm, takeDown, flameWheel, uproar, firePunch, superpower, zenHeadbutt, snore, heatWave, focusPunch]
}

genesect :: Pokemon
genesect = Pokemon {
  pokemonIndex = 648,
  pokemonName = "Genesect",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 71,
  pokemonType1 = Bug,
  pokemonType2 = Steel,
  attack = 120,
  defence = 95,
  specialAttack = 120,
  specialDefence = 95,
  pokemonMoves = [hammerArm, tackle, rollout, incinerate, rage, rollout, incinerate, rage, fireFang, headbutt, facade, firePunch, thrash, flareBlitz, superpower, overheat, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, psychic, brickBreak, flamethrower, fireBlast, rockTomb, facade, flameCharge, thief, roundMove, overheat, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, uturn, focusPunch, hammerArm, takeDown, flameWheel, uproar, firePunch, superpower, zenHeadbutt, snore, heatWave, focusPunch, uproar]
}

chespin :: Pokemon
chespin = Pokemon {
  pokemonIndex = 649,
  pokemonName = "Chespin",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 56,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 61,
  defence = 65,
  specialAttack = 48,
  specialDefence = 45,
  pokemonMoves = [peck, absorb, pinMissile, megaDrain, needleArm, gigaDrain, petalDance, suckerPunch, petalBlizzard, solarBeam, hiddenPower, solarBeam, aerialAce, facade, roundMove, energyBall, poisonJab, bulletSeed, bounce, seedBomb, woodHammer, seedBomb, bounce, uproar, hyperVoice, snore, knockOff, gigaDrain, drainPunch]
}

quilladin :: Pokemon
quilladin = Pokemon {
  pokemonIndex = 650,
  pokemonName = "Quilladin",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 61,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 78,
  defence = 95,
  specialAttack = 56,
  specialDefence = 58,
  pokemonMoves = [furyCutter, rockBlast, feintAttack, smackDown, bugBite, rockSlide, slash, xScissor, rockWrecker, hiddenPower, solarBeam, smackDown, earthquake, rockTomb, aerialAce, facade, roundMove, shadowClaw, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, nightSlash, sandTomb, bugBite, snore, knockOff]
}

chesnaught :: Pokemon
chesnaught = Pokemon {
  pokemonIndex = 651,
  pokemonName = "Chesnaught",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 88,
  pokemonType1 = Grass,
  pokemonType2 = Fighting,
  attack = 107,
  defence = 122,
  specialAttack = 74,
  specialDefence = 75,
  pokemonMoves = [rockBlast, rockBlast, feintAttack, smackDown, bugBite, rockSlide, slash, xScissor, rockWrecker, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, rockTomb, aerialAce, facade, roundMove, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, nightSlash, sandTomb, bugBite, snore, knockOff, furyCutter]
}

fennekin :: Pokemon
fennekin = Pokemon {
  pokemonIndex = 652,
  pokemonName = "Fennekin",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 40,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 45,
  defence = 40,
  specialAttack = 62,
  specialDefence = 60,
  pokemonMoves = [headbutt, feintAttack, payback, brickBreak, chipAway, highJumpKick, crunch, facade, rockClimb, focusPunch, headSmash, dragonClaw, hiddenPower, smackDown, brickBreak, sludgeBomb, rockTomb, facade, lowSweep, roundMove, focusBlast, payback, stoneEdge, rockSlide, dragonTail, poisonJab, snarl, darkPulse, drainPunch, fakeOut, firePunch, icePunch, thunderPunch, feintAttack, zenHeadbutt, dualChop, ironHead, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, dragonPulse, ironTail, snore, knockOff, drainPunch, focusPunch]
}

braixen :: Pokemon
braixen = Pokemon {
  pokemonIndex = 653,
  pokemonName = "Braixen",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 59,
  pokemonType1 = Fire,
  pokemonType2 = None,
  attack = 59,
  defence = 58,
  specialAttack = 90,
  specialDefence = 70,
  pokemonMoves = [headbutt, feintAttack, feintAttack, payback, brickBreak, chipAway, highJumpKick, crunch, facade, rockClimb, focusPunch, headSmash, dragonClaw, hiddenPower, hyperBeam, smackDown, brickBreak, sludgeBomb, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, payback, gigaImpact, stoneEdge, rockSlide, dragonTail, poisonJab, snarl, darkPulse, drainPunch, fakeOut, firePunch, icePunch, thunderPunch, feintAttack, zenHeadbutt, dualChop, ironHead, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, dragonPulse, ironTail, snore, knockOff, drainPunch, focusPunch, outrage]
}

delphox :: Pokemon
delphox = Pokemon {
  pokemonIndex = 654,
  pokemonName = "Delphox",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Fire,
  pokemonType2 = Psychic,
  attack = 69,
  defence = 72,
  specialAttack = 114,
  specialDefence = 100,
  pokemonMoves = [gust, psybeam, airCutter, synchronoise, airSlash, psychic, skyAttack, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, smackDown, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, energyBall, chargeBeam, fly, dreamEater, flashCannon, darkPulse, dazzlingGleam, storedPower, ancientPower, steelWing, futureSight, signalBeam, icyWind, zenHeadbutt, snore, heatWave, skyAttack, airCutter, shockWave]
}

froakie :: Pokemon
froakie = Pokemon {
  pokemonIndex = 655,
  pokemonName = "Froakie",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 41,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 56,
  defence = 40,
  specialAttack = 62,
  specialDefence = 44,
  pokemonMoves = [astonish, hex, ominousWind, shadowBall, hiddenPower, psychic, shadowBall, facade, thief, roundMove, energyBall, payback, infestation, dreamEater, darkPulse, zenHeadbutt, snore, knockOff, shockWave]
}

frogadier :: Pokemon
frogadier = Pokemon {
  pokemonIndex = 656,
  pokemonName = "Frogadier",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 54,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 63,
  defence = 52,
  specialAttack = 83,
  specialDefence = 56,
  pokemonMoves = [astonish, hex, ominousWind, shadowBall, hiddenPower, hyperBeam, psychic, shadowBall, facade, thief, roundMove, energyBall, payback, gigaImpact, infestation, dreamEater, darkPulse, zenHeadbutt, snore, knockOff, shockWave]
}

greninja :: Pokemon
greninja = Pokemon {
  pokemonIndex = 657,
  pokemonName = "Greninja",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 72,
  pokemonType1 = Water,
  pokemonType2 = Dark,
  attack = 95,
  defence = 67,
  specialAttack = 103,
  specialDefence = 71,
  pokemonMoves = [waterGun, rollout, bite, aquaJet, ancientPower, crunch, brine, smackDown, aquaTail, rockSlide, hydroPump, hiddenPower, iceBeam, blizzard, smackDown, earthquake, rockTomb, facade, roundMove, scald, stoneEdge, bulldoze, rockSlide, surf, waterfall, waterPulse, knockOff, rockThrow, slam, whirlpool, bodySlam, liquidation, earthPower, icyWind, aquaTail, zenHeadbutt, ironTail, snore, knockOff, waterPulse]
}

bunnelby :: Pokemon
bunnelby = Pokemon {
  pokemonIndex = 658,
  pokemonName = "Bunnelby",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 38,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 36,
  defence = 38,
  specialAttack = 32,
  specialDefence = 36,
  pokemonMoves = [waterGun, rollout, rollout, bite, aquaJet, ancientPower, crunch, brine, smackDown, aquaTail, rockSlide, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, earthquake, rockTomb, facade, roundMove, focusBlast, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, surf, waterfall, waterPulse, knockOff, rockThrow, slam, whirlpool, bodySlam, liquidation, ironHead, earthPower, superpower, icyWind, aquaTail, zenHeadbutt, ironTail, snore, knockOff, waterPulse]
}

diggersby :: Pokemon
diggersby = Pokemon {
  pokemonIndex = 659,
  pokemonName = "Diggersby",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Normal,
  pokemonType2 = Ground,
  attack = 56,
  defence = 77,
  specialAttack = 50,
  specialDefence = 77,
  pokemonMoves = [quickAttack, wingAttack, rockThrow, pluck, ancientPower, acrobatics, dragonBreath, crunch, uturn, rockSlide, dragonClaw, thrash, dragonClaw, hiddenPower, smackDown, earthquake, rockTomb, aerialAce, facade, roundMove, steelWing, acrobatics, shadowClaw, stoneEdge, bulldoze, rockSlide, uturn, steelWing, dragonPulse, headSmash, knockOff, earthPower, bite, bounce, uproar, earthPower, aquaTail, zenHeadbutt, dragonPulse, ironTail, snore, knockOff, heatWave, airCutter]
}

fletchling :: Pokemon
fletchling = Pokemon {
  pokemonIndex = 660,
  pokemonName = "Fletchling",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Normal,
  pokemonType2 = Flying,
  attack = 50,
  defence = 43,
  specialAttack = 40,
  specialDefence = 38,
  pokemonMoves = [quickAttack, wingAttack, rockThrow, rockThrow, pluck, ancientPower, acrobatics, dragonBreath, crunch, uturn, rockSlide, dragonClaw, thrash, dragonClaw, hiddenPower, hyperBeam, smackDown, earthquake, rockTomb, aerialAce, facade, roundMove, steelWing, focusBlast, acrobatics, shadowClaw, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, dragonTail, uturn, steelWing, dragonPulse, headSmash, knockOff, earthPower, bite, bounce, uproar, earthPower, aquaTail, zenHeadbutt, dragonPulse, ironTail, snore, knockOff, heatWave, skyAttack, airCutter, outrage]
}

fletchinder :: Pokemon
fletchinder = Pokemon {
  pokemonIndex = 661,
  pokemonName = "Fletchinder",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 62,
  pokemonType1 = Fire,
  pokemonType2 = Flying,
  attack = 73,
  defence = 55,
  specialAttack = 56,
  specialDefence = 52,
  pokemonMoves = [pound, acidSpray, doubleSlap, sludge, takeDown, sludgeBomb, clearSmog, belch, gunkShot, explosion, venoshock, hiddenPower, sludgeWave, sludgeBomb, facade, thief, roundMove, explosion, payback, infestation, darkPulse, rollout, rockBlast, selfDestruct, seedBomb, gunkShot, snore, gigaDrain, drainPunch]
}

talonflame :: Pokemon
talonflame = Pokemon {
  pokemonIndex = 662,
  pokemonName = "Talonflame",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 78,
  pokemonType1 = Fire,
  pokemonType2 = Flying,
  attack = 81,
  defence = 71,
  specialAttack = 74,
  specialDefence = 69,
  pokemonMoves = [pound, acidSpray, doubleSlap, sludge, bodySlam, sludgeBomb, clearSmog, belch, gunkShot, explosion, venoshock, hiddenPower, hyperBeam, solarBeam, smackDown, thunderbolt, psychic, sludgeWave, sludgeBomb, facade, thief, roundMove, focusBlast, explosion, payback, gigaImpact, infestation, darkPulse, rollout, rockBlast, selfDestruct, seedBomb, gunkShot, snore, gigaDrain, drainPunch, takeDown]
}

scatterbug :: Pokemon
scatterbug = Pokemon {
  pokemonIndex = 663,
  pokemonName = "Scatterbug",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 38,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 35,
  defence = 40,
  specialAttack = 27,
  specialDefence = 25,
  pokemonMoves = [scratch, pursuit, furySwipes, feintAttack, foulPlay, nightDaze, hiddenPower, shadowBall, aerialAce, facade, thief, roundMove, payback, uturn, snarl, darkPulse, darkPulse, suckerPunch, extrasensory, covet, bounce, uproar, foulPlay, hyperVoice, snore, knockOff]
}

spewpa :: Pokemon
spewpa = Pokemon {
  pokemonIndex = 664,
  pokemonName = "Spewpa",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Bug,
  pokemonType2 = None,
  attack = 22,
  defence = 60,
  specialAttack = 27,
  specialDefence = 30,
  pokemonMoves = [nightSlash, nightDaze, uturn, scratch, pursuit, pursuit, furySwipes, feintAttack, foulPlay, nightDaze, hiddenPower, hyperBeam, shadowBall, flamethrower, aerialAce, facade, thief, lowSweep, roundMove, focusBlast, shadowClaw, payback, gigaImpact, uturn, snarl, darkPulse, darkPulse, suckerPunch, extrasensory, covet, bounce, uproar, foulPlay, hyperVoice, snore, knockOff]
}

vivillon :: Pokemon
vivillon = Pokemon {
  pokemonIndex = 665,
  pokemonName = "Vivillon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 80,
  pokemonType1 = Bug,
  pokemonType2 = Flying,
  attack = 52,
  defence = 50,
  specialAttack = 90,
  specialDefence = 50,
  pokemonMoves = [pound, doubleSlap, swift, tailSlap, wakeUpSlap, echoedVoice, slam, hyperVoice, lastResort, hiddenPower, thunderbolt, facade, thief, roundMove, echoedVoice, uturn, dazzlingGleam, ironTail, aquaTail, mudSlap, knockOff, covet, seedBomb, gunkShot, uproar, lastResort, aquaTail, hyperVoice, ironTail, snore, knockOff, shockWave]
}

litleo :: Pokemon
litleo = Pokemon {
  pokemonIndex = 666,
  pokemonName = "Litleo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 62,
  pokemonType1 = Fire,
  pokemonType2 = Normal,
  attack = 50,
  defence = 58,
  specialAttack = 73,
  specialDefence = 54,
  pokemonMoves = [bulletSeed, rockBlast, tailSlap, hiddenPower, hyperBeam, thunderbolt, thunder, facade, thief, roundMove, echoedVoice, focusBlast, gigaImpact, uturn, dazzlingGleam, ironTail, aquaTail, mudSlap, knockOff, covet, seedBomb, gunkShot, uproar, lastResort, aquaTail, hyperVoice, ironTail, snore, knockOff, shockWave, pound, doubleSlap, swift, wakeUpSlap, echoedVoice, slam, hyperVoice, lastResort]
}

pyroar :: Pokemon
pyroar = Pokemon {
  pokemonIndex = 667,
  pokemonName = "Pyroar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 86,
  pokemonType1 = Fire,
  pokemonType2 = Normal,
  attack = 68,
  defence = 72,
  specialAttack = 109,
  specialDefence = 66,
  pokemonMoves = [pound, confusion, doubleSlap, psybeam, feintAttack, psyshock, futureSight, psychic, psyshock, hiddenPower, thunderbolt, psychic, shadowBall, rockTomb, facade, thief, roundMove, energyBall, chargeBeam, payback, rockSlide, dreamEater, darkPulse, uproar, darkPulse, covet, signalBeam, uproar, foulPlay, zenHeadbutt, snore, shockWave]
}

flab :: Pokemon
flab = Pokemon {
  pokemonIndex = 668,
  pokemonName = "Flab",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 44,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 38,
  defence = 39,
  specialAttack = 61,
  specialDefence = 79,
  pokemonMoves = [pound, confusion, confusion, doubleSlap, psybeam, feintAttack, psyshock, futureSight, psychic, psyshock, hiddenPower, thunderbolt, psychic, shadowBall, rockTomb, facade, thief, roundMove, energyBall, chargeBeam, payback, rockSlide, dreamEater, darkPulse, uproar, darkPulse, covet, signalBeam, uproar, foulPlay, zenHeadbutt, snore, shockWave]
}

floette :: Pokemon
floette = Pokemon {
  pokemonIndex = 669,
  pokemonName = "Floette",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 54,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 45,
  defence = 47,
  specialAttack = 75,
  specialDefence = 98,
  pokemonMoves = [pound, confusion, confusion, doubleSlap, psybeam, feintAttack, psyshock, futureSight, psychic, psyshock, hiddenPower, hyperBeam, thunderbolt, psychic, shadowBall, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, energyBall, chargeBeam, payback, gigaImpact, rockSlide, dreamEater, darkPulse, uproar, darkPulse, covet, signalBeam, uproar, foulPlay, zenHeadbutt, snore, shockWave]
}

florges :: Pokemon
florges = Pokemon {
  pokemonIndex = 670,
  pokemonName = "Florges",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 78,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 65,
  defence = 68,
  specialAttack = 112,
  specialDefence = 154,
  pokemonMoves = [rollout, hiddenPower, psyshock, futureSight, psychic, psyshock, hiddenPower, thunder, psychic, shadowBall, rockTomb, facade, roundMove, energyBall, explosion, rockSlide, infestation, dreamEater, flashCannon, astonish, secretPower, astonish, signalBeam, zenHeadbutt, snore, shockWave]
}

skiddo :: Pokemon
skiddo = Pokemon {
  pokemonIndex = 671,
  pokemonName = "Skiddo",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 66,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 65,
  defence = 48,
  specialAttack = 62,
  specialDefence = 57,
  pokemonMoves = [rollout, rollout, hiddenPower, psyshock, futureSight, psychic, psyshock, hiddenPower, thunder, psychic, shadowBall, rockTomb, facade, roundMove, energyBall, explosion, rockSlide, infestation, dreamEater, flashCannon, astonish, secretPower, astonish, signalBeam, zenHeadbutt, snore, shockWave]
}

gogoat :: Pokemon
gogoat = Pokemon {
  pokemonIndex = 672,
  pokemonName = "Gogoat",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 123,
  pokemonType1 = Grass,
  pokemonType2 = None,
  attack = 100,
  defence = 62,
  specialAttack = 97,
  specialDefence = 81,
  pokemonMoves = [dizzyPunch, rollout, rollout, hiddenPower, psyshock, futureSight, psychic, psyshock, hiddenPower, hyperBeam, thunder, psychic, shadowBall, rockTomb, facade, roundMove, focusBlast, energyBall, explosion, gigaImpact, rockSlide, infestation, dreamEater, flashCannon, astonish, secretPower, astonish, signalBeam, thunderPunch, firePunch, icePunch, superpower, zenHeadbutt, snore, knockOff, drainPunch, focusPunch, shockWave]
}

pancham :: Pokemon
pancham = Pokemon {
  pokemonIndex = 673,
  pokemonName = "Pancham",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 67,
  pokemonType1 = Dark,
  pokemonType2 = None,
  attack = 82,
  defence = 62,
  specialAttack = 46,
  specialDefence = 48,
  pokemonMoves = [waterGun, wingAttack, waterPulse, aerialAce, bubbleBeam, airSlash, braveBird, hurricane, hiddenPower, iceBeam, aerialAce, facade, roundMove, steelWing, scald, fly, surf, steelWing, brine, gust, airCutter, uproar, icyWind, snore, airCutter, waterPulse]
}

pangoro :: Pokemon
pangoro = Pokemon {
  pokemonIndex = 674,
  pokemonName = "Pangoro",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Dark,
  pokemonType2 = Fighting,
  attack = 124,
  defence = 78,
  specialAttack = 69,
  specialDefence = 71,
  pokemonMoves = [waterGun, wingAttack, wingAttack, waterPulse, aerialAce, bubbleBeam, airSlash, braveBird, hurricane, hiddenPower, iceBeam, hyperBeam, aerialAce, facade, roundMove, steelWing, scald, gigaImpact, fly, surf, steelWing, brine, gust, airCutter, uproar, icyWind, snore, skyAttack, airCutter, waterPulse]
}

furfrou :: Pokemon
furfrou = Pokemon {
  pokemonIndex = 675,
  pokemonName = "Furfrou",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 75,
  pokemonType1 = Normal,
  pokemonType2 = None,
  attack = 80,
  defence = 60,
  specialAttack = 65,
  specialDefence = 90,
  pokemonMoves = [icicleSpear, astonish, uproar, icyWind, avalanche, mirrorShot, iceBeam, blizzard, hiddenPower, iceBeam, blizzard, facade, roundMove, explosion, frostBreath, flashCannon, waterPulse, iceShard, powderSnow, signalBeam, uproar, icyWind, snore, waterPulse]
}

espurr :: Pokemon
espurr = Pokemon {
  pokemonIndex = 676,
  pokemonName = "Espurr",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 62,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 48,
  defence = 54,
  specialAttack = 63,
  specialDefence = 60,
  pokemonMoves = [icicleSpear, astonish, uproar, astonish, uproar, icyWind, avalanche, mirrorShot, iceBeam, blizzard, hiddenPower, iceBeam, blizzard, facade, roundMove, explosion, frostBreath, flashCannon, waterPulse, iceShard, powderSnow, signalBeam, uproar, icyWind, snore, waterPulse]
}

meowstic :: Pokemon
meowstic = Pokemon {
  pokemonIndex = 677,
  pokemonName = "Meowstic",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 74,
  pokemonType1 = Psychic,
  pokemonType2 = None,
  attack = 48,
  defence = 76,
  specialAttack = 83,
  specialDefence = 81,
  pokemonMoves = [freezeDry, weatherBall, icicleSpear, astonish, uproar, astonish, uproar, icyWind, avalanche, mirrorShot, iceBeam, blizzard, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, explosion, gigaImpact, frostBreath, flashCannon, waterPulse, iceShard, powderSnow, signalBeam, uproar, icyWind, snore, waterPulse]
}

honedge :: Pokemon
honedge = Pokemon {
  pokemonIndex = 678,
  pokemonName = "Honedge",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 45,
  pokemonType1 = Steel,
  pokemonType2 = Ghost,
  attack = 80,
  defence = 100,
  specialAttack = 35,
  specialDefence = 37,
  pokemonMoves = [tackle, doubleKick, feintAttack, takeDown, jumpKick, energyBall, doubleEdge, solarBeam, hiddenPower, solarBeam, shadowBall, facade, roundMove, echoedVoice, energyBall, wildCharge, seedBomb, bounce, lastResort, snore, gigaDrain]
}

doublade :: Pokemon
doublade = Pokemon {
  pokemonIndex = 679,
  pokemonName = "Doublade",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 59,
  pokemonType1 = Steel,
  pokemonType2 = Ghost,
  attack = 110,
  defence = 150,
  specialAttack = 45,
  specialDefence = 49,
  pokemonMoves = [hornLeech, megahorn, tackle, doubleKick, feintAttack, takeDown, jumpKick, energyBall, doubleEdge, solarBeam, hiddenPower, hyperBeam, solarBeam, shadowBall, facade, roundMove, echoedVoice, energyBall, gigaImpact, wildCharge, seedBomb, bounce, lastResort, snore, gigaDrain]
}

aegislash :: Pokemon
aegislash = Pokemon {
  pokemonIndex = 680,
  pokemonName = "Aegislash",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 60,
  pokemonType1 = Steel,
  pokemonType2 = Ghost,
  attack = 50,
  defence = 150,
  specialAttack = 50,
  specialDefence = 150,
  pokemonMoves = [thunderShock, quickAttack, spark, nuzzle, pursuit, shockWave, acrobatics, voltSwitch, discharge, hiddenPower, thunderbolt, thunder, aerialAce, facade, roundMove, chargeBeam, acrobatics, voltSwitch, uturn, wildCharge, ironTail, astonish, airSlash, shockWave, covet, covet, signalBeam, lastResort, electroweb, ironTail, snore, knockOff, airCutter, shockWave]
}

spritzee :: Pokemon
spritzee = Pokemon {
  pokemonIndex = 681,
  pokemonName = "Spritzee",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 78,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 52,
  defence = 60,
  specialAttack = 63,
  specialDefence = 65,
  pokemonMoves = [peck, furyCutter, furyAttack, headbutt, falseSwipe, bugBuzz, slash, takeDown, xScissor, doubleEdge, hiddenPower, aerialAce, facade, roundMove, energyBall, falseSwipe, xScissor, infestation, poisonJab, megahorn, pursuit, hornAttack, feintAttack, bugBite, knockOff, drillRun, bugBite, signalBeam, drillRun, snore, knockOff, gigaDrain]
}

aromatisse :: Pokemon
aromatisse = Pokemon {
  pokemonIndex = 682,
  pokemonName = "Aromatisse",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 101,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 72,
  defence = 72,
  specialAttack = 99,
  specialDefence = 89,
  pokemonMoves = [doubleEdge, fellStinger, peck, twineedle, twineedle, furyAttack, headbutt, falseSwipe, bugBuzz, slash, ironHead, xScissor, gigaImpact, fellStinger, hiddenPower, hyperBeam, aerialAce, facade, roundMove, focusBlast, energyBall, falseSwipe, brutalSwing, smartStrike, gigaImpact, xScissor, infestation, poisonJab, megahorn, pursuit, hornAttack, feintAttack, bugBite, knockOff, drillRun, bugBite, signalBeam, ironHead, drillRun, snore, knockOff, gigaDrain, furyCutter, takeDown]
}

swirlix :: Pokemon
swirlix = Pokemon {
  pokemonIndex = 683,
  pokemonName = "Swirlix",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 62,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 48,
  defence = 66,
  specialAttack = 59,
  specialDefence = 57,
  pokemonMoves = [absorb, astonish, megaDrain, feintAttack, gigaDrain, clearSmog, solarBeam, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, energyBall, payback, rollout, bodySlam, seedBomb, foulPlay, snore, gigaDrain]
}

slurpuff :: Pokemon
slurpuff = Pokemon {
  pokemonIndex = 684,
  pokemonName = "Slurpuff",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 82,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 80,
  defence = 86,
  specialAttack = 85,
  specialDefence = 75,
  pokemonMoves = [absorb, astonish, astonish, megaDrain, feintAttack, gigaDrain, clearSmog, solarBeam, venoshock, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, roundMove, energyBall, payback, gigaImpact, rollout, bodySlam, seedBomb, foulPlay, snore, gigaDrain]
}

inkay :: Pokemon
inkay = Pokemon {
  pokemonIndex = 685,
  pokemonName = "Inkay",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 53,
  pokemonType1 = Dark,
  pokemonType2 = Psychic,
  attack = 54,
  defence = 53,
  specialAttack = 37,
  specialDefence = 46,
  pokemonMoves = [bubble, absorb, bubbleBeam, waterPulse, ominousWind, brine, hex, hydroPump, hiddenPower, iceBeam, blizzard, psychic, shadowBall, sludgeWave, sludgeBomb, facade, roundMove, energyBall, scald, dreamEater, surf, darkPulse, waterfall, dazzlingGleam, constrict, icyWind, bind, snore, gigaDrain, shockWave, waterPulse]
}

malamar :: Pokemon
malamar = Pokemon {
  pokemonIndex = 686,
  pokemonName = "Malamar",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 86,
  pokemonType1 = Dark,
  pokemonType2 = Psychic,
  attack = 92,
  defence = 88,
  specialAttack = 68,
  specialDefence = 75,
  pokemonMoves = [bubble, absorb, absorb, bubbleBeam, waterPulse, ominousWind, brine, hex, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, psychic, shadowBall, sludgeWave, sludgeBomb, facade, roundMove, energyBall, scald, gigaImpact, dreamEater, surf, darkPulse, waterfall, dazzlingGleam, constrict, icyWind, bind, snore, gigaDrain, shockWave, waterPulse]
}

binacle :: Pokemon
binacle = Pokemon {
  pokemonIndex = 687,
  pokemonName = "Binacle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 42,
  pokemonType1 = Rock,
  pokemonType2 = Water,
  attack = 52,
  defence = 67,
  specialAttack = 39,
  specialDefence = 56,
  pokemonMoves = [hydroPump, pound, aquaJet, doubleSlap, waterPulse, wakeUpSlap, brine, whirlpool, hydroPump, hiddenPower, iceBeam, blizzard, psychic, shadowBall, facade, roundMove, scald, surf, waterfall, bounce, icyWind, snore, knockOff, waterPulse]
}

barbaracle :: Pokemon
barbaracle = Pokemon {
  pokemonIndex = 688,
  pokemonName = "Barbaracle",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 72,
  pokemonType1 = Rock,
  pokemonType2 = Water,
  attack = 105,
  defence = 115,
  specialAttack = 54,
  specialDefence = 86,
  pokemonMoves = [absorb, furyCutter, electroweb, bugBite, slash, signalBeam, suckerPunch, discharge, bugBuzz, hiddenPower, thunderbolt, leechLife, facade, thief, roundMove, energyBall, chargeBeam, voltSwitch, xScissor, infestation, poisonJab, wildCharge, pinMissile, poisonSting, crossPoison, rockClimb, pursuit, feintAttack, bugBite, signalBeam, bounce, electroweb, snore, gigaDrain, shockWave]
}

skrelp :: Pokemon
skrelp = Pokemon {
  pokemonIndex = 689,
  pokemonName = "Skrelp",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Poison,
  pokemonType2 = Water,
  attack = 60,
  defence = 60,
  specialAttack = 60,
  specialDefence = 60,
  pokemonMoves = [absorb, furyCutter, electroweb, bugBite, slash, signalBeam, suckerPunch, discharge, bugBuzz, hiddenPower, hyperBeam, thunderbolt, thunder, leechLife, facade, thief, roundMove, energyBall, chargeBeam, gigaImpact, voltSwitch, xScissor, infestation, poisonJab, wildCharge, pinMissile, poisonSting, crossPoison, rockClimb, pursuit, feintAttack, bugBite, signalBeam, bounce, electroweb, snore, gigaDrain, shockWave]
}

dragalge :: Pokemon
dragalge = Pokemon {
  pokemonIndex = 690,
  pokemonName = "Dragalge",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 65,
  pokemonType1 = Poison,
  pokemonType2 = Dragon,
  attack = 75,
  defence = 90,
  specialAttack = 97,
  specialDefence = 123,
  pokemonMoves = [tackle, rollout, metalClaw, pinMissile, mirrorShot, selfDestruct, ironHead, payback, flashCannon, explosion, hiddenPower, solarBeam, thunderbolt, facade, roundMove, energyBall, explosion, payback, poisonJab, flashCannon, bulletSeed, seedBomb, rockClimb, acidSpray, ironHead, seedBomb, snore, knockOff, gigaDrain]
}

clauncher :: Pokemon
clauncher = Pokemon {
  pokemonIndex = 691,
  pokemonName = "Clauncher",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 50,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 53,
  defence = 62,
  specialAttack = 58,
  specialDefence = 63,
  pokemonMoves = [powerWhip, rockClimb, tackle, rollout, rollout, metalClaw, pinMissile, mirrorShot, selfDestruct, ironHead, payback, flashCannon, explosion, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, aerialAce, facade, roundMove, energyBall, explosion, shadowClaw, payback, gigaImpact, bulldoze, poisonJab, flashCannon, bulletSeed, seedBomb, rockClimb, acidSpray, ironHead, seedBomb, snore, knockOff, gigaDrain]
}

clawitzer :: Pokemon
clawitzer = Pokemon {
  pokemonIndex = 692,
  pokemonName = "Clawitzer",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 71,
  pokemonType1 = Water,
  pokemonType2 = None,
  attack = 73,
  defence = 88,
  specialAttack = 120,
  specialDefence = 89,
  pokemonMoves = [viceGrip, thunderShock, gearGrind, bind, chargeBeam, mirrorShot, discharge, zapCannon, hyperBeam, hiddenPower, hyperBeam, thunderbolt, facade, roundMove, chargeBeam, voltSwitch, flashCannon, wildCharge, signalBeam, uproar, bind, snore, shockWave]
}

helioptile :: Pokemon
helioptile = Pokemon {
  pokemonIndex = 693,
  pokemonName = "Helioptile",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 44,
  pokemonType1 = Electric,
  pokemonType2 = Normal,
  attack = 38,
  defence = 33,
  specialAttack = 61,
  specialDefence = 43,
  pokemonMoves = [viceGrip, thunderShock, gearGrind, thunderShock, gearGrind, bind, chargeBeam, mirrorShot, discharge, zapCannon, hyperBeam, hiddenPower, hyperBeam, thunderbolt, facade, roundMove, chargeBeam, voltSwitch, flashCannon, wildCharge, signalBeam, uproar, bind, snore, shockWave]
}

heliolisk :: Pokemon
heliolisk = Pokemon {
  pokemonIndex = 694,
  pokemonName = "Heliolisk",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 62,
  pokemonType1 = Electric,
  pokemonType2 = Normal,
  attack = 55,
  defence = 52,
  specialAttack = 109,
  specialDefence = 94,
  pokemonMoves = [viceGrip, thunderShock, gearGrind, thunderShock, gearGrind, bind, chargeBeam, mirrorShot, discharge, zapCannon, hyperBeam, hiddenPower, hyperBeam, thunderbolt, thunder, facade, roundMove, chargeBeam, gigaImpact, voltSwitch, flashCannon, wildCharge, signalBeam, uproar, bind, snore, shockWave]
}

tyrunt :: Pokemon
tyrunt = Pokemon {
  pokemonIndex = 695,
  pokemonName = "Tyrunt",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 58,
  pokemonType1 = Rock,
  pokemonType2 = Dragon,
  attack = 89,
  defence = 77,
  specialAttack = 45,
  specialDefence = 45,
  pokemonMoves = [tackle, spark, chargeBeam, chargeBeam]
}

tyrantrum :: Pokemon
tyrantrum = Pokemon {
  pokemonIndex = 696,
  pokemonName = "Tyrantrum",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 82,
  pokemonType1 = Rock,
  pokemonType2 = Dragon,
  attack = 121,
  defence = 119,
  specialAttack = 69,
  specialDefence = 59,
  pokemonMoves = [crunch, headbutt, spark, chargeBeam, bind, acid, discharge, thunderbolt, acidSpray, wildCharge, zapCannon, thrash, hiddenPower, thunderbolt, thunder, facade, roundMove, chargeBeam, acrobatics, voltSwitch, uturn, flashCannon, wildCharge, signalBeam, bounce, aquaTail, ironTail, bind, snore, knockOff, gigaDrain, shockWave, tackle]
}

amaura :: Pokemon
amaura = Pokemon {
  pokemonIndex = 697,
  pokemonName = "Amaura",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 77,
  pokemonType1 = Rock,
  pokemonType2 = Ice,
  attack = 59,
  defence = 50,
  specialAttack = 67,
  specialDefence = 63,
  pokemonMoves = [crunch, thrash, zapCannon, crushClaw, headbutt, acid, discharge, dragonClaw, hiddenPower, hyperBeam, thunderbolt, thunder, brickBreak, flamethrower, rockTomb, facade, roundMove, chargeBeam, acrobatics, gigaImpact, voltSwitch, rockSlide, dragonTail, uturn, flashCannon, wildCharge, signalBeam, bounce, thunderPunch, firePunch, superpower, aquaTail, dragonPulse, ironTail, bind, snore, knockOff, gigaDrain, drainPunch, focusPunch, shockWave, outrage, spark, chargeBeam, bind, thunderbolt, acidSpray, wildCharge, tackle]
}

aurorus :: Pokemon
aurorus = Pokemon {
  pokemonIndex = 698,
  pokemonName = "Aurorus",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 123,
  pokemonType1 = Rock,
  pokemonType2 = Ice,
  attack = 77,
  defence = 72,
  specialAttack = 99,
  specialDefence = 92,
  pokemonMoves = [confusion, psybeam, headbutt, hiddenPower, zenHeadbutt, psychic, synchronoise, psyshock, hiddenPower, thunderbolt, psychic, shadowBall, rockTomb, facade, thief, roundMove, echoedVoice, steelWing, energyBall, chargeBeam, rockSlide, dreamEater, darkPulse, astonish, signalBeam, uproar, zenHeadbutt, snore, shockWave]
}

sylveon :: Pokemon
sylveon = Pokemon {
  pokemonIndex = 699,
  pokemonName = "Sylveon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 95,
  pokemonType1 = Fairy,
  pokemonType2 = None,
  attack = 65,
  defence = 65,
  specialAttack = 110,
  specialDefence = 130,
  pokemonMoves = [synchronoise, confusion, psybeam, headbutt, hiddenPower, zenHeadbutt, psychic, synchronoise, psyshock, hiddenPower, hyperBeam, thunderbolt, psychic, shadowBall, rockTomb, facade, thief, roundMove, echoedVoice, steelWing, energyBall, chargeBeam, gigaImpact, rockSlide, dreamEater, darkPulse, astonish, signalBeam, uproar, zenHeadbutt, snore, shockWave]
}

hawlucha :: Pokemon
hawlucha = Pokemon {
  pokemonIndex = 700,
  pokemonName = "Hawlucha",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 78,
  pokemonType1 = Fighting,
  pokemonType2 = Flying,
  attack = 92,
  defence = 75,
  specialAttack = 74,
  specialDefence = 63,
  pokemonMoves = [ember, astonish, smog, fireSpin, flameBurst, hex, inferno, shadowBall, overheat, hiddenPower, solarBeam, psychic, shadowBall, flamethrower, fireBlast, facade, flameCharge, thief, roundMove, overheat, energyBall, payback, dreamEater, darkPulse, heatWave, acid, clearSmog, darkPulse, snore, heatWave, shockWave]
}
-- defaultCharmander :: Pokemon
-- defaultCharmander = Pokemon {
--   pokemonName = "Charmander",
--   moves = [defaultScratch, defaultEmber, defaultFlamethrower],
--   health = baseHealth,
--   level = baseLevel,
--   pokemonType = "Fire"
--   }

-- defaultBulbasaur :: Pokemon
-- defaultBulbasaur = Pokemon {
--   pokemonName = "Bulbasaur",
--   moves = [defaultVineWhip, defaultGrowl],
--   health = baseHealth,
--   level = baseHealth,
--   pokemonType = "Grass"
-- }

-- defaultWartortle :: Pokemon
-- defaultWartortle = Pokemon {
--   pokemonName = "Wartortle",
--   moves = [defaultScratch, defaultWaterGun, defaultSurf],
--   health = baseHealth,
--   level = baseHealth,
--   pokemonType = "Water"
-- }

-- defaultSpearow :: Pokemon
-- defaultSpearow = Pokemon {
--   pokemonName = "Spearow",
--   moves = [defaultScratch, defaultPeck, defaultGrowl],
--   health = baseHealth,
--   level = baseHealth,
--   pokemonType = "Normal"
-- }



