module Foreign.PokemonGame.Pokemon where

import Foreign.PokemonGame.Move
import Foreign.PokemonGame.Type

-- data Moves = Ember | FlameThrower |BasicAttack| FireBlast  deriving (Eq, Show)
data Pokemon = Pokemon{
  pokemonIndex::Int,
  pokemonName::[Char],
  health::Int,
  level::Int,
  pokemonHP:: Integer,
  pokemonType1::Type,
  pokemonType2::Type,
  attack::Int,
  defence::Int,
  specialAttack::Int,
  specialDefence::Int,
  pokemonMoves::[Move],
  numHeals::Int
  }  deriving (Eq,Show,Read)



damageBase m
  | m == "Ember" = 20
  | m == "FlameThrower" = 30
  | m == "FireBlast" = 50
  | otherwise = 5

baseLevel:: Int
baseLevel = 20

baseHealth:: Int
baseHealth = 20

baseNumHeals::Int
baseNumHeals = 3


bulbasaur :: Pokemon
bulbasaur = Pokemon {
  pokemonIndex = 1,
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
  pokemonMoves = [tackle, vineWhip, takeDown, razorLeaf, doubleEdge, solarBeam, venoshock, hiddenPower, sludgeBomb, facade, roundMove, echoedVoice, energyBall, frenzyPlant, skullBash, petalDance, magicalLeaf, leafStorm, powerWhip, sludge, gigaDrain, seedBomb, bind, snore, knockOff],
  numHeals = baseNumHeals
}

ivysaur :: Pokemon
ivysaur = Pokemon {
  pokemonIndex = 2,
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
  pokemonMoves = [petalDance, tackle, vineWhip, takeDown, razorLeaf, doubleEdge, petalBlizzard, solarBeam, venoshock, hiddenPower, hyperBeam, earthquake, sludgeBomb, facade, roundMove, echoedVoice, energyBall, gigaImpact, bulldoze, frenzyPlant, grassPledge, skullBash, magicalLeaf, leafStorm, powerWhip, sludge, gigaDrain, seedBomb, bind, snore, knockOff, outrage],
  numHeals = baseNumHeals
}

venusaur :: Pokemon
venusaur = Pokemon {
  pokemonIndex = 3,
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
  pokemonMoves = [petalDance, tackle, vineWhip, takeDown, razorLeaf, doubleEdge, petalBlizzard, solarBeam, venoshock, hiddenPower, hyperBeam, earthquake, sludgeBomb, facade, roundMove, echoedVoice, energyBall, gigaImpact, bulldoze, frenzyPlant, grassPledge, skullBash, magicalLeaf, leafStorm, powerWhip, sludge, gigaDrain, seedBomb, bind, snore, knockOff, outrage],
  numHeals = baseNumHeals
}

charmander :: Pokemon
charmander = Pokemon {
  pokemonIndex = 4,
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
  pokemonMoves = [scratch, ember, fireFang, flameBurst, slash, flamethrower, fireSpin, inferno, dragonClaw, hiddenPower, brickBreak, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, shadowClaw, rockSlide, blastBurn, ancientPower, bite, outrage, crunch, dragonRush, metalClaw, flareBlitz, dragonPulse, focusPunch, airCutter, thunderPunch, firePunch, ironTail, snore, heatWave],
  numHeals = baseNumHeals
}

charmeleon :: Pokemon
charmeleon = Pokemon {
  pokemonIndex = 5,
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
  pokemonMoves = [scratch, ember, fireFang, flameBurst, slash, flamethrower, fireSpin, inferno, dragonClaw, hiddenPower, brickBreak, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, shadowClaw, rockSlide, blastBurn, ancientPower, bite, outrage, crunch, dragonRush, metalClaw, flareBlitz, dragonPulse, focusPunch, airCutter, thunderPunch, firePunch, ironTail, snore, heatWave],
  numHeals = baseNumHeals
}

charizard :: Pokemon
charizard = Pokemon {
  pokemonIndex = 6,
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
  pokemonMoves = [wingAttack, flareBlitz, heatWave, dragonClaw, shadowClaw, airSlash, scratch, ember, fireFang, flameBurst, slash, flamethrower, fireSpin, inferno, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, steelWing, focusBlast, skyDrop, brutalSwing, gigaImpact, fly, bulldoze, rockSlide, dragonTail, blastBurn, firePledge, ancientPower, bite, outrage, crunch, dragonRush, metalClaw, dragonPulse, focusPunch, airCutter, thunderPunch, firePunch, ironTail, snore],
  numHeals = baseNumHeals
}

squirtle :: Pokemon
squirtle = Pokemon {
  pokemonIndex = 7,
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
  pokemonMoves = [wingAttack, flareBlitz, heatWave, dragonClaw, shadowClaw, airSlash, scratch, ember, fireFang, flameBurst, slash, flamethrower, fireSpin, inferno, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, steelWing, focusBlast, skyDrop, brutalSwing, gigaImpact, fly, bulldoze, rockSlide, dragonTail, blastBurn, firePledge, ancientPower, bite, outrage, crunch, dragonRush, metalClaw, dragonPulse, focusPunch, airCutter, thunderPunch, firePunch, ironTail, snore],
  numHeals = baseNumHeals
}

wartortle :: Pokemon
wartortle = Pokemon {
  pokemonIndex = 8,
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
  pokemonMoves = [wingAttack, flareBlitz, heatWave, dragonClaw, shadowClaw, airSlash, scratch, ember, fireFang, flameBurst, slash, flamethrower, fireSpin, inferno, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, steelWing, focusBlast, skyDrop, brutalSwing, gigaImpact, fly, bulldoze, rockSlide, dragonTail, blastBurn, firePledge, thunderPunch, firePunch, dragonPulse, ironTail, snore, airCutter, focusPunch, outrage],
  numHeals = baseNumHeals
}

blastoise :: Pokemon
blastoise = Pokemon {
  pokemonIndex = 9,
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
  pokemonMoves = [tackle, waterGun, bubble, bite, rapidSpin, waterPulse, aquaTail, skullBash, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, facade, roundMove, scald, surf, waterfall, hydroCannon, muddyWater, fakeOut, aquaJet, brine, dragonPulse, auraSphere, icePunch, icyWind, zenHeadbutt, ironTail, snore, focusPunch],
  numHeals = baseNumHeals
}

caterpie :: Pokemon
caterpie = Pokemon {
  pokemonIndex = 10,
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
  pokemonMoves = [tackle, waterGun, bubble, bite, rapidSpin, waterPulse, aquaTail, skullBash, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, facade, roundMove, scald, surf, waterfall, hydroCannon, muddyWater, fakeOut, aquaJet, brine, dragonPulse, auraSphere, icePunch, icyWind, zenHeadbutt, ironTail, snore, focusPunch],
  numHeals = baseNumHeals
}

metapod :: Pokemon
metapod = Pokemon {
  pokemonIndex = 11,
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
  pokemonMoves = [flashCannon, tackle, waterGun, bubble, bite, rapidSpin, waterPulse, aquaTail, skullBash, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, roundMove, focusBlast, scald, gigaImpact, bulldoze, rockSlide, dragonTail, surf, darkPulse, waterfall, hydroCannon, waterPledge, muddyWater, fakeOut, aquaJet, brine, dragonPulse, auraSphere, signalBeam, icePunch, icyWind, zenHeadbutt, ironTail, snore, focusPunch, outrage],
  numHeals = baseNumHeals
}

butterfree :: Pokemon
butterfree = Pokemon {
  pokemonIndex = 12,
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
  pokemonMoves = [flashCannon, tackle, waterGun, bubble, bite, rapidSpin, waterPulse, aquaTail, skullBash, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, roundMove, focusBlast, scald, gigaImpact, bulldoze, rockSlide, dragonTail, surf, darkPulse, waterfall, hydroCannon, waterPledge, muddyWater, fakeOut, aquaJet, brine, dragonPulse, auraSphere, signalBeam, icePunch, icyWind, zenHeadbutt, ironTail, snore, focusPunch, outrage],
  numHeals = baseNumHeals
}

weedle :: Pokemon
weedle = Pokemon {
  pokemonIndex = 13,
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
  pokemonMoves = [tackle, bugBite, electroweb, snore],
  numHeals = baseNumHeals
}

kakuna :: Pokemon
kakuna = Pokemon {
  pokemonIndex = 14,
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
  pokemonMoves = [bugBite, electroweb, tackle],
  numHeals = baseNumHeals
}

beedrill :: Pokemon
beedrill = Pokemon {
  pokemonIndex = 15,
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
  pokemonMoves = [gust, confusion, psybeam, silverWind, bugBuzz, airSlash, venoshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, energyBall, acrobatics, gigaImpact, infestation, dreamEater, uturn, bugBite, signalBeam, electroweb, snore, gigaDrain, airCutter, tackle],
  numHeals = baseNumHeals
}

pidgey :: Pokemon
pidgey = Pokemon {
  pokemonIndex = 16,
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
  pokemonMoves = [poisonSting, bugBite, electroweb],
  numHeals = baseNumHeals
}

pidgeotto :: Pokemon
pidgeotto = Pokemon {
  pokemonIndex = 17,
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
  pokemonMoves = [bugBite, electroweb, poisonSting],
  numHeals = baseNumHeals
}

pidgeot :: Pokemon
pidgeot = Pokemon {
  pokemonIndex = 18,
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
  pokemonMoves = [twineedle, furyAttack, rage, pursuit, venoshock, assurance, pinMissile, poisonJab, fellStinger, hiddenPower, hyperBeam, solarBeam, brickBreak, sludgeBomb, aerialAce, facade, thief, roundMove, falseSwipe, brutalSwing, acrobatics, payback, gigaImpact, xScissor, infestation, uturn, bugBite, drillRun, electroweb, snore, knockOff, gigaDrain, airCutter, poisonSting],
  numHeals = baseNumHeals
}

rattata :: Pokemon
rattata = Pokemon {
  pokemonIndex = 19,
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
  pokemonMoves = [twineedle, furyAttack, rage, pursuit, venoshock, assurance, pinMissile, poisonJab, fellStinger, hiddenPower, hyperBeam, solarBeam, brickBreak, sludgeBomb, aerialAce, facade, thief, roundMove, falseSwipe, brutalSwing, acrobatics, payback, gigaImpact, xScissor, infestation, uturn, bugBite, drillRun, electroweb, snore, knockOff, gigaDrain, airCutter, poisonSting],
  numHeals = baseNumHeals
}

raticate :: Pokemon
raticate = Pokemon {
  pokemonIndex = 20,
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
  pokemonMoves = [tackle, gust, quickAttack, twister, wingAttack, airSlash, hurricane, hiddenPower, aerialAce, facade, thief, roundMove, steelWing, fly, uturn, pursuit, feintAttack, airCutter, braveBird, uproar, snore, heatWave, skyAttack],
  numHeals = baseNumHeals
}

spearow :: Pokemon
spearow = Pokemon {
  pokemonIndex = 21,
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
  pokemonMoves = [tackle, gust, quickAttack, twister, wingAttack, airSlash, hurricane, hiddenPower, aerialAce, facade, thief, roundMove, steelWing, fly, uturn, pursuit, feintAttack, airCutter, braveBird, uproar, snore, heatWave, skyAttack],
  numHeals = baseNumHeals
}

fearow :: Pokemon
fearow = Pokemon {
  pokemonIndex = 22,
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
  pokemonMoves = [hurricane, tackle, gust, quickAttack, twister, wingAttack, airSlash, hiddenPower, hyperBeam, aerialAce, facade, thief, roundMove, steelWing, gigaImpact, fly, uturn, pursuit, feintAttack, airCutter, braveBird, uproar, snore, heatWave, skyAttack],
  numHeals = baseNumHeals
}

ekans :: Pokemon
ekans = Pokemon {
  pokemonIndex = 23,
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
  pokemonMoves = [hurricane, tackle, gust, quickAttack, twister, wingAttack, airSlash, hiddenPower, hyperBeam, aerialAce, facade, thief, roundMove, steelWing, gigaImpact, fly, uturn, pursuit, feintAttack, airCutter, braveBird, uproar, snore, heatWave, skyAttack],
  numHeals = baseNumHeals
}

arbok :: Pokemon
arbok = Pokemon {
  pokemonIndex = 24,
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
  pokemonMoves = [tackle, quickAttack, bite, pursuit, hyperFang, assurance, crunch, suckerPunch, doubleEdge, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, uturn, wildCharge, flameWheel, furySwipes, uproar, lastResort, revenge, covet, icyWind, zenHeadbutt, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

pikachu :: Pokemon
pikachu = Pokemon {
  pokemonIndex = 25,
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
  pokemonMoves = [tackle, quickAttack, bite, pursuit, hyperFang, assurance, crunch, suckerPunch, doubleEdge, hiddenPower, iceBeam, blizzard, shadowBall, sludgeBomb, facade, thief, roundMove, shadowClaw, uturn, snarl, darkPulse, furySwipes, uproar, revenge],
  numHeals = baseNumHeals
}

raichu :: Pokemon
raichu = Pokemon {
  pokemonIndex = 26,
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
  pokemonMoves = [tackle, quickAttack, bite, pursuit, hyperFang, assurance, crunch, suckerPunch, doubleEdge, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, gigaImpact, uturn, wildCharge, flameWheel, furySwipes, uproar, lastResort, revenge, covet, icyWind, zenHeadbutt, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

sandshrew :: Pokemon
sandshrew = Pokemon {
  pokemonIndex = 27,
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
  pokemonMoves = [tackle, quickAttack, bite, pursuit, hyperFang, assurance, crunch, suckerPunch, doubleEdge, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, shadowBall, sludgeWave, sludgeBomb, facade, thief, roundMove, shadowClaw, gigaImpact, uturn, snarl, darkPulse, furySwipes, uproar, revenge],
  numHeals = baseNumHeals
}

sandslash :: Pokemon
sandslash = Pokemon {
  pokemonIndex = 28,
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
  pokemonMoves = [tackle, quickAttack, bite, pursuit, hyperFang, assurance, crunch, suckerPunch, doubleEdge, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, shadowBall, sludgeWave, sludgeBomb, facade, thief, roundMove, shadowClaw, gigaImpact, uturn, snarl, darkPulse],
  numHeals = baseNumHeals
}

nidoran :: Pokemon
nidoran = Pokemon {
  pokemonIndex = 32,
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
  pokemonMoves = [crunch, iceFang, thunderFang, fireFang, wrap, poisonSting, bite, acid, acidSpray, mudBomb, belch, gunkShot, venoshock, hiddenPower, hyperBeam, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, thief, roundMove, brutalSwing, payback, gigaImpact, bulldoze, rockSlide, dragonTail, infestation, poisonJab, darkPulse, pursuit, slam, poisonFang, poisonTail, ironTail, suckerPunch, voltTackle, seedBomb, aquaTail, bind, snore, gigaDrain],
  numHeals = baseNumHeals
}

nidorina :: Pokemon
nidorina = Pokemon {
  pokemonIndex = 30,
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
  pokemonMoves = [drillRun, pluck, peck, pursuit, furyAttack, aerialAce, assurance, drillPeck, hiddenPower, hyperBeam, facade, thief, roundMove, echoedVoice, steelWing, falseSwipe, gigaImpact, fly, uturn, feintAttack, quickAttack, triAttack, astonish, skyAttack, uproar, razorWind, snore, heatWave, airCutter],
  numHeals = baseNumHeals
}

nidoqueen :: Pokemon
nidoqueen = Pokemon {
  pokemonIndex = 31,
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
  pokemonMoves = [wrap, poisonSting, bite, acid, acidSpray, mudBomb, belch, gunkShot, venoshock, hiddenPower, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, thief, roundMove, brutalSwing, payback, bulldoze, rockSlide, infestation, poisonJab, darkPulse, pursuit, slam, poisonFang, poisonTail, ironTail, suckerPunch, seedBomb, aquaTail, bind, snore, gigaDrain],
  numHeals = baseNumHeals
}

nidorino :: Pokemon
nidorino = Pokemon {
  pokemonIndex = 33,
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
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch],
  numHeals = baseNumHeals
}

nidoking :: Pokemon
nidoking = Pokemon {
  pokemonIndex = 34,
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
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch],
  numHeals = baseNumHeals
}

clefairy :: Pokemon
clefairy = Pokemon {
  pokemonIndex = 35,
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
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch],
  numHeals = baseNumHeals
}

clefable :: Pokemon
clefable = Pokemon {
  pokemonIndex = 36,
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
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch],
  numHeals = baseNumHeals
}

vulpix :: Pokemon
vulpix = Pokemon {
  pokemonIndex = 37,
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
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch],
  numHeals = baseNumHeals
}

ninetales :: Pokemon
ninetales = Pokemon {
  pokemonIndex = 38,
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
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch],
  numHeals = baseNumHeals
}

jigglypuff :: Pokemon
jigglypuff = Pokemon {
  pokemonIndex = 39,
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
  pokemonMoves = [thunderShock, quickAttack, feint, spark, nuzzle, discharge, slam, thunderbolt, wildCharge, thunder, hiddenPower, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch],
  numHeals = baseNumHeals
}

wigglytuff :: Pokemon
wigglytuff = Pokemon {
  pokemonIndex = 40,
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
  pokemonMoves = [thunderShock, quickAttack, thunderbolt, hiddenPower, hyperBeam, thunder, brickBreak, facade, thief, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, voltSwitch, wildCharge, doubleSlap, fakeOut, thunderPunch, disarmingVoice, voltTackle, covet, signalBeam, electroweb, ironTail, snore, knockOff, focusPunch, shockWave, feint, spark, nuzzle, discharge, slam],
  numHeals = baseNumHeals
}

zubat :: Pokemon
zubat = Pokemon {
  pokemonIndex = 41,
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
  pokemonMoves = [psychic, thunderShock, quickAttack, thunderbolt, psyshock, hiddenPower, hyperBeam, thunder, brickBreak, facade, thief, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, voltSwitch, wildCharge, doubleSlap, fakeOut, thunderPunch, disarmingVoice, voltTackle, feint, spark, nuzzle, discharge, slam],
  numHeals = baseNumHeals
}

golbat :: Pokemon
golbat = Pokemon {
  pokemonIndex = 42,
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
  pokemonMoves = [scratch, poisonSting, rollout, rapidSpin, furyCutter, swift, furySwipes, sandTomb, slash, dig, earthquake, hiddenPower, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, shadowClaw, bulldoze, rockSlide, xScissor, poisonJab, metalClaw, crushClaw, nightSlash, mudShot, chipAway, rockClimb, covet, earthPower, ironTail, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

oddish :: Pokemon
oddish = Pokemon {
  pokemonIndex = 43,
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
  pokemonMoves = [scratch, powderSnow, iceBall, rapidSpin, furyCutter, metalClaw, swift, furySwipes, slash, ironHead, blizzard, hiddenPower, earthquake, leechLife, brickBreak, aerialAce, facade, thief, roundMove, shadowClaw, bulldoze, frostBreath, rockSlide, xScissor, poisonJab, icicleSpear, crushClaw, nightSlash, icicleCrash, chipAway],
  numHeals = baseNumHeals
}

gloom :: Pokemon
gloom = Pokemon {
  pokemonIndex = 44,
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
  pokemonMoves = [crushClaw, scratch, poisonSting, rollout, rapidSpin, furyCutter, swift, furySwipes, sandTomb, slash, dig, earthquake, hiddenPower, hyperBeam, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, metalClaw, nightSlash, mudShot, chipAway, rockClimb, covet, earthPower, ironTail, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

vileplume :: Pokemon
vileplume = Pokemon {
  pokemonIndex = 45,
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
  pokemonMoves = [icicleSpear, icicleCrash, slash, iceBall, metalClaw, hiddenPower, blizzard, hyperBeam, earthquake, leechLife, brickBreak, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, gigaImpact, bulldoze, frostBreath, rockSlide, xScissor, poisonJab, crushClaw, nightSlash, chipAway, scratch, powderSnow, rapidSpin, furyCutter, swift, furySwipes, ironHead],
  numHeals = baseNumHeals
}

paras :: Pokemon
paras = Pokemon {
  pokemonIndex = 46,
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
  pokemonMoves = [scratch, doubleKick, poisonSting, furySwipes, bite, crunch, poisonFang, venoshock, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, sludgeBomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, poisonJab, takeDown, pursuit, skullBash, ironTail, poisonTail, chipAway, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

parasect :: Pokemon
parasect = Pokemon {
  pokemonIndex = 47,
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
  pokemonMoves = [scratch, doubleKick, poisonSting, furySwipes, bite, crunch, poisonFang, venoshock, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, sludgeBomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, poisonJab, takeDown, pursuit, skullBash, ironTail, poisonTail, chipAway, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

venonat :: Pokemon
venonat = Pokemon {
  pokemonIndex = 48,
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
  pokemonMoves = [superpower, scratch, doubleKick, poisonSting, chipAway, bodySlam, earthPower, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, shadowBall, brickBreak, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, focusBlast, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, poisonJab, surf, takeDown, pursuit, skullBash, ironTail, poisonTail, drillRun, uproar, thunderPunch, firePunch, icePunch, icyWind, aquaTail, dragonPulse, snore, focusPunch, shockWave, waterPulse, outrage, furySwipes, bite, crunch, poisonFang],
  numHeals = baseNumHeals
}

venomoth :: Pokemon
venomoth = Pokemon {
  pokemonIndex = 49,
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
  pokemonMoves = [peck, doubleKick, poisonSting, furyAttack, hornAttack, poisonJab, venoshock, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, sludgeBomb, facade, thief, roundMove, echoedVoice, shadowClaw, smartStrike, takeDown, confusion, suckerPunch, headSmash, ironTail, poisonTail, chipAway, drillRun, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

diglett :: Pokemon
diglett = Pokemon {
  pokemonIndex = 50,
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
  pokemonMoves = [peck, doubleKick, poisonSting, furyAttack, hornAttack, poisonJab, venoshock, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, sludgeBomb, facade, thief, roundMove, echoedVoice, shadowClaw, smartStrike, takeDown, confusion, suckerPunch, headSmash, ironTail, poisonTail, chipAway, drillRun, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

dugtrio :: Pokemon
dugtrio = Pokemon {
  pokemonIndex = 51,
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
  pokemonMoves = [megahorn, peck, doubleKick, poisonSting, chipAway, thrash, earthPower, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, shadowBall, brickBreak, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, thief, roundMove, echoedVoice, focusBlast, shadowClaw, smartStrike, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, poisonJab, surf, takeDown, confusion, suckerPunch, headSmash, ironTail, poisonTail, drillRun, uproar, thunderPunch, firePunch, icePunch, superpower, icyWind, aquaTail, dragonPulse, snore, focusPunch, shockWave, waterPulse, outrage, furyAttack, hornAttack],
  numHeals = baseNumHeals
}

meowth :: Pokemon
meowth = Pokemon {
  pokemonIndex = 52,
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
  pokemonMoves = [disarmingVoice, pound, doubleSlap, wakeUpSlap, storedPower, bodySlam, moonblast, meteorMash, psyshock, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, roundMove, echoedVoice, chargeBeam, dreamEater, dazzlingGleam, covet, signalBeam, bounce, thunderPunch, firePunch, icePunch, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse, magicalLeaf],
  numHeals = baseNumHeals
}

persian :: Pokemon
persian = Pokemon {
  pokemonIndex = 53,
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
  pokemonMoves = [disarmingVoice, doubleSlap, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, dreamEater, dazzlingGleam, covet, storedPower, signalBeam, bounce, thunderPunch, firePunch, icePunch, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse, pound, wakeUpSlap, bodySlam, moonblast, meteorMash, magicalLeaf],
  numHeals = baseNumHeals
}

psyduck :: Pokemon
psyduck = Pokemon {
  pokemonIndex = 54,
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
  pokemonMoves = [ember, quickAttack, fireSpin, payback, feintAttack, hex, flameBurst, extrasensory, flamethrower, fireBlast, inferno, hiddenPower, facade, flameCharge, roundMove, overheat, energyBall, darkPulse, heatWave, flareBlitz, secretPower, tailSlap, covet, foulPlay, zenHeadbutt, ironTail, snore],
  numHeals = baseNumHeals
}

golduck :: Pokemon
golduck = Pokemon {
  pokemonIndex = 55,
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
  pokemonMoves = [powderSnow, iceShard, icyWind, payback, feintAttack, hex, auroraBeam, extrasensory, iceBeam, blizzard, hiddenPower, facade, roundMove, frostBreath, darkPulse, freezeDry, moonblast, secretPower, tailSlap],
  numHeals = baseNumHeals
}

mankey :: Pokemon
mankey = Pokemon {
  pokemonIndex = 56,
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
  pokemonMoves = [flamethrower, quickAttack, psyshock, hiddenPower, hyperBeam, solarBeam, fireBlast, facade, flameCharge, roundMove, overheat, energyBall, payback, gigaImpact, dreamEater, darkPulse, feintAttack, heatWave, flareBlitz, extrasensory, secretPower, hex, tailSlap, covet, foulPlay, zenHeadbutt, ironTail, snore, ember, fireSpin, flameBurst, inferno],
  numHeals = baseNumHeals
}

primeape :: Pokemon
primeape = Pokemon {
  pokemonIndex = 57,
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
  pokemonMoves = [dazzlingGleam, iceBeam, iceShard, psyshock, hiddenPower, blizzard, hyperBeam, facade, roundMove, payback, gigaImpact, frostBreath, dreamEater, darkPulse, freezeDry, moonblast, secretPower, tailSlap, extrasensory, powderSnow, icyWind, feintAttack, hex, auroraBeam],
  numHeals = baseNumHeals
}

growlithe :: Pokemon
growlithe = Pokemon {
  pokemonIndex = 58,
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
  pokemonMoves = [pound, disarmingVoice, doubleSlap, rollout, roundMove, wakeUpSlap, bodySlam, hyperVoice, doubleEdge, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, echoedVoice, chargeBeam, dreamEater, wildCharge, dazzlingGleam, feintAttack, lastResort, covet, bounce, thunderPunch, firePunch, icePunch, icyWind, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

arcanine :: Pokemon
arcanine = Pokemon {
  pokemonIndex = 59,
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
  pokemonMoves = [doubleEdge, playRough, doubleSlap, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, dreamEater, wildCharge, dazzlingGleam, feintAttack, lastResort, covet, bounce, thunderPunch, firePunch, icePunch, icyWind, hyperVoice, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse, pound, disarmingVoice, rollout, wakeUpSlap, bodySlam],
  numHeals = baseNumHeals
}

poliwag :: Pokemon
poliwag = Pokemon {
  pokemonIndex = 60,
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
  pokemonMoves = [absorb, astonish, bite, wingAttack, airCutter, swift, poisonFang, leechLife, venoshock, airSlash, hiddenPower, shadowBall, sludgeBomb, aerialAce, facade, thief, roundMove, steelWing, acrobatics, payback, fly, uturn, quickAttack, pursuit, feintAttack, gust, zenHeadbutt, braveBird, gigaDrain, uproar, snore, heatWave],
  numHeals = baseNumHeals
}

poliwhirl :: Pokemon
poliwhirl = Pokemon {
  pokemonIndex = 61,
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
  pokemonMoves = [absorb, astonish, bite, wingAttack, airCutter, swift, poisonFang, leechLife, venoshock, airSlash, hiddenPower, hyperBeam, shadowBall, sludgeBomb, aerialAce, facade, thief, roundMove, steelWing, acrobatics, payback, gigaImpact, fly, uturn, quickAttack, pursuit, feintAttack, gust, zenHeadbutt, braveBird, gigaDrain, uproar, snore, heatWave],
  numHeals = baseNumHeals
}

poliwrath :: Pokemon
poliwrath = Pokemon {
  pokemonIndex = 62,
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
  pokemonMoves = [absorb, acid, megaDrain, gigaDrain, moonblast, petalDance, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, energyBall, infestation, dazzlingGleam, razorLeaf, secretPower, seedBomb, snore],
  numHeals = baseNumHeals
}

abra :: Pokemon
abra = Pokemon {
  pokemonIndex = 63,
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
  pokemonMoves = [absorb, acid, megaDrain, gigaDrain, petalBlizzard, petalDance, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, energyBall, infestation, dazzlingGleam, razorLeaf, secretPower, seedBomb, snore, drainPunch, moonblast],
  numHeals = baseNumHeals
}

kadabra :: Pokemon
kadabra = Pokemon {
  pokemonIndex = 64,
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
  pokemonMoves = [megaDrain, petalBlizzard, petalDance, solarBeam, venoshock, hiddenPower, hyperBeam, sludgeBomb, facade, roundMove, energyBall, gigaImpact, infestation, dazzlingGleam, razorLeaf, secretPower, seedBomb, snore, gigaDrain, drainPunch, absorb, acid, moonblast],
  numHeals = baseNumHeals
}

alakazam :: Pokemon
alakazam = Pokemon {
  pokemonIndex = 65,
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
  pokemonMoves = [scratch, absorb, furyCutter, slash, gigaDrain, xScissor, venoshock, hiddenPower, solarBeam, leechLife, brickBreak, sludgeBomb, aerialAce, facade, thief, roundMove, energyBall, falseSwipe, psybeam, pursuit, metalClaw, bugBite, crossPoison, fellStinger, seedBomb, snore, knockOff],
  numHeals = baseNumHeals
}

machop :: Pokemon
machop = Pokemon {
  pokemonIndex = 66,
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
  pokemonMoves = [crossPoison, scratch, absorb, furyCutter, slash, gigaDrain, xScissor, venoshock, hiddenPower, hyperBeam, solarBeam, leechLife, brickBreak, sludgeBomb, aerialAce, facade, thief, roundMove, energyBall, falseSwipe, gigaImpact, psybeam, pursuit, metalClaw, bugBite, fellStinger, seedBomb, snore, knockOff],
  numHeals = baseNumHeals
}

machoke :: Pokemon
machoke = Pokemon {
  pokemonIndex = 67,
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
  pokemonMoves = [tackle, confusion, psybeam, signalBeam, leechLife, zenHeadbutt, poisonFang, psychic, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, thief, roundMove, infestation, gigaDrain, bugBite, secretPower, snore],
  numHeals = baseNumHeals
}

machamp :: Pokemon
machamp = Pokemon {
  pokemonIndex = 68,
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
  pokemonMoves = [gust, bugBuzz, silverWind, tackle, confusion, psybeam, signalBeam, leechLife, zenHeadbutt, poisonFang, psychic, venoshock, hiddenPower, hyperBeam, solarBeam, sludgeBomb, aerialAce, facade, thief, roundMove, energyBall, acrobatics, gigaImpact, infestation, uturn, gigaDrain, bugBite, secretPower, snore, airCutter],
  numHeals = baseNumHeals
}

bellsprout :: Pokemon
bellsprout = Pokemon {
  pokemonIndex = 69,
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
  pokemonMoves = [scratch, astonish, mudSlap, bulldoze, suckerPunch, mudBomb, earthPower, dig, slash, earthquake, hiddenPower, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, rockSlide, feintAttack, ancientPower, pursuit, uproar, headbutt, snore],
  numHeals = baseNumHeals
}

weepinbell :: Pokemon
weepinbell = Pokemon {
  pokemonIndex = 70,
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
  pokemonMoves = [metalClaw, astonish, mudSlap, bulldoze, suckerPunch, mudBomb, earthPower, dig, ironHead, earthquake, hiddenPower, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, rockSlide, flashCannon, feintAttack, ancientPower, pursuit, thrash, headbutt],
  numHeals = baseNumHeals
}

victreebel :: Pokemon
victreebel = Pokemon {
  pokemonIndex = 71,
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
  pokemonMoves = [sandTomb, nightSlash, triAttack, scratch, astonish, mudSlap, bulldoze, suckerPunch, mudBomb, earthPower, dig, slash, earthquake, hiddenPower, hyperBeam, sludgeWave, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, gigaImpact, stoneEdge, rockSlide, feintAttack, ancientPower, pursuit, uproar, headbutt, snore],
  numHeals = baseNumHeals
}

tentacool :: Pokemon
tentacool = Pokemon {
  pokemonIndex = 72,
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
  pokemonMoves = [sandTomb, nightSlash, triAttack, metalClaw, astonish, mudSlap, bulldoze, suckerPunch, mudBomb, earthPower, dig, ironHead, earthquake, hiddenPower, hyperBeam, sludgeWave, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, gigaImpact, stoneEdge, rockSlide, flashCannon, feintAttack, ancientPower, pursuit, thrash, headbutt],
  numHeals = baseNumHeals
}

tentacruel :: Pokemon
tentacruel = Pokemon {
  pokemonIndex = 73,
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
  pokemonMoves = [scratch, bite, fakeOut, furySwipes, feintAttack, payDay, slash, assurance, nightSlash, feint, hiddenPower, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, dreamEater, uturn, darkPulse, lastResort, ironTail, foulPlay, covet, seedBomb, gunkShot, uproar, icyWind, hyperVoice, snore, knockOff, shockWave, waterPulse],
  numHeals = baseNumHeals
}

geodude :: Pokemon
geodude = Pokemon {
  pokemonIndex = 74,
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
  pokemonMoves = [scratch, bite, fakeOut, furySwipes, feintAttack, payDay, slash, assurance, nightSlash, feint, darkPulse, hiddenPower, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, dreamEater, uturn, foulPlay, covet],
  numHeals = baseNumHeals
}

graveler :: Pokemon
graveler = Pokemon {
  pokemonIndex = 75,
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
  pokemonMoves = [swift, playRough, scratch, bite, fakeOut, furySwipes, feintAttack, powerGem, slash, assurance, nightSlash, feint, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, gigaImpact, dreamEater, uturn, darkPulse, lastResort, ironTail, foulPlay, covet, seedBomb, gunkShot, uproar, icyWind, hyperVoice, snore, knockOff, shockWave, waterPulse, payDay],
  numHeals = baseNumHeals
}

golem :: Pokemon
golem = Pokemon {
  pokemonIndex = 76,
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
  pokemonMoves = [swift, playRough, scratch, bite, fakeOut, furySwipes, feintAttack, powerGem, slash, assurance, nightSlash, feint, darkPulse, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, gigaImpact, dreamEater, uturn, snarl, foulPlay, covet, payDay],
  numHeals = baseNumHeals
}

ponyta :: Pokemon
ponyta = Pokemon {
  pokemonIndex = 77,
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
  pokemonMoves = [scratch, waterGun, confusion, furySwipes, waterPulse, zenHeadbutt, aquaTail, hydroPump, psyshock, hiddenPower, iceBeam, blizzard, psychic, brickBreak, aerialAce, facade, roundMove, scald, shadowClaw, surf, waterfall, psybeam, futureSight, crossChop, mudBomb, secretPower, synchronoise, clearSmog, signalBeam, icePunch, icyWind, ironTail, snore, focusPunch],
  numHeals = baseNumHeals
}

rapidash :: Pokemon
rapidash = Pokemon {
  pokemonIndex = 78,
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
  pokemonMoves = [aquaJet, scratch, waterGun, confusion, furySwipes, waterPulse, zenHeadbutt, aquaTail, hydroPump, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, psychic, brickBreak, aerialAce, facade, lowSweep, roundMove, focusBlast, scald, shadowClaw, gigaImpact, surf, waterfall, psybeam, futureSight, crossChop, mudBomb, secretPower, synchronoise, clearSmog, signalBeam, icePunch, icyWind, ironTail, snore, focusPunch],
  numHeals = baseNumHeals
}

slowpoke :: Pokemon
slowpoke = Pokemon {
  pokemonIndex = 79,
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
  pokemonMoves = [covet, scratch, furySwipes, karateChop, pursuit, crossChop, assurance, thrash, closeCombat, stompingTantrum, outrage, hiddenPower, smackDown, thunderbolt, thunder, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, overheat, focusBlast, acrobatics, payback, bulldoze, rockSlide, poisonJab, uturn, revenge, smellingSalts, focusPunch, nightSlash, powerTrip, dualChop, seedBomb, gunkShot, uproar, thunderPunch, firePunch, icePunch, ironTail, snore],
  numHeals = baseNumHeals
}

slowbro :: Pokemon
slowbro = Pokemon {
  pokemonIndex = 80,
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
  pokemonMoves = [rage, scratch, furySwipes, karateChop, pursuit, crossChop, assurance, thrash, closeCombat, stompingTantrum, outrage, hiddenPower, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, overheat, focusBlast, acrobatics, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, uturn, revenge, smellingSalts, focusPunch, nightSlash, powerTrip, covet, dualChop, seedBomb, gunkShot, uproar, thunderPunch, firePunch, icePunch, ironTail, snore],
  numHeals = baseNumHeals
}

magnemite :: Pokemon
magnemite = Pokemon {
  pokemonIndex = 81,
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
  pokemonMoves = [bite, ember, flameWheel, fireFang, takeDown, flameBurst, retaliate, flamethrower, crunch, heatWave, outrage, flareBlitz, hiddenPower, fireBlast, aerialAce, facade, flameCharge, thief, roundMove, overheat, wildCharge, snarl, bodySlam, thrash, fireSpin, doubleEdge, covet, ironTail, doubleKick, closeCombat, burnUp, snore],
  numHeals = baseNumHeals
}

magneton :: Pokemon
magneton = Pokemon {
  pokemonIndex = 82,
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
  pokemonMoves = [thunderFang, bite, fireFang, extremeSpeed, hiddenPower, hyperBeam, solarBeam, flamethrower, fireBlast, aerialAce, facade, flameCharge, thief, roundMove, overheat, gigaImpact, bulldoze, wildCharge, snarl, bodySlam, crunch, thrash, fireSpin, heatWave, doubleEdge, flareBlitz, covet, ironTail, doubleKick, closeCombat, burnUp, ironHead, dragonPulse, snore, outrage, ember, flameWheel, takeDown, flameBurst, retaliate],
  numHeals = baseNumHeals
}

farfetch :: Pokemon
farfetch = Pokemon {
  pokemonIndex = 83,
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
  pokemonMoves = [waterGun, bubble, doubleSlap, bodySlam, bubbleBeam, mudShot, wakeUpSlap, hydroPump, mudBomb, hiddenPower, iceBeam, blizzard, psychic, facade, thief, roundMove, scald, surf, waterfall, iceBall, waterPulse, icyWind, snore],
  numHeals = baseNumHeals
}

doduo :: Pokemon
doduo = Pokemon {
  pokemonIndex = 84,
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
  pokemonMoves = [waterGun, bubble, doubleSlap, bodySlam, bubbleBeam, mudShot, wakeUpSlap, hydroPump, mudBomb, hiddenPower, iceBeam, blizzard, earthquake, psychic, brickBreak, facade, thief, roundMove, scald, bulldoze, surf, waterfall, iceBall, waterPulse, icePunch, icyWind, snore, focusPunch],
  numHeals = baseNumHeals
}

dodrio :: Pokemon
dodrio = Pokemon {
  pokemonIndex = 85,
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
  pokemonMoves = [submission, circleThrow, bubbleBeam, doubleSlap, dynamicPunch, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, scald, payback, gigaImpact, bulldoze, rockSlide, poisonJab, surf, waterfall, iceBall, mudShot, waterPulse, icePunch, icyWind, snore, focusPunch, waterGun, bubble, bodySlam, wakeUpSlap, hydroPump, mudBomb],
  numHeals = baseNumHeals
}

seel :: Pokemon
seel = Pokemon {
  pokemonIndex = 86,
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
  pokemonMoves = [psyshock, hiddenPower, psychic, shadowBall, facade, thief, roundMove, energyBall, chargeBeam, dreamEater, dazzlingGleam, knockOff, firePunch, thunderPunch, icePunch, signalBeam, foulPlay, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

dewgong :: Pokemon
dewgong = Pokemon {
  pokemonIndex = 87,
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
  pokemonMoves = [confusion, psybeam, psychoCut, psychic, futureSight, psyshock, hiddenPower, shadowBall, facade, thief, roundMove, energyBall, chargeBeam, dreamEater, dazzlingGleam, knockOff, firePunch, thunderPunch, icePunch, signalBeam, foulPlay, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

grimer :: Pokemon
grimer = Pokemon {
  pokemonIndex = 88,
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
  pokemonMoves = [confusion, psybeam, psychoCut, psychic, futureSight, psyshock, hiddenPower, hyperBeam, shadowBall, facade, thief, roundMove, focusBlast, energyBall, chargeBeam, gigaImpact, dreamEater, dazzlingGleam, knockOff, firePunch, thunderPunch, icePunch, signalBeam, foulPlay, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

muk :: Pokemon
muk = Pokemon {
  pokemonIndex = 89,
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
  pokemonMoves = [confusion, psybeam, psychoCut, psychic, futureSight, psyshock, hiddenPower, hyperBeam, shadowBall, facade, thief, roundMove, focusBlast, energyBall, chargeBeam, gigaImpact, dreamEater, dazzlingGleam, knockOff, firePunch, thunderPunch, icePunch, signalBeam, foulPlay, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

shellder :: Pokemon
shellder = Pokemon {
  pokemonIndex = 90,
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
  pokemonMoves = [karateChop, lowSweep, revenge, knockOff, vitalThrow, wakeUpSlap, dualChop, submission, crossChop, dynamicPunch, hiddenPower, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, payback, bulldoze, rockSlide, poisonJab, rollingKick, smellingSalts, closeCombat, firePunch, thunderPunch, icePunch, bulletPunch, superpower, snore, focusPunch],
  numHeals = baseNumHeals
}

cloyster :: Pokemon
cloyster = Pokemon {
  pokemonIndex = 91,
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
  pokemonMoves = [karateChop, lowSweep, revenge, knockOff, vitalThrow, wakeUpSlap, dualChop, submission, crossChop, dynamicPunch, hiddenPower, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, payback, bulldoze, rockSlide, poisonJab, rollingKick, smellingSalts, closeCombat, firePunch, thunderPunch, icePunch, bulletPunch, superpower, snore, focusPunch],
  numHeals = baseNumHeals
}

gastly :: Pokemon
gastly = Pokemon {
  pokemonIndex = 92,
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
  pokemonMoves = [strength, karateChop, lowSweep, revenge, knockOff, vitalThrow, wakeUpSlap, dualChop, submission, crossChop, dynamicPunch, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, rollingKick, smellingSalts, closeCombat, firePunch, thunderPunch, icePunch, bulletPunch, superpower, snore, focusPunch],
  numHeals = baseNumHeals
}

haunter :: Pokemon
haunter = Pokemon {
  pokemonIndex = 93,
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
  pokemonMoves = [vineWhip, wrap, acid, knockOff, razorLeaf, poisonJab, slam, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, thief, roundMove, energyBall, infestation, leechLife, magicalLeaf, weatherBall, bulletSeed, gigaDrain, clearSmog, powerWhip, acidSpray, belch, seedBomb, bind, snore],
  numHeals = baseNumHeals
}

gengar :: Pokemon
gengar = Pokemon {
  pokemonIndex = 94,
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
  pokemonMoves = [vineWhip, wrap, acid, knockOff, razorLeaf, poisonJab, slam, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, thief, roundMove, energyBall, infestation, leechLife, magicalLeaf, weatherBall, bulletSeed, gigaDrain, clearSmog, powerWhip, acidSpray, belch, seedBomb, bind, snore],
  numHeals = baseNumHeals
}

onix :: Pokemon
onix = Pokemon {
  pokemonIndex = 95,
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
  pokemonMoves = [leafTornado, vineWhip, razorLeaf, leafStorm, leafBlade, venoshock, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, thief, roundMove, energyBall, gigaImpact, infestation, poisonJab, leechLife, magicalLeaf, weatherBall, bulletSeed, gigaDrain, clearSmog, powerWhip, acidSpray, belch, seedBomb, bind, snore, knockOff, wrap, acid, slam],
  numHeals = baseNumHeals
}

drowzee :: Pokemon
drowzee = Pokemon {
  pokemonIndex = 96,
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
  pokemonMoves = [poisonSting, constrict, acid, waterPulse, wrap, acidSpray, bubbleBeam, poisonJab, brine, hex, sludgeWave, hydroPump, venoshock, hiddenPower, iceBeam, blizzard, sludgeBomb, facade, thief, roundMove, scald, payback, infestation, surf, waterfall, dazzlingGleam, auroraBeam, rapidSpin, knockOff, muddyWater, bubble, icyWind, bind, snore, gigaDrain],
  numHeals = baseNumHeals
}

hypno :: Pokemon
hypno = Pokemon {
  pokemonIndex = 97,
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
  pokemonMoves = [poisonSting, constrict, acid, waterPulse, wrap, acidSpray, bubbleBeam, poisonJab, brine, hex, sludgeWave, hydroPump, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, sludgeBomb, facade, thief, roundMove, scald, payback, gigaImpact, infestation, surf, waterfall, dazzlingGleam, auroraBeam, rapidSpin, knockOff, muddyWater, bubble, icyWind, bind, snore, gigaDrain],
  numHeals = baseNumHeals
}

krabby :: Pokemon
krabby = Pokemon {
  pokemonIndex = 98,
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
  pokemonMoves = [tackle, rollout, rockThrow, smackDown, bulldoze, selfDestruct, rockBlast, earthquake, explosion, doubleEdge, stoneEdge, hiddenPower, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, rockSlide, megaPunch, hammerArm, focusPunch, rockClimb, thunderPunch, firePunch, earthPower, superpower, snore],
  numHeals = baseNumHeals
}

kingler :: Pokemon
kingler = Pokemon {
  pokemonIndex = 99,
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
  pokemonMoves = [tackle, rollout, spark, rockThrow, smackDown, thunderPunch, selfDestruct, rockBlast, discharge, explosion, doubleEdge, stoneEdge, hiddenPower, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, chargeBeam, brutalSwing, voltSwitch, bulldoze, rockSlide, rockClimb],
  numHeals = baseNumHeals
}

voltorb :: Pokemon
voltorb = Pokemon {
  pokemonIndex = 100,
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
  pokemonMoves = [tackle, rollout, rockThrow, smackDown, bulldoze, selfDestruct, rockBlast, earthquake, explosion, doubleEdge, stoneEdge, hiddenPower, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, rockSlide, megaPunch, hammerArm, focusPunch, rockClimb, thunderPunch, firePunch, earthPower, superpower, snore],
  numHeals = baseNumHeals
}

electrode :: Pokemon
electrode = Pokemon {
  pokemonIndex = 101,
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
  pokemonMoves = [tackle, rollout, spark, rockThrow, smackDown, thunderPunch, selfDestruct, rockBlast, discharge, explosion, doubleEdge, stoneEdge, hiddenPower, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, chargeBeam, brutalSwing, voltSwitch, bulldoze, rockSlide, rockClimb],
  numHeals = baseNumHeals
}

exeggcute :: Pokemon
exeggcute = Pokemon {
  pokemonIndex = 102,
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
  pokemonMoves = [tackle, steamroller, rockThrow, smackDown, bulldoze, selfDestruct, rockBlast, earthquake, explosion, doubleEdge, stoneEdge, hiddenPower, hyperBeam, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, focusBlast, gigaImpact, rockSlide, megaPunch, hammerArm, focusPunch, rockClimb, ironHead, thunderPunch, firePunch, earthPower, superpower, snore, rollout],
  numHeals = baseNumHeals
}

exeggutor :: Pokemon
exeggutor = Pokemon {
  pokemonIndex = 103,
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
  pokemonMoves = [tackle, steamroller, spark, rockThrow, smackDown, thunderPunch, selfDestruct, rockBlast, discharge, explosion, doubleEdge, stoneEdge, hiddenPower, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, echoedVoice, focusBlast, chargeBeam, brutalSwing, gigaImpact, voltSwitch, bulldoze, rockSlide, wildCharge, rockClimb, rollout],
  numHeals = baseNumHeals
}

cubone :: Pokemon
cubone = Pokemon {
  pokemonIndex = 104,
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
  pokemonMoves = [tackle, ember, flameWheel, stomp, flameCharge, fireSpin, takeDown, inferno, fireBlast, bounce, flareBlitz, hiddenPower, solarBeam, flamethrower, facade, roundMove, echoedVoice, overheat, wildCharge, thrash, doubleKick, doubleEdge, ironTail, snore, heatWave],
  numHeals = baseNumHeals
}

marowak :: Pokemon
marowak = Pokemon {
  pokemonIndex = 105,
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
  pokemonMoves = [furyAttack, poisonJab, megahorn, quickAttack, ember, flameWheel, stomp, flameCharge, fireSpin, takeDown, inferno, fireBlast, bounce, flareBlitz, hiddenPower, hyperBeam, solarBeam, flamethrower, facade, roundMove, echoedVoice, overheat, smartStrike, gigaImpact, wildCharge, thrash, doubleKick, doubleEdge, drillRun, ironTail, snore, heatWave, tackle],
  numHeals = baseNumHeals
}

hitmonlee :: Pokemon
hitmonlee = Pokemon {
  pokemonIndex = 106,
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
  pokemonMoves = [tackle, waterGun, confusion, headbutt, waterPulse, zenHeadbutt, psychic, psyshock, hiddenPower, iceBeam, blizzard, earthquake, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, scald, bulldoze, dreamEater, surf, futureSight, stomp, snore, belch, signalBeam, icyWind, aquaTail, ironTail],
  numHeals = baseNumHeals
}

hitmonchan :: Pokemon
hitmonchan = Pokemon {
  pokemonIndex = 107,
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
  pokemonMoves = [tackle, waterGun, confusion, headbutt, waterPulse, zenHeadbutt, psychic, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, aerialAce, facade, roundMove, echoedVoice, focusBlast, scald, gigaImpact, bulldoze, dreamEater, surf, futureSight, stomp, snore, belch, signalBeam, icePunch, foulPlay, icyWind, aquaTail, ironTail, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

lickitung :: Pokemon
lickitung = Pokemon {
  pokemonIndex = 108,
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
  pokemonMoves = [tackle, waterGun, confusion, headbutt, waterPulse, zenHeadbutt, psychic, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, aerialAce, facade, roundMove, echoedVoice, focusBlast, scald, gigaImpact, bulldoze, dreamEater, surf, futureSight, stomp, snore, belch, signalBeam, icePunch, foulPlay, icyWind, aquaTail, ironTail, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

koffing :: Pokemon
koffing = Pokemon {
  pokemonIndex = 109,
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
  pokemonMoves = [tackle, thunderShock, magnetBomb, spark, mirrorShot, flashCannon, discharge, zapCannon, hiddenPower, thunderbolt, thunder, facade, roundMove, chargeBeam, explosion, voltSwitch, wildCharge, signalBeam, electroweb, snore, shockWave],
  numHeals = baseNumHeals
}

weezing :: Pokemon
weezing = Pokemon {
  pokemonIndex = 110,
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
  pokemonMoves = [triAttack, zapCannon, tackle, thunderShock, magnetBomb, spark, mirrorShot, flashCannon, discharge, hiddenPower, hyperBeam, thunderbolt, thunder, facade, roundMove, chargeBeam, explosion, gigaImpact, voltSwitch, wildCharge, signalBeam, electroweb, snore, shockWave],
  numHeals = baseNumHeals
}

rhyhorn :: Pokemon
rhyhorn = Pokemon {
  pokemonIndex = 111,
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
  pokemonMoves = [braveBird, poisonJab, peck, furyCutter, furyAttack, aerialAce, knockOff, slash, airCutter, nightSlash, acrobatics, feint, falseSwipe, airSlash, hiddenPower, facade, thief, roundMove, steelWing, brutalSwing, fly, uturn, gust, quickAttack, covet, mudSlap, leafBlade, revenge, uproar, lastResort, ironTail, snore, heatWave, skyAttack],
  numHeals = baseNumHeals
}

rhydon :: Pokemon
rhydon = Pokemon {
  pokemonIndex = 112,
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
  pokemonMoves = [peck, quickAttack, rage, furyAttack, pursuit, pluck, doubleHit, uproar, jumpKick, drillPeck, thrash, hiddenPower, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, fly, feintAttack, braveBird, assurance, snore, knockOff, airCutter],
  numHeals = baseNumHeals
}

chansey :: Pokemon
chansey = Pokemon {
  pokemonIndex = 113,
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
  pokemonMoves = [triAttack, peck, quickAttack, rage, furyAttack, pursuit, pluck, doubleHit, uproar, jumpKick, drillPeck, thrash, hiddenPower, hyperBeam, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, payback, gigaImpact, fly, feintAttack, braveBird, assurance, snore, knockOff, skyAttack, airCutter],
  numHeals = baseNumHeals
}

tangela :: Pokemon
tangela = Pokemon {
  pokemonIndex = 114,
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
  pokemonMoves = [headbutt, icyWind, iceShard, auroraBeam, aquaJet, brine, takeDown, dive, aquaTail, iceBeam, hiddenPower, blizzard, facade, thief, roundMove, echoedVoice, smartStrike, surf, waterfall, lick, slam, fakeOut, icicleSpear, signalBeam, waterPulse, ironTail, belch, drillRun, snore],
  numHeals = baseNumHeals
}

kangaskhan :: Pokemon
kangaskhan = Pokemon {
  pokemonIndex = 115,
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
  pokemonMoves = [headbutt, signalBeam, icyWind, iceShard, auroraBeam, aquaJet, brine, takeDown, dive, aquaTail, iceBeam, hiddenPower, blizzard, hyperBeam, facade, thief, roundMove, echoedVoice, smartStrike, gigaImpact, frostBreath, surf, waterfall, lick, slam, fakeOut, icicleSpear, waterPulse, ironTail, belch, drillRun, snore],
  numHeals = baseNumHeals
}

horsea :: Pokemon
horsea = Pokemon {
  pokemonIndex = 116,
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
  pokemonMoves = [pound, mudSlap, sludge, mudBomb, sludgeBomb, sludgeWave, gunkShot, belch, venoshock, hiddenPower, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, explosion, payback, rockSlide, infestation, poisonJab, lick, shadowPunch, shadowSneak, acidSpray, thunderPunch, firePunch, icePunch, snore, gigaDrain, shockWave],
  numHeals = baseNumHeals
}

seadra :: Pokemon
seadra = Pokemon {
  pokemonIndex = 117,
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
  pokemonMoves = [pound, bite, acidSpray, poisonFang, knockOff, crunch, gunkShot, belch, venoshock, hiddenPower, shadowBall, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, thief, roundMove, brutalSwing, explosion, payback, stoneEdge, rockSlide, infestation, poisonJab, snarl, clearSmog, pursuit, assurance, shadowSneak],
  numHeals = baseNumHeals
}

goldeen :: Pokemon
goldeen = Pokemon {
  pokemonIndex = 118,
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
  pokemonMoves = [pound, mudSlap, sludge, mudBomb, sludgeBomb, sludgeWave, gunkShot, belch, venoshock, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, explosion, payback, gigaImpact, rockSlide, infestation, poisonJab, darkPulse, lick, shadowPunch, shadowSneak, acidSpray, thunderPunch, firePunch, icePunch, snore, gigaDrain, focusPunch, shockWave],
  numHeals = baseNumHeals
}

seaking :: Pokemon
seaking = Pokemon {
  pokemonIndex = 119,
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
  pokemonMoves = [pound, bite, acidSpray, poisonFang, knockOff, crunch, gunkShot, belch, venoshock, hiddenPower, hyperBeam, shadowBall, brickBreak, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, brutalSwing, explosion, payback, gigaImpact, stoneEdge, rockSlide, infestation, poisonJab, snarl, darkPulse, clearSmog, pursuit, assurance, shadowSneak, mudSlap, sludge, mudBomb],
  numHeals = baseNumHeals
}

staryu :: Pokemon
staryu = Pokemon {
  pokemonIndex = 120,
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
  pokemonMoves = [tackle, waterGun, icicleSpear, clamp, iceShard, razorShell, auroraBeam, whirlpool, brine, iceBeam, hydroPump, hiddenPower, blizzard, facade, roundMove, explosion, payback, surf, bubbleBeam, takeDown, rapidSpin, mudShot, rockBlast, waterPulse, avalanche, twineedle, icyWind, snore],
  numHeals = baseNumHeals
}

starmie :: Pokemon
starmie = Pokemon {
  pokemonIndex = 121,
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
  pokemonMoves = [hydroPump, auroraBeam, spikeCannon, icicleCrash, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, explosion, payback, smartStrike, gigaImpact, frostBreath, poisonJab, surf, bubbleBeam, takeDown, rapidSpin, icicleSpear, mudShot, rockBlast, waterPulse, avalanche, twineedle, signalBeam, icyWind, snore, tackle, waterGun, clamp, iceShard, razorShell, whirlpool, brine],
  numHeals = baseNumHeals
}

mr :: Pokemon
mr = Pokemon {
  pokemonIndex = 122,
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
  pokemonMoves = [lick, suckerPunch, payback, shadowBall, dreamEater, darkPulse, hex, venoshock, hiddenPower, thunderbolt, psychic, sludgeBomb, facade, thief, roundMove, energyBall, explosion, infestation, dazzlingGleam, astonish, firePunch, icePunch, thunderPunch, clearSmog, smog, uproar, foulPlay, icyWind, snore, knockOff, gigaDrain],
  numHeals = baseNumHeals
}

scyther :: Pokemon
scyther = Pokemon {
  pokemonIndex = 123,
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
  pokemonMoves = [shadowPunch, lick, suckerPunch, payback, shadowBall, dreamEater, darkPulse, hex, venoshock, hiddenPower, thunderbolt, psychic, sludgeBomb, facade, thief, roundMove, energyBall, explosion, shadowClaw, infestation, poisonJab, dazzlingGleam, astonish, firePunch, icePunch, thunderPunch, clearSmog, smog, uproar, foulPlay, icyWind, snore, knockOff, gigaDrain],
  numHeals = baseNumHeals
}

jynx :: Pokemon
jynx = Pokemon {
  pokemonIndex = 124,
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
  pokemonMoves = [shadowPunch, lick, suckerPunch, payback, shadowBall, dreamEater, darkPulse, hex, venoshock, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, brickBreak, sludgeBomb, facade, thief, roundMove, focusBlast, energyBall, explosion, shadowClaw, gigaImpact, infestation, poisonJab, dazzlingGleam, astonish, firePunch, icePunch, thunderPunch, clearSmog, smog, uproar, foulPlay, icyWind, snore, knockOff, gigaDrain, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

electabuzz :: Pokemon
electabuzz = Pokemon {
  pokemonIndex = 125,
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
  pokemonMoves = [shadowPunch, lick, suckerPunch, payback, shadowBall, dreamEater, darkPulse, hex, venoshock, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, brickBreak, sludgeBomb, facade, thief, roundMove, focusBlast, energyBall, explosion, shadowClaw, gigaImpact, infestation, poisonJab, dazzlingGleam, astonish, firePunch, icePunch, thunderPunch, clearSmog, smog, uproar, foulPlay, icyWind, snore, knockOff, gigaDrain, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

magmar :: Pokemon
magmar = Pokemon {
  pokemonIndex = 126,
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
  pokemonMoves = [tackle, bind, rockThrow, rockTomb, rage, smackDown, dragonBreath, slam, rockSlide, sandTomb, ironTail, dig, stoneEdge, doubleEdge, hiddenPower, earthquake, facade, roundMove, brutalSwing, explosion, payback, bulldoze, dragonTail, flashCannon, rollout, rockBlast, rockClimb, ironHead, earthPower, dragonPulse, snore],
  numHeals = baseNumHeals
}

pinsir :: Pokemon
pinsir = Pokemon {
  pokemonIndex = 127,
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
  pokemonMoves = [pound, confusion, headbutt, psybeam, synchronoise, zenHeadbutt, psychic, psyshock, futureSight, hiddenPower, shadowBall, brickBreak, facade, thief, lowSweep, roundMove, dreamEater, dazzlingGleam, firePunch, thunderPunch, icePunch, psychoCut, secretPower, signalBeam, foulPlay, snore, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

tauros :: Pokemon
tauros = Pokemon {
  pokemonIndex = 128,
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
  pokemonMoves = [futureSight, pound, confusion, headbutt, psybeam, synchronoise, zenHeadbutt, psychic, psyshock, hiddenPower, hyperBeam, shadowBall, brickBreak, facade, thief, lowSweep, roundMove, focusBlast, gigaImpact, dreamEater, dazzlingGleam, firePunch, thunderPunch, icePunch, psychoCut, secretPower, signalBeam, foulPlay, snore, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

magikarp :: Pokemon
magikarp = Pokemon {
  pokemonIndex = 129,
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
  pokemonMoves = [bubble, viceGrip, bubbleBeam, mudShot, metalClaw, stomp, slam, brine, crabhammer, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, facade, thief, roundMove, falseSwipe, scald, rockSlide, xScissor, surf, knockOff, ancientPower, chipAway, superpower, icyWind, snore, waterPulse],
  numHeals = baseNumHeals
}

gyarados :: Pokemon
gyarados = Pokemon {
  pokemonIndex = 130,
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
  pokemonMoves = [bubble, viceGrip, bubbleBeam, mudShot, metalClaw, stomp, slam, brine, crabhammer, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, rockTomb, facade, thief, roundMove, falseSwipe, scald, gigaImpact, rockSlide, xScissor, surf, knockOff, ancientPower, chipAway, superpower, icyWind, snore, waterPulse],
  numHeals = baseNumHeals
}

lapras :: Pokemon
lapras = Pokemon {
  pokemonIndex = 131,
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
  pokemonMoves = [tackle, spark, rollout, chargeBeam, swift, selfDestruct, discharge, explosion, hiddenPower, thunderbolt, thunder, facade, thief, roundMove, voltSwitch, wildCharge, signalBeam, foulPlay, snore, shockWave],
  numHeals = baseNumHeals
}

ditto :: Pokemon
ditto = Pokemon {
  pokemonIndex = 132,
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
  pokemonMoves = [tackle, spark, rollout, chargeBeam, swift, selfDestruct, discharge, explosion, hiddenPower, hyperBeam, thunderbolt, thunder, facade, thief, roundMove, gigaImpact, voltSwitch, wildCharge, signalBeam, foulPlay, snore, shockWave],
  numHeals = baseNumHeals
}

eevee :: Pokemon
eevee = Pokemon {
  pokemonIndex = 133,
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
  pokemonMoves = [barrage, uproar, bulletSeed, confusion, solarBeam, extrasensory, hiddenPower, psychic, sludgeBomb, facade, thief, roundMove, energyBall, explosion, infestation, dreamEater, ancientPower, leafStorm, gigaDrain, seedBomb, snore],
  numHeals = baseNumHeals
}

vaporeon :: Pokemon
vaporeon = Pokemon {
  pokemonIndex = 134,
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
  pokemonMoves = [stomp, seedBomb, barrage, confusion, psyshock, eggBomb, woodHammer, leafStorm, hiddenPower, hyperBeam, solarBeam, psychic, sludgeBomb, facade, thief, roundMove, energyBall, explosion, gigaImpact, infestation, dreamEater, ancientPower, gigaDrain, zenHeadbutt, snore, uproar, bulletSeed, extrasensory],
  numHeals = baseNumHeals
}

jolteon :: Pokemon
jolteon = Pokemon {
  pokemonIndex = 135,
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
  pokemonMoves = [dragonHammer, seedBomb, barrage, confusion, psyshock, eggBomb, woodHammer, leafStorm, hiddenPower, hyperBeam, solarBeam, earthquake, psychic, brickBreak, flamethrower, sludgeBomb, facade, thief, roundMove, energyBall, brutalSwing, explosion, gigaImpact, bulldoze, dragonTail, infestation, dreamEater, dracoMeteor, ancientPower, gigaDrain, uproar, bulletSeed, extrasensory],
  numHeals = baseNumHeals
}

flareon :: Pokemon
flareon = Pokemon {
  pokemonIndex = 136,
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
  pokemonMoves = [boneClub, headbutt, bonemerang, rage, falseSwipe, thrash, stompingTantrum, doubleEdge, retaliate, boneRush, hiddenPower, iceBeam, blizzard, smackDown, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, brutalSwing, bulldoze, rockSlide, ancientPower, skullBash, doubleKick, ironHead, chipAway, uproar, thunderPunch, firePunch, earthPower, icyWind, ironTail, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

porygon :: Pokemon
porygon = Pokemon {
  pokemonIndex = 474,
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
  pokemonMoves = [struggleBug, bugBite, uproar, snore],
  numHeals = baseNumHeals
}

omanyte :: Pokemon
omanyte = Pokemon {
  pokemonIndex = 138,
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
  pokemonMoves = [boneClub, flameWheel, hex, bonemerang, shadowBone, thrash, stompingTantrum, flareBlitz, retaliate, boneRush, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, thief, roundMove, echoedVoice, focusBlast, falseSwipe, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, dreamEater, darkPulse, ancientPower, skullBash, doubleKick, ironHead, chipAway, headbutt, rage, doubleEdge],
  numHeals = baseNumHeals
}

omastar :: Pokemon
omastar = Pokemon {
  pokemonIndex = 139,
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
  pokemonMoves = [doubleKick, closeCombat, megaKick, revenge, rollingKick, jumpKick, brickBreak, feint, highJumpKick, blazeKick, hiddenPower, earthquake, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, stoneEdge, bulldoze, rockSlide, poisonJab, rapidSpin, machPunch, vacuumWave, bulletPunch, pursuit, covet, bounce, superpower, snore, knockOff, focusPunch, tackle, fakeOut],
  numHeals = baseNumHeals
}

kabuto :: Pokemon
kabuto = Pokemon {
  pokemonIndex = 140,
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
  pokemonMoves = [cometPunch, closeCombat, focusPunch, revenge, pursuit, machPunch, bulletPunch, feint, vacuumWave, thunderPunch, icePunch, firePunch, skyUppercut, megaPunch, hiddenPower, earthquake, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, stoneEdge, bulldoze, rockSlide, rapidSpin, highJumpKick, covet, snore, drainPunch, tackle, fakeOut],
  numHeals = baseNumHeals
}

kabutops :: Pokemon
kabutops = Pokemon {
  pokemonIndex = 141,
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
  pokemonMoves = [lick, knockOff, wrap, stomp, slam, rollout, chipAway, powerWhip, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, brutalSwing, gigaImpact, bulldoze, rockSlide, dragonTail, dreamEater, surf, bodySlam, smellingSalts, snore, hammerArm, muddyWater, zenHeadbutt, belch, thunderPunch, firePunch, icePunch, icyWind, aquaTail, ironTail, bind, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

aerodactyl :: Pokemon
aerodactyl = Pokemon {
  pokemonIndex = 142,
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
  pokemonMoves = [tackle, smog, assurance, clearSmog, sludge, selfDestruct, sludgeBomb, explosion, belch, venoshock, hiddenPower, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, facade, thief, roundMove, payback, infestation, darkPulse, psybeam, uproar, snore, shockWave],
  numHeals = baseNumHeals
}

snorlax :: Pokemon
snorlax = Pokemon {
  pokemonIndex = 143,
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
  pokemonMoves = [doubleHit, tackle, smog, assurance, clearSmog, sludge, selfDestruct, sludgeBomb, explosion, belch, venoshock, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, facade, thief, roundMove, payback, gigaImpact, infestation, darkPulse, psybeam, uproar, snore, shockWave],
  numHeals = baseNumHeals
}

articuno :: Pokemon
articuno = Pokemon {
  pokemonIndex = 144,
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
  pokemonMoves = [hornAttack, furyAttack, smackDown, stomp, bulldoze, chipAway, rockBlast, drillRun, takeDown, stoneEdge, earthquake, megahorn, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, payback, smartStrike, rockSlide, poisonJab, crunch, crushClaw, dragonRush, iceFang, fireFang, thunderFang, skullBash, ironTail, rockClimb, uproar, earthPower, superpower, icyWind, aquaTail, dragonPulse, snore, shockWave],
  numHeals = baseNumHeals
}

zapdos :: Pokemon
zapdos = Pokemon {
  pokemonIndex = 145,
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
  pokemonMoves = [hammerArm, hornAttack, furyAttack, smackDown, stomp, bulldoze, chipAway, rockBlast, drillRun, takeDown, stoneEdge, earthquake, megahorn, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, brutalSwing, shadowClaw, payback, smartStrike, gigaImpact, rockSlide, dragonTail, poisonJab, surf, crunch, crushClaw, dragonRush, iceFang, fireFang, thunderFang, skullBash, ironTail, rockClimb, uproar, thunderPunch, firePunch, icePunch, earthPower, superpower, icyWind, aquaTail, dragonPulse, snore, focusPunch, shockWave, outrage],
  numHeals = baseNumHeals
}

moltres :: Pokemon
moltres = Pokemon {
  pokemonIndex = 146,
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
  pokemonMoves = [doubleEdge, pound, doubleSlap, takeDown, eggBomb, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, echoedVoice, chargeBeam, gigaImpact, bulldoze, rockSlide, dreamEater, wildCharge, dazzlingGleam, lastResort, mudBomb, covet, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

dratini :: Pokemon
dratini = Pokemon {
  pokemonIndex = 147,
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
  pokemonMoves = [constrict, vineWhip, absorb, bind, megaDrain, knockOff, gigaDrain, ancientPower, slam, powerWhip, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, thief, roundMove, energyBall, gigaImpact, infestation, confusion, leafStorm, seedBomb, snore, shockWave],
  numHeals = baseNumHeals
}

dragonair :: Pokemon
dragonair = Pokemon {
  pokemonIndex = 148,
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
  pokemonMoves = [cometPunch, fakeOut, bite, doubleHit, rage, megaPunch, chipAway, dizzyPunch, crunch, outrage, suckerPunch, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, gigaImpact, bulldoze, rockSlide, surf, stomp, crushClaw, doubleEdge, hammerArm, focusPunch, uproar, circleThrow, covet, thunderPunch, firePunch, icePunch, icyWind, aquaTail, ironTail, snore, drainPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

dragonite :: Pokemon
dragonite = Pokemon {
  pokemonIndex = 149,
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
  pokemonMoves = [cometPunch, fakeOut, bite, doubleHit, rage, megaPunch, chipAway, dizzyPunch, crunch, outrage, suckerPunch, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, gigaImpact, bulldoze, rockSlide, surf, stomp, crushClaw, doubleEdge, hammerArm, focusPunch, uproar, circleThrow, covet, thunderPunch, firePunch, icePunch, icyWind, aquaTail, ironTail, snore, drainPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

mewtwo :: Pokemon
mewtwo = Pokemon {
  pokemonIndex = 150,
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
  pokemonMoves = [bubble, waterGun, twister, bubbleBeam, brine, dragonPulse, hydroPump, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, flashCannon, surf, waterfall, auroraBeam, octazooka, dragonBreath, signalBeam, razorWind, muddyWater, waterPulse, clearSmog, outrage, bounce, icyWind, snore],
  numHeals = baseNumHeals
}

mew :: Pokemon
mew = Pokemon {
  pokemonIndex = 151,
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
  pokemonMoves = [hydroPump, bubble, waterGun, twister, bubbleBeam, brine, dragonPulse, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, scald, gigaImpact, flashCannon, surf, waterfall, auroraBeam, octazooka, dragonBreath, signalBeam, razorWind, muddyWater, waterPulse, clearSmog, outrage, bounce, icyWind, snore],
  numHeals = baseNumHeals
}

chikorita :: Pokemon
chikorita = Pokemon {
  pokemonIndex = 152,
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
  pokemonMoves = [peck, hornAttack, waterPulse, furyAttack, waterfall, megahorn, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, smartStrike, poisonJab, surf, psybeam, hydroPump, mudSlap, aquaTail, bodySlam, mudShot, skullBash, signalBeam, drillRun, bounce, icyWind, snore, knockOff],
  numHeals = baseNumHeals
}

bayleef :: Pokemon
bayleef = Pokemon {
  pokemonIndex = 153,
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
  pokemonMoves = [megahorn, poisonJab, peck, hornAttack, waterPulse, furyAttack, waterfall, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, scald, smartStrike, gigaImpact, surf, psybeam, hydroPump, mudSlap, aquaTail, bodySlam, mudShot, skullBash, signalBeam, drillRun, bounce, icyWind, snore, knockOff],
  numHeals = baseNumHeals
}

meganium :: Pokemon
meganium = Pokemon {
  pokemonIndex = 154,
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
  pokemonMoves = [tackle, waterGun, rapidSpin, swift, bubbleBeam, brine, powerGem, psychic, hydroPump, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, facade, roundMove, scald, flashCannon, surf, waterfall, dazzlingGleam, signalBeam, icyWind, snore, waterPulse],
  numHeals = baseNumHeals
}

cyndaquil :: Pokemon
cyndaquil = Pokemon {
  pokemonIndex = 155,
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
  pokemonMoves = [hydroPump, waterGun, rapidSpin, swift, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, psychic, facade, roundMove, scald, gigaImpact, dreamEater, flashCannon, surf, waterfall, dazzlingGleam, signalBeam, icyWind, snore, waterPulse, tackle, bubbleBeam, brine, powerGem],
  numHeals = baseNumHeals
}

quilava :: Pokemon
quilava = Pokemon {
  pokemonIndex = 156,
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
  pokemonMoves = [magicalLeaf, confusion, doubleSlap, psybeam, psychic, psyshock, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, aerialAce, facade, thief, roundMove, focusBlast, energyBall, chargeBeam, payback, gigaImpact, infestation, dreamEater, dazzlingGleam, futureSight, fakeOut, wakeUpSlap, icyWind, covet, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, snore, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

typhlosion :: Pokemon
typhlosion = Pokemon {
  pokemonIndex = 157,
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
  pokemonMoves = [vacuumWave, quickAttack, pursuit, falseSwipe, wingAttack, furyCutter, slash, razorWind, xScissor, nightSlash, doubleHit, airSlash, feint, hiddenPower, hyperBeam, brickBreak, aerialAce, facade, thief, roundMove, steelWing, brutalSwing, gigaImpact, uturn, silverWind, bugBuzz, bugBite, snore, knockOff, airCutter],
  numHeals = baseNumHeals
}

totodile :: Pokemon
totodile = Pokemon {
  pokemonIndex = 158,
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
  pokemonMoves = [drainingKiss, pound, lick, powderSnow, doubleSlap, icePunch, heartStamp, wakeUpSlap, avalanche, bodySlam, blizzard, psyshock, hiddenPower, iceBeam, hyperBeam, psychic, shadowBall, brickBreak, facade, thief, roundMove, echoedVoice, focusBlast, energyBall, payback, gigaImpact, frostBreath, dreamEater, fakeOut, covet, signalBeam, icyWind, zenHeadbutt, hyperVoice, snore, drainPunch, focusPunch, waterPulse, confusion],
  numHeals = baseNumHeals
}

croconaw :: Pokemon
croconaw = Pokemon {
  pokemonIndex = 159,
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
  pokemonMoves = [quickAttack, thunderShock, swift, shockWave, thunderPunch, discharge, thunderbolt, thunder, hiddenPower, hyperBeam, psychic, brickBreak, facade, thief, lowSweep, roundMove, focusBlast, chargeBeam, gigaImpact, voltSwitch, wildCharge, karateChop, rollingKick, crossChop, firePunch, icePunch, dynamicPunch, feint, hammerArm, focusPunch, covet, dualChop, signalBeam, electroweb, ironTail, snore],
  numHeals = baseNumHeals
}

feraligatr :: Pokemon
feraligatr = Pokemon {
  pokemonIndex = 160,
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
  pokemonMoves = [smog, ember, feintAttack, fireSpin, clearSmog, flameBurst, firePunch, lavaPlume, flamethrower, fireBlast, hiddenPower, hyperBeam, psychic, brickBreak, facade, flameCharge, thief, lowSweep, roundMove, overheat, focusBlast, gigaImpact, karateChop, megaPunch, crossChop, thunderPunch, machPunch, dynamicPunch, flareBlitz, ironTail, belch, covet, dualChop, snore, heatWave, focusPunch],
  numHeals = baseNumHeals
}

sentret :: Pokemon
sentret = Pokemon {
  pokemonIndex = 161,
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
  pokemonMoves = [viceGrip, bind, revenge, vitalThrow, doubleHit, brickBreak, xScissor, submission, stormThrow, thrash, superpower, hiddenPower, hyperBeam, smackDown, earthquake, rockTomb, facade, thief, roundMove, focusBlast, falseSwipe, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, furyAttack, feintAttack, quickAttack, closeCombat, feint, bugBite, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

furret :: Pokemon
furret = Pokemon {
  pokemonIndex = 162,
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
  pokemonMoves = [viceGrip, bind, revenge, vitalThrow, doubleHit, brickBreak, xScissor, submission, stormThrow, thrash, superpower, hiddenPower, hyperBeam, smackDown, earthquake, rockTomb, facade, thief, roundMove, focusBlast, falseSwipe, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, furyAttack, feintAttack, quickAttack, closeCombat, feint, bugBite, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

hoothoot :: Pokemon
hoothoot = Pokemon {
  pokemonIndex = 163,
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
  pokemonMoves = [tackle, rage, hornAttack, pursuit, payback, zenHeadbutt, takeDown, thrash, gigaImpact, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, flamethrower, fireBlast, rockTomb, facade, roundMove, smartStrike, stoneEdge, bulldoze, rockSlide, wildCharge, surf, ironHead, uproar, icyWind, ironTail, snore, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

noctowl :: Pokemon
noctowl = Pokemon {
  pokemonIndex = 164,
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
  pokemonMoves = [tackle, bounce],
  numHeals = baseNumHeals
}

ledyba :: Pokemon
ledyba = Pokemon {
  pokemonIndex = 165,
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
  pokemonMoves = [bite, thrash, twister, iceFang, aquaTail, crunch, hydroPump, hurricane, hyperBeam, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, earthquake, flamethrower, fireBlast, facade, roundMove, scald, brutalSwing, payback, gigaImpact, stoneEdge, bulldoze, dragonTail, surf, darkPulse, waterfall, ironHead, bounce, uproar, icyWind, dragonPulse, ironTail, snore, waterPulse, outrage, tackle],
  numHeals = baseNumHeals
}

ledian :: Pokemon
ledian = Pokemon {
  pokemonIndex = 166,
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
  pokemonMoves = [bite, thrash, twister, iceFang, aquaTail, crunch, hydroPump, hurricane, hyperBeam, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, earthquake, flamethrower, fireBlast, facade, roundMove, scald, brutalSwing, payback, gigaImpact, stoneEdge, bulldoze, dragonTail, surf, darkPulse, waterfall, ironHead, bounce, uproar, icyWind, dragonPulse, ironTail, snore, waterPulse, outrage, tackle],
  numHeals = baseNumHeals
}

spinarak :: Pokemon
spinarak = Pokemon {
  pokemonIndex = 167,
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
  pokemonMoves = [waterGun, iceShard, waterPulse, bodySlam, iceBeam, brine, hydroPump, hiddenPower, blizzard, hyperBeam, thunderbolt, thunder, psychic, facade, roundMove, echoedVoice, smartStrike, gigaImpact, bulldoze, frostBreath, dreamEater, surf, waterfall, ancientPower, whirlpool, dragonPulse, avalanche, futureSight, freezeDry, signalBeam, ironHead, drillRun, icyWind, aquaTail, zenHeadbutt, hyperVoice, ironTail, snore, shockWave, outrage],
  numHeals = baseNumHeals
}

crobat :: Pokemon
crobat = Pokemon {
  pokemonIndex = 169,
  pokemonName = "Crobat",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 85,
  pokemonType1 = Poison,
  pokemonType2 = Flying,
  attack = 90,
  defence = 80,
  specialAttack = 70,
  specialDefence = 80,
  pokemonMoves = [covet, tackle, quickAttack, bite, swift, takeDown, doubleEdge, lastResort, hiddenPower, shadowBall, facade, roundMove, echoedVoice, storedPower, synchronoise, hyperVoice, ironTail, snore],
  numHeals = baseNumHeals
}

chinchou :: Pokemon
chinchou = Pokemon {
  pokemonIndex = 170,
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
  pokemonMoves = [waterGun, tackle, quickAttack, waterPulse, auroraBeam, muddyWater, lastResort, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, shadowBall, facade, roundMove, echoedVoice, scald, gigaImpact, surf, waterfall, covet, storedPower, synchronoise, signalBeam, icyWind, aquaTail, hyperVoice, ironTail, snore, bite, swift, takeDown, doubleEdge],
  numHeals = baseNumHeals
}

lanturn :: Pokemon
lanturn = Pokemon {
  pokemonIndex = 171,
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
  pokemonMoves = [thunderShock, tackle, quickAttack, doubleKick, thunderFang, pinMissile, discharge, lastResort, thunder, hiddenPower, hyperBeam, thunderbolt, shadowBall, facade, roundMove, echoedVoice, chargeBeam, gigaImpact, voltSwitch, wildCharge, covet, storedPower, synchronoise, signalBeam, hyperVoice, ironTail, snore, shockWave, bite, swift, takeDown, doubleEdge],
  numHeals = baseNumHeals
}

pichu :: Pokemon
pichu = Pokemon {
  pokemonIndex = 172,
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
  pokemonMoves = [ember, tackle, quickAttack, bite, fireFang, fireSpin, smog, lavaPlume, lastResort, flareBlitz, hiddenPower, hyperBeam, shadowBall, flamethrower, fireBlast, facade, flameCharge, roundMove, echoedVoice, overheat, gigaImpact, covet, storedPower, synchronoise, superpower, hyperVoice, ironTail, snore, heatWave, swift, takeDown, doubleEdge],
  numHeals = baseNumHeals
}

cleffa :: Pokemon
cleffa = Pokemon {
  pokemonIndex = 173,
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
  pokemonMoves = [tackle, psybeam, signalBeam, discharge, triAttack, zapCannon, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, aerialAce, facade, thief, roundMove, chargeBeam, gigaImpact, dreamEater, foulPlay, lastResort, electroweb, icyWind, zenHeadbutt, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

igglybuff :: Pokemon
igglybuff = Pokemon {
  pokemonIndex = 174,
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
  pokemonMoves = [constrict, bite, waterGun, rollout, mudShot, brine, ancientPower, rockBlast, hydroPump, hiddenPower, iceBeam, blizzard, smackDown, rockTomb, facade, thief, roundMove, scald, rockSlide, surf, waterfall, bubbleBeam, auroraBeam, slam, knockOff, muddyWater, waterPulse, whirlpool, earthPower, icyWind, bind, snore],
  numHeals = baseNumHeals
}

togepi :: Pokemon
togepi = Pokemon {
  pokemonIndex = 175,
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
  pokemonMoves = [spikeCannon, hydroPump, constrict, bite, waterGun, rollout, mudShot, brine, ancientPower, rockBlast, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, rockTomb, facade, thief, roundMove, scald, gigaImpact, stoneEdge, rockSlide, surf, waterfall, bubbleBeam, auroraBeam, slam, knockOff, muddyWater, waterPulse, whirlpool, earthPower, icyWind, bind, snore],
  numHeals = baseNumHeals
}

togetic :: Pokemon
togetic = Pokemon {
  pokemonIndex = 176,
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
  pokemonMoves = [scratch, absorb, mudShot, aquaJet, megaDrain, ancientPower, hiddenPower, iceBeam, blizzard, smackDown, rockTomb, aerialAce, facade, thief, roundMove, scald, rockSlide, surf, waterfall, bubbleBeam, auroraBeam, rapidSpin, knockOff, icyWind, gigaDrain, takeDown, earthPower, snore, waterPulse],
  numHeals = baseNumHeals
}

natu :: Pokemon
natu = Pokemon {
  pokemonIndex = 177,
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
  pokemonMoves = [slash, nightSlash, feint, scratch, absorb, mudShot, aquaJet, megaDrain, ancientPower, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, scald, gigaImpact, stoneEdge, rockSlide, xScissor, surf, waterfall, bubbleBeam, auroraBeam, rapidSpin, knockOff, icyWind, gigaDrain, takeDown, earthPower, superpower, aquaTail, snore, waterPulse],
  numHeals = baseNumHeals
}

xatu :: Pokemon
xatu = Pokemon {
  pokemonIndex = 178,
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
  pokemonMoves = [ironHead, iceFang, fireFang, thunderFang, wingAttack, bite, ancientPower, crunch, takeDown, skyDrop, hyperBeam, rockSlide, gigaImpact, dragonClaw, hiddenPower, smackDown, earthquake, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, steelWing, brutalSwing, payback, stoneEdge, fly, bulldoze, pursuit, dragonBreath, assurance, earthPower, aquaTail, dragonPulse, ironTail, snore, heatWave, skyAttack, airCutter],
  numHeals = baseNumHeals
}

mareep :: Pokemon
mareep = Pokemon {
  pokemonIndex = 179,
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
  pokemonMoves = [ironHead, iceFang, fireFang, thunderFang, wingAttack, bite, ancientPower, crunch, takeDown, skyDrop, hyperBeam, rockSlide, gigaImpact, dragonClaw, hiddenPower, smackDown, earthquake, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, steelWing, brutalSwing, payback, stoneEdge, fly, bulldoze, pursuit, dragonBreath, assurance, earthPower, aquaTail, dragonPulse, ironTail, snore, heatWave, skyAttack, airCutter],
  numHeals = baseNumHeals
}

flaaffy :: Pokemon
flaaffy = Pokemon {
  pokemonIndex = 180,
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
  pokemonMoves = [tackle, lick, chipAway, bodySlam, snore, gigaImpact, rollout, crunch, highHorsepower, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, focusBlast, bulldoze, rockSlide, wildCharge, surf, doubleEdge, pursuit, zenHeadbutt, selfDestruct, belch, covet, ironHead, seedBomb, gunkShot, thunderPunch, firePunch, icePunch, lastResort, superpower, icyWind, hyperVoice, focusPunch, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

ampharos :: Pokemon
ampharos = Pokemon {
  pokemonIndex = 181,
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
  pokemonMoves = [gust, powderSnow, iceShard, ancientPower, freezeDry, iceBeam, blizzard, hurricane, hiddenPower, hyperBeam, aerialAce, facade, roundMove, steelWing, skyDrop, gigaImpact, fly, frostBreath, uturn, signalBeam, icyWind, snore, skyAttack, airCutter, waterPulse],
  numHeals = baseNumHeals
}

bellossom :: Pokemon
bellossom = Pokemon {
  pokemonIndex = 182,
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
  pokemonMoves = [peck, thunderShock, pluck, ancientPower, discharge, drillPeck, thunder, zapCannon, hiddenPower, hyperBeam, thunderbolt, aerialAce, facade, roundMove, steelWing, chargeBeam, skyDrop, gigaImpact, voltSwitch, fly, uturn, wildCharge, signalBeam, snore, heatWave, skyAttack, airCutter, shockWave],
  numHeals = baseNumHeals
}

marill :: Pokemon
marill = Pokemon {
  pokemonIndex = 183,
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
  pokemonMoves = [wingAttack, ember, fireSpin, ancientPower, flamethrower, airSlash, heatWave, solarBeam, skyAttack, hurricane, burnUp, hiddenPower, hyperBeam, fireBlast, aerialAce, facade, flameCharge, roundMove, overheat, steelWing, skyDrop, gigaImpact, fly, uturn, snore, airCutter],
  numHeals = baseNumHeals
}

azumarill :: Pokemon
azumarill = Pokemon {
  pokemonIndex = 184,
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
  pokemonMoves = [wrap, twister, slam, dragonTail, aquaTail, dragonRush, outrage, hyperBeam, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, flamethrower, fireBlast, facade, roundMove, brutalSwing, surf, waterfall, dracoMeteor, dragonBreath, extremeSpeed, waterPulse, aquaJet, dragonPulse, ironTail, icyWind, bind, snore, shockWave],
  numHeals = baseNumHeals
}

sudowoodo :: Pokemon
sudowoodo = Pokemon {
  pokemonIndex = 185,
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
  pokemonMoves = [wrap, twister, slam, dragonTail, aquaTail, dragonRush, outrage, hyperBeam, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, flamethrower, fireBlast, facade, roundMove, brutalSwing, surf, waterfall, dracoMeteor, dragonBreath, extremeSpeed, waterPulse, aquaJet, dragonPulse, ironTail, icyWind, bind, snore, shockWave],
  numHeals = baseNumHeals
}

politoed :: Pokemon
politoed = Pokemon {
  pokemonIndex = 186,
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
  pokemonMoves = [wingAttack, hurricane, firePunch, thunderPunch, wrap, twister, slam, dragonTail, aquaTail, dragonRush, outrage, hyperBeam, dragonClaw, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, steelWing, focusBlast, skyDrop, brutalSwing, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, surf, waterfall, dracoMeteor, dragonBreath, extremeSpeed, waterPulse, aquaJet, dragonPulse, ironTail, ironHead, icePunch, superpower, icyWind, bind, snore, heatWave, airCutter, focusPunch, shockWave],
  numHeals = baseNumHeals
}

hoppip :: Pokemon
hoppip = Pokemon {
  pokemonIndex = 187,
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
  pokemonMoves = [confusion, swift, futureSight, psychoCut, psychic, auraSphere, psystrike, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, dreamEater, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, icyWind, aquaTail, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

skiploom :: Pokemon
skiploom = Pokemon {
  pokemonIndex = 188,
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
  pokemonMoves = [confusion, swift, futureSight, psychoCut, psychic, auraSphere, psystrike, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, dreamEater, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, icyWind, aquaTail, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

jumpluff :: Pokemon
jumpluff = Pokemon {
  pokemonIndex = 189,
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
  pokemonMoves = [confusion, swift, futureSight, psychoCut, psychic, auraSphere, psystrike, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, dreamEater, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, icyWind, aquaTail, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

aipom :: Pokemon
aipom = Pokemon {
  pokemonIndex = 190,
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
  pokemonMoves = [pound, megaPunch, psychic, ancientPower, auraSphere, dragonClaw, psyshock, venoshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, leechLife, shadowBall, brickBreak, sludgeWave, flamethrower, sludgeBomb, fireBlast, rockTomb, aerialAce, facade, flameCharge, thief, lowSweep, roundMove, echoedVoice, overheat, steelWing, focusBlast, energyBall, falseSwipe, scald, chargeBeam, skyDrop, brutalSwing, acrobatics, explosion, shadowClaw, payback, smartStrike, gigaImpact, stoneEdge, voltSwitch, fly, bulldoze, frostBreath, rockSlide, xScissor, dragonTail, infestation, poisonJab, dreamEater, uturn, flashCannon, wildCharge, surf, snarl, darkPulse, waterfall, dazzlingGleam, bugBite, covet, dualChop, signalBeam, ironHead, seedBomb, drillRun, bounce, gunkShot, uproar, thunderPunch, firePunch, icePunch, earthPower, foulPlay, lastResort, superpower, electroweb, icyWind, aquaTail, zenHeadbutt, dragonPulse, hyperVoice, ironTail, bind, snore, knockOff, heatWave, skyAttack, gigaDrain, drainPunch, airCutter, focusPunch, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

sunkern :: Pokemon
sunkern = Pokemon {
  pokemonIndex = 191,
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
  pokemonMoves = [tackle, razorLeaf, magicalLeaf, bodySlam, solarBeam, hiddenPower, facade, roundMove, echoedVoice, energyBall, frenzyPlant, vineWhip, ancientPower, leafStorm, seedBomb, ironTail, snore, gigaDrain],
  numHeals = baseNumHeals
}

sunflora :: Pokemon
sunflora = Pokemon {
  pokemonIndex = 192,
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
  pokemonMoves = [tackle, razorLeaf, magicalLeaf, bodySlam, solarBeam, hiddenPower, facade, roundMove, echoedVoice, energyBall, frenzyPlant, vineWhip, ancientPower, leafStorm, seedBomb, ironTail, snore, gigaDrain],
  numHeals = baseNumHeals
}

yanma :: Pokemon
yanma = Pokemon {
  pokemonIndex = 193,
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
  pokemonMoves = [petalDance, petalBlizzard, tackle, razorLeaf, magicalLeaf, bodySlam, solarBeam, hiddenPower, hyperBeam, earthquake, facade, roundMove, echoedVoice, energyBall, gigaImpact, bulldoze, dragonTail, frenzyPlant, grassPledge, vineWhip, ancientPower, leafStorm, seedBomb, ironTail, snore, gigaDrain, outrage],
  numHeals = baseNumHeals
}

wooper :: Pokemon
wooper = Pokemon {
  pokemonIndex = 194,
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
  pokemonMoves = [tackle, ember, quickAttack, flameWheel, flameCharge, swift, lavaPlume, flamethrower, inferno, rollout, doubleEdge, burnUp, hiddenPower, fireBlast, aerialAce, facade, roundMove, overheat, wildCharge, blastBurn, furySwipes, thrash, covet, crushClaw, doubleKick, flareBlitz, extrasensory, flameBurst, snore, heatWave],
  numHeals = baseNumHeals
}

quagsire :: Pokemon
quagsire = Pokemon {
  pokemonIndex = 195,
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
  pokemonMoves = [tackle, ember, quickAttack, flameWheel, swift, flameCharge, lavaPlume, flamethrower, inferno, rollout, doubleEdge, burnUp, hiddenPower, brickBreak, fireBlast, aerialAce, facade, roundMove, overheat, wildCharge, blastBurn, furySwipes, thrash, covet, crushClaw, doubleKick, flareBlitz, extrasensory, flameBurst, snore, heatWave, focusPunch],
  numHeals = baseNumHeals
}

espeon :: Pokemon
espeon = Pokemon {
  pokemonIndex = 196,
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
  pokemonMoves = [doubleEdge, tackle, ember, quickAttack, flameWheel, swift, flameCharge, lavaPlume, flamethrower, inferno, rollout, burnUp, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, fireBlast, rockTomb, aerialAce, facade, roundMove, overheat, focusBlast, shadowClaw, gigaImpact, bulldoze, rockSlide, wildCharge, blastBurn, firePledge, furySwipes, thrash, covet, crushClaw, doubleKick, flareBlitz, extrasensory, flameBurst, thunderPunch, firePunch, snore, heatWave, focusPunch],
  numHeals = baseNumHeals
}

umbreon :: Pokemon
umbreon = Pokemon {
  pokemonIndex = 197,
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
  pokemonMoves = [scratch, waterGun, rage, bite, iceFang, crunch, chipAway, slash, thrash, aquaTail, superpower, hydroPump, dragonClaw, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, aerialAce, facade, roundMove, scald, shadowClaw, rockSlide, surf, waterfall, hydroCannon, ancientPower, icePunch, metalClaw, aquaJet, waterPulse, uproar, icyWind, ironTail, snore, focusPunch],
  numHeals = baseNumHeals
}

murkrow :: Pokemon
murkrow = Pokemon {
  pokemonIndex = 198,
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
  pokemonMoves = [scratch, waterGun, rage, bite, iceFang, crunch, chipAway, slash, thrash, aquaTail, superpower, hydroPump, dragonClaw, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, aerialAce, facade, roundMove, scald, shadowClaw, rockSlide, surf, waterfall, hydroCannon, ancientPower, icePunch, metalClaw, aquaJet, waterPulse, uproar, icyWind, ironTail, snore, focusPunch],
  numHeals = baseNumHeals
}

slowking :: Pokemon
slowking = Pokemon {
  pokemonIndex = 199,
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
  pokemonMoves = [scratch, waterGun, rage, bite, iceFang, crunch, chipAway, slash, thrash, aquaTail, superpower, hydroPump, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, brickBreak, rockTomb, aerialAce, facade, roundMove, focusBlast, scald, shadowClaw, gigaImpact, bulldoze, rockSlide, dragonTail, surf, waterfall, hydroCannon, waterPledge, ancientPower, icePunch, metalClaw, aquaJet, waterPulse, uproar, icyWind, dragonPulse, ironTail, snore, focusPunch, outrage],
  numHeals = baseNumHeals
}

misdreavus :: Pokemon
misdreavus = Pokemon {
  pokemonIndex = 200,
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
  pokemonMoves = [scratch, quickAttack, furySwipes, slam, suckerPunch, hyperVoice, hiddenPower, iceBeam, solarBeam, thunderbolt, shadowBall, brickBreak, flamethrower, facade, thief, roundMove, echoedVoice, chargeBeam, brutalSwing, shadowClaw, uturn, surf, doubleEdge, pursuit, slash, lastResort, covet, ironTail, uproar, thunderPunch, firePunch, icePunch, aquaTail, snore, knockOff, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

unown :: Pokemon
unown = Pokemon {
  pokemonIndex = 201,
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
  pokemonMoves = [scratch, quickAttack, furySwipes, slam, suckerPunch, hyperVoice, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, flamethrower, facade, thief, roundMove, echoedVoice, focusBlast, chargeBeam, brutalSwing, shadowClaw, gigaImpact, uturn, surf, doubleEdge, pursuit, slash, lastResort, covet, ironTail, uproar, thunderPunch, firePunch, icePunch, aquaTail, snore, knockOff, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

wobbuffet :: Pokemon
wobbuffet = Pokemon {
  pokemonIndex = 202,
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
  pokemonMoves = [tackle, peck, confusion, echoedVoice, zenHeadbutt, extrasensory, takeDown, airSlash, uproar, moonblast, synchronoise, dreamEater, hiddenPower, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, fly, feintAttack, wingAttack, skyAttack, hyperVoice, snore, heatWave, airCutter],
  numHeals = baseNumHeals
}

girafarig :: Pokemon
girafarig = Pokemon {
  pokemonIndex = 203,
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
  pokemonMoves = [dreamEater, skyAttack, tackle, peck, confusion, echoedVoice, zenHeadbutt, extrasensory, takeDown, airSlash, uproar, moonblast, synchronoise, hiddenPower, hyperBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, gigaImpact, fly, feintAttack, wingAttack, hyperVoice, snore, heatWave, airCutter],
  numHeals = baseNumHeals
}

pineco :: Pokemon
pineco = Pokemon {
  pokemonIndex = 204,
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
  pokemonMoves = [tackle, swift, machPunch, silverWind, cometPunch, bugBuzz, airSlash, doubleEdge, hiddenPower, solarBeam, brickBreak, aerialAce, facade, thief, roundMove, acrobatics, infestation, uturn, psybeam, knockOff, bugBite, focusPunch, drainPunch, dizzyPunch, uproar, thunderPunch, icePunch, snore, gigaDrain, airCutter],
  numHeals = baseNumHeals
}

forretress :: Pokemon
forretress = Pokemon {
  pokemonIndex = 205,
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
  pokemonMoves = [tackle, swift, machPunch, silverWind, cometPunch, bugBuzz, airSlash, doubleEdge, hiddenPower, hyperBeam, solarBeam, brickBreak, aerialAce, facade, thief, roundMove, focusBlast, acrobatics, gigaImpact, infestation, uturn, psybeam, knockOff, bugBite, focusPunch, drainPunch, dizzyPunch, uproar, thunderPunch, icePunch, snore, gigaDrain, airCutter],
  numHeals = baseNumHeals
}

dunsparce :: Pokemon
dunsparce = Pokemon {
  pokemonIndex = 206,
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
  pokemonMoves = [poisonSting, constrict, absorb, infestation, shadowSneak, furySwipes, suckerPunch, pinMissile, psychic, poisonJab, crossPoison, venoshock, hiddenPower, solarBeam, leechLife, sludgeBomb, facade, thief, roundMove, xScissor, psybeam, pursuit, signalBeam, twineedle, electroweb, nightSlash, megahorn, bugBite, bounce, foulPlay, snore, gigaDrain],
  numHeals = baseNumHeals
}

gligar :: Pokemon
gligar = Pokemon {
  pokemonIndex = 207,
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
  pokemonMoves = [fellStinger, bugBite, poisonSting, constrict, absorb, infestation, shadowSneak, furySwipes, suckerPunch, pinMissile, psychic, poisonJab, crossPoison, venoshock, hiddenPower, hyperBeam, solarBeam, leechLife, sludgeBomb, facade, thief, roundMove, smartStrike, gigaImpact, xScissor, psybeam, pursuit, signalBeam, twineedle, electroweb, nightSlash, megahorn, bounce, foulPlay, snore, gigaDrain],
  numHeals = baseNumHeals
}

steelix :: Pokemon
steelix = Pokemon {
  pokemonIndex = 208,
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
  pokemonMoves = [crossPoison, absorb, astonish, bite, wingAttack, airCutter, swift, poisonFang, leechLife, venoshock, airSlash, hiddenPower, hyperBeam, shadowBall, sludgeBomb, aerialAce, facade, thief, roundMove, steelWing, acrobatics, payback, gigaImpact, fly, xScissor, uturn, darkPulse, quickAttack, pursuit, feintAttack, gust, zenHeadbutt, braveBird, gigaDrain, uproar, snore, heatWave, skyAttack],
  numHeals = baseNumHeals
}

snubbull :: Pokemon
snubbull = Pokemon {
  pokemonIndex = 209,
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
  pokemonMoves = [bubble, waterGun, bubbleBeam, spark, signalBeam, discharge, takeDown, hydroPump, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, facade, roundMove, scald, chargeBeam, voltSwitch, wildCharge, surf, waterfall, dazzlingGleam, psybeam, whirlpool, shockWave, brine, waterPulse, bounce, icyWind, snore],
  numHeals = baseNumHeals
}

granbull :: Pokemon
granbull = Pokemon {
  pokemonIndex = 210,
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
  pokemonMoves = [bubble, waterGun, bubbleBeam, spark, signalBeam, discharge, takeDown, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, facade, roundMove, scald, chargeBeam, gigaImpact, voltSwitch, wildCharge, surf, waterfall, dazzlingGleam, psybeam, whirlpool, shockWave, brine, waterPulse, bounce, icyWind, aquaTail, snore],
  numHeals = baseNumHeals
}

qwilfish :: Pokemon
qwilfish = Pokemon {
  pokemonIndex = 211,
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
  pokemonMoves = [thunderShock, hiddenPower, thunderbolt, thunder, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge, doubleSlap, fakeOut, thunderPunch, disarmingVoice, voltTackle, covet, signalBeam, uproar, electroweb, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

scizor :: Pokemon
scizor = Pokemon {
  pokemonIndex = 212,
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
  pokemonMoves = [pound, magicalLeaf, psyshock, hiddenPower, solarBeam, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, dreamEater, covet, storedPower, signalBeam, uproar, lastResort, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

shuckle :: Pokemon
shuckle = Pokemon {
  pokemonIndex = 213,
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
  pokemonMoves = [pound, hiddenPower, solarBeam, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, dreamEater, wildCharge, feintAttack, lastResort, covet, bounce, uproar, icyWind, hyperVoice, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

heracross :: Pokemon
heracross = Pokemon {
  pokemonIndex = 214,
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
  pokemonMoves = [ancientPower, doubleEdge, lastResort, psyshock, hiddenPower, solarBeam, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, dreamEater, dazzlingGleam, peck, futureSight, extrasensory, secretPower, storedPower, covet, signalBeam, uproar, zenHeadbutt, hyperVoice, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

sneasel :: Pokemon
sneasel = Pokemon {
  pokemonIndex = 215,
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
  pokemonMoves = [magicalLeaf, fairyWind, ancientPower, doubleEdge, lastResort, psyshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, brickBreak, flamethrower, fireBlast, aerialAce, facade, roundMove, echoedVoice, steelWing, smartStrike, gigaImpact, fly, dreamEater, dazzlingGleam, peck, futureSight, extrasensory, secretPower, storedPower, covet, signalBeam, zenHeadbutt, hyperVoice, snore, heatWave, drainPunch, airCutter, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

teddiursa :: Pokemon
teddiursa = Pokemon {
  pokemonIndex = 216,
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
  pokemonMoves = [peck, storedPower, ominousWind, psychic, futureSight, psyshock, hiddenPower, solarBeam, shadowBall, aerialAce, facade, thief, roundMove, steelWing, dreamEater, uturn, dazzlingGleam, drillPeck, quickAttack, feintAttack, zenHeadbutt, suckerPunch, synchronoise, signalBeam, snore, heatWave, skyAttack, gigaDrain, airCutter],
  numHeals = baseNumHeals
}

ursaring :: Pokemon
ursaring = Pokemon {
  pokemonIndex = 217,
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
  pokemonMoves = [airSlash, peck, storedPower, ominousWind, psychic, futureSight, psyshock, hiddenPower, hyperBeam, solarBeam, shadowBall, aerialAce, facade, thief, roundMove, steelWing, gigaImpact, fly, dreamEater, uturn, dazzlingGleam, drillPeck, quickAttack, feintAttack, zenHeadbutt, suckerPunch, synchronoise, signalBeam, foulPlay, snore, heatWave, skyAttack, gigaDrain, airCutter],
  numHeals = baseNumHeals
}

slugma :: Pokemon
slugma = Pokemon {
  pokemonIndex = 218,
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
  pokemonMoves = [tackle, thunderShock, takeDown, powerGem, discharge, signalBeam, thunder, hiddenPower, thunderbolt, facade, roundMove, echoedVoice, chargeBeam, wildCharge, bodySlam, ironTail, electroweb, snore, shockWave],
  numHeals = baseNumHeals
}

magcargo :: Pokemon
magcargo = Pokemon {
  pokemonIndex = 219,
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
  pokemonMoves = [tackle, thunderShock, takeDown, powerGem, discharge, signalBeam, thunder, hiddenPower, thunderbolt, brickBreak, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge, bodySlam, ironTail, thunderPunch, firePunch, electroweb, snore, focusPunch, shockWave],
  numHeals = baseNumHeals
}

swinub :: Pokemon
swinub = Pokemon {
  pokemonIndex = 220,
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
  pokemonMoves = [thunderPunch, zapCannon, dragonPulse, firePunch, tackle, thunderShock, takeDown, powerGem, discharge, signalBeam, thunder, hiddenPower, hyperBeam, thunderbolt, brickBreak, facade, roundMove, echoedVoice, focusBlast, chargeBeam, brutalSwing, gigaImpact, voltSwitch, bulldoze, wildCharge, bodySlam, ironTail, electroweb, snore, focusPunch, shockWave, outrage],
  numHeals = baseNumHeals
}

piloswine :: Pokemon
piloswine = Pokemon {
  pokemonIndex = 221,
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
  pokemonMoves = [thunderPunch, zapCannon, dragonPulse, firePunch, tackle, thunderShock, takeDown, powerGem, discharge, signalBeam, thunder, hiddenPower, hyperBeam, thunderbolt, brickBreak, facade, roundMove, echoedVoice, focusBlast, chargeBeam, brutalSwing, gigaImpact, voltSwitch, bulldoze, wildCharge, bodySlam, ironTail, electroweb, snore, focusPunch, shockWave, outrage],
  numHeals = baseNumHeals
}

corsola :: Pokemon
corsola = Pokemon {
  pokemonIndex = 222,
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
  pokemonMoves = [magicalLeaf, leafStorm, leafBlade, megaDrain, petalBlizzard, petalDance, venoshock, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, roundMove, energyBall, gigaImpact, infestation, dazzlingGleam, razorLeaf, secretPower, seedBomb, uproar, snore, gigaDrain, drainPunch, absorb, acid, moonblast],
  numHeals = baseNumHeals
}

remoraid :: Pokemon
remoraid = Pokemon {
  pokemonIndex = 223,
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
  pokemonMoves = [tackle, waterGun, bubble, rollout, bubbleBeam, aquaTail, playRough, doubleEdge, superpower, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, facade, roundMove, scald, surf, waterfall, slam, bodySlam, muddyWater, aquaJet, futureSight, covet, bounce, icePunch, icyWind, hyperVoice, ironTail, snore, knockOff, focusPunch, waterPulse],
  numHeals = baseNumHeals
}

octillery :: Pokemon
octillery = Pokemon {
  pokemonIndex = 224,
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
  pokemonMoves = [tackle, waterGun, bubble, rollout, bubbleBeam, aquaTail, playRough, doubleEdge, superpower, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, facade, roundMove, focusBlast, scald, gigaImpact, bulldoze, surf, waterfall, slam, bodySlam, muddyWater, aquaJet, futureSight, covet, bounce, icePunch, icyWind, hyperVoice, ironTail, snore, knockOff, focusPunch, waterPulse],
  numHeals = baseNumHeals
}

delibird :: Pokemon
delibird = Pokemon {
  pokemonIndex = 225,
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
  pokemonMoves = [slam, woodHammer, rockThrow, feintAttack, rockTomb, rockSlide, suckerPunch, doubleEdge, stoneEdge, hammerArm, headSmash, hiddenPower, smackDown, earthquake, brickBreak, facade, thief, roundMove, explosion, bulldoze, selfDestruct, headbutt, rollout, sandTomb, covet, thunderPunch, firePunch, icePunch, earthPower, foulPlay, snore, focusPunch],
  numHeals = baseNumHeals
}

mantine :: Pokemon
mantine = Pokemon {
  pokemonIndex = 226,
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
  pokemonMoves = [bubbleBeam, doubleSlap, bounce, hyperVoice, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, brickBreak, facade, thief, roundMove, echoedVoice, focusBlast, scald, payback, gigaImpact, bulldoze, surf, waterfall, iceBall, mudShot, waterPulse, icePunch, icyWind, snore, focusPunch, waterGun, bubble, bodySlam, wakeUpSlap, hydroPump, mudBomb],
  numHeals = baseNumHeals
}

skarmory :: Pokemon
skarmory = Pokemon {
  pokemonIndex = 227,
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
  pokemonMoves = [tackle, fairyWind, bulletSeed, megaDrain, acrobatics, uturn, gigaDrain, bounce, hiddenPower, solarBeam, aerialAce, facade, roundMove, energyBall, infestation, dazzlingGleam, confusion, doubleEdge, seedBomb, snore],
  numHeals = baseNumHeals
}

houndour :: Pokemon
houndour = Pokemon {
  pokemonIndex = 228,
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
  pokemonMoves = [tackle, fairyWind, bulletSeed, megaDrain, acrobatics, uturn, gigaDrain, bounce, hiddenPower, solarBeam, aerialAce, facade, roundMove, energyBall, infestation, dazzlingGleam, confusion, doubleEdge, seedBomb, snore],
  numHeals = baseNumHeals
}

houndoom :: Pokemon
houndoom = Pokemon {
  pokemonIndex = 229,
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
  pokemonMoves = [tackle, fairyWind, bulletSeed, megaDrain, acrobatics, uturn, gigaDrain, bounce, hiddenPower, hyperBeam, solarBeam, aerialAce, facade, roundMove, energyBall, gigaImpact, infestation, dazzlingGleam, confusion, doubleEdge, seedBomb, snore],
  numHeals = baseNumHeals
}

kingdra :: Pokemon
kingdra = Pokemon {
  pokemonIndex = 230,
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
  pokemonMoves = [scratch, astonish, furySwipes, swift, doubleHit, lastResort, hiddenPower, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, aerialAce, facade, thief, lowSweep, roundMove, acrobatics, shadowClaw, payback, dreamEater, uturn, pursuit, slam, doubleSlap, fakeOut, covet, bounce, revenge, seedBomb, gunkShot, uproar, thunderPunch, firePunch, icePunch, foulPlay, ironTail, snore, knockOff, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

phanpy :: Pokemon
phanpy = Pokemon {
  pokemonIndex = 231,
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
  pokemonMoves = [absorb, megaDrain, razorLeaf, gigaDrain, solarBeam, doubleEdge, seedBomb, hiddenPower, sludgeBomb, facade, roundMove, energyBall, uproar, earthPower, snore],
  numHeals = baseNumHeals
}

donphan :: Pokemon
donphan = Pokemon {
  pokemonIndex = 232,
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
  pokemonMoves = [absorb, pound, megaDrain, razorLeaf, gigaDrain, bulletSeed, petalDance, solarBeam, doubleEdge, leafStorm, petalBlizzard, hiddenPower, hyperBeam, sludgeBomb, facade, roundMove, energyBall, gigaImpact, seedBomb, uproar, earthPower, snore],
  numHeals = baseNumHeals
}

porygon2 :: Pokemon
porygon2 = Pokemon {
  pokemonIndex = 233,
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
  pokemonMoves = [tackle, quickAttack, uproar, pursuit, ancientPower, wingAttack, uturn, airSlash, bugBuzz, hiddenPower, solarBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, dreamEater, leechLife, signalBeam, silverWind, feint, feintAttack, doubleEdge, secretPower, bugBite, snore, gigaDrain, airCutter],
  numHeals = baseNumHeals
}

stantler :: Pokemon
stantler = Pokemon {
  pokemonIndex = 234,
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
  pokemonMoves = [waterGun, mudShot, slam, mudBomb, earthquake, muddyWater, hiddenPower, iceBeam, blizzard, sludgeWave, sludgeBomb, facade, roundMove, scald, bulldoze, infestation, surf, waterfall, bodySlam, ancientPower, doubleKick, acidSpray, icePunch, earthPower, icyWind, aquaTail, ironTail, snore, waterPulse],
  numHeals = baseNumHeals
}

smeargle :: Pokemon
smeargle = Pokemon {
  pokemonIndex = 235,
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
  pokemonMoves = [waterGun, mudShot, slam, mudBomb, earthquake, muddyWater, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, sludgeWave, sludgeBomb, rockTomb, facade, thief, roundMove, focusBlast, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, infestation, surf, waterfall, bodySlam, ancientPower, doubleKick, acidSpray, icePunch, earthPower, icyWind, aquaTail, ironTail, snore, focusPunch, waterPulse],
  numHeals = baseNumHeals
}

tyrogue :: Pokemon
tyrogue = Pokemon {
  pokemonIndex = 236,
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
  pokemonMoves = [confusion, tackle, quickAttack, swift, psybeam, futureSight, psychic, lastResort, psyshock, hiddenPower, hyperBeam, shadowBall, facade, roundMove, echoedVoice, gigaImpact, dreamEater, dazzlingGleam, covet, storedPower, synchronoise, signalBeam, zenHeadbutt, hyperVoice, ironTail, snore, bite, takeDown, doubleEdge],
  numHeals = baseNumHeals
}

hitmontop :: Pokemon
hitmontop = Pokemon {
  pokemonIndex = 237,
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
  pokemonMoves = [pursuit, tackle, quickAttack, feintAttack, assurance, lastResort, hiddenPower, hyperBeam, psychic, shadowBall, facade, roundMove, echoedVoice, payback, gigaImpact, dreamEater, snarl, darkPulse, covet, storedPower, synchronoise, foulPlay, hyperVoice, ironTail, snore, bite, swift, takeDown, doubleEdge],
  numHeals = baseNumHeals
}

smoochum :: Pokemon
smoochum = Pokemon {
  pokemonIndex = 238,
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
  pokemonMoves = [peck, astonish, pursuit, wingAttack, assurance, feintAttack, foulPlay, suckerPunch, hiddenPower, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, payback, fly, dreamEater, snarl, darkPulse, drillPeck, skyAttack, braveBird, uproar, icyWind, snore, heatWave, airCutter],
  numHeals = baseNumHeals
}

elekid :: Pokemon
elekid = Pokemon {
  pokemonIndex = 239,
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
  pokemonMoves = [powerGem, hiddenPower, tackle, waterGun, confusion, headbutt, waterPulse, zenHeadbutt, psychic, psyshock, iceBeam, blizzard, hyperBeam, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, facade, roundMove, echoedVoice, focusBlast, scald, gigaImpact, bulldoze, dragonTail, dreamEater, surf, futureSight, stomp, snore, belch, signalBeam, icePunch, foulPlay, icyWind, aquaTail, ironTail, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

magby :: Pokemon
magby = Pokemon {
  pokemonIndex = 240,
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
  pokemonMoves = [astonish, hex, psybeam, payback, shadowBall, powerGem, hiddenPower, thunderbolt, thunder, psychic, aerialAce, facade, thief, roundMove, echoedVoice, chargeBeam, dreamEater, darkPulse, dazzlingGleam, suckerPunch, shadowSneak, ominousWind, uproar, foulPlay, icyWind, hyperVoice, snore, shockWave],
  numHeals = baseNumHeals
}

miltank :: Pokemon
miltank = Pokemon {
  pokemonIndex = 241,
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
  pokemonMoves = [hiddenPower],
  numHeals = baseNumHeals
}

raikou :: Pokemon
raikou = Pokemon {
  pokemonIndex = 243,
  pokemonName = "Raikou",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 90,
  pokemonType1 = Electric,
  pokemonType2 = None,
  attack = 85,
  defence = 75,
  specialAttack = 115,
  specialDefence = 100,
  pokemonMoves = [astonish, tackle, confusion, assurance, stomp, psybeam, doubleHit, zenHeadbutt, crunch, psychic, psyshock, hiddenPower, thunderbolt, thunder, earthquake, shadowBall, facade, thief, roundMove, echoedVoice, energyBall, chargeBeam, bulldoze, dreamEater, dazzlingGleam, takeDown, futureSight, doubleKick, razorWind, secretPower, signalBeam, uproar, foulPlay, hyperVoice, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

entei :: Pokemon
entei = Pokemon {
  pokemonIndex = 244,
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
  pokemonMoves = [tackle, selfDestruct, bugBite, takeDown, rapidSpin, payback, explosion, doubleEdge, venoshock, hiddenPower, solarBeam, earthquake, rockTomb, facade, roundMove, bulldoze, rockSlide, pinMissile, swift, sandTomb, revenge, drillRun, snore, gigaDrain],
  numHeals = baseNumHeals
}

suicune :: Pokemon
suicune = Pokemon {
  pokemonIndex = 245,
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
  pokemonMoves = [mirrorShot, zapCannon, tackle, selfDestruct, bugBite, takeDown, rapidSpin, payback, explosion, doubleEdge, venoshock, hiddenPower, hyperBeam, solarBeam, earthquake, rockTomb, facade, roundMove, gigaImpact, voltSwitch, bulldoze, rockSlide, flashCannon, pinMissile, swift, sandTomb, revenge, signalBeam, drillRun, snore, gigaDrain],
  numHeals = baseNumHeals
}

larvitar :: Pokemon
larvitar = Pokemon {
  pokemonIndex = 246,
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
  pokemonMoves = [rage, rollout, pursuit, ancientPower, bodySlam, drillRun, takeDown, dig, doubleEdge, airSlash, dragonRush, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, earthquake, shadowBall, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, chargeBeam, bulldoze, rockSlide, poisonJab, dreamEater, wildCharge, bite, headbutt, astonish, snore, secretPower, hex, lastResort, aquaTail, zenHeadbutt, ironTail, bind, airCutter, shockWave, waterPulse],
  numHeals = baseNumHeals
}

pupitar :: Pokemon
pupitar = Pokemon {
  pokemonIndex = 247,
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
  pokemonMoves = [poisonSting, knockOff, quickAttack, furyCutter, feintAttack, acrobatics, slash, uturn, xScissor, skyUppercut, venoshock, hiddenPower, earthquake, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, steelWing, falseSwipe, payback, stoneEdge, bulldoze, rockSlide, poisonJab, darkPulse, metalClaw, wingAttack, razorWind, sandTomb, doubleEdge, feint, nightSlash, crossPoison, rockClimb, poisonTail, bugBite, earthPower, aquaTail, ironTail, snore, airCutter],
  numHeals = baseNumHeals
}

tyranitar :: Pokemon
tyranitar = Pokemon {
  pokemonIndex = 248,
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
  pokemonMoves = [thunderFang, iceFang, fireFang, tackle, bind, rockThrow, rockTomb, rage, smackDown, dragonBreath, slam, rockSlide, crunch, ironTail, dig, stoneEdge, doubleEdge, hiddenPower, hyperBeam, earthquake, facade, roundMove, brutalSwing, explosion, payback, gigaImpact, bulldoze, dragonTail, flashCannon, darkPulse, rollout, rockBlast, rockClimb, ironHead, earthPower, aquaTail, dragonPulse, snore, sandTomb],
  numHeals = baseNumHeals
}

lugia :: Pokemon
lugia = Pokemon {
  pokemonIndex = 249,
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
  pokemonMoves = [thunderFang, iceFang, fireFang, tackle, bind, rockThrow, rockTomb, rage, smackDown, dragonBreath, slam, rockSlide, crunch, ironTail, dig, stoneEdge, doubleEdge, hiddenPower, hyperBeam, earthquake, facade, roundMove, brutalSwing, explosion, payback, gigaImpact, bulldoze, dragonTail, flashCannon, darkPulse, rollout, rockBlast, rockClimb, ironHead, earthPower, aquaTail, dragonPulse, snore, sandTomb],
  numHeals = baseNumHeals
}

ho :: Pokemon
ho = Pokemon {
  pokemonIndex = 250,
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
  pokemonMoves = [iceFang, fireFang, thunderFang, tackle, bite, lick, headbutt, rage, playRough, payback, crunch, hiddenPower, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, sludgeBomb, fireBlast, facade, thief, roundMove, overheat, bulldoze, wildCharge, snarl, dazzlingGleam, feintAttack, snore, smellingSalts, closeCombat, focusPunch, doubleEdge, covet, thunderPunch, firePunch, icePunch, lastResort, superpower, hyperVoice, shockWave, waterPulse],
  numHeals = baseNumHeals
}

celebi :: Pokemon
celebi = Pokemon {
  pokemonIndex = 251,
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
  pokemonMoves = [outrage, iceFang, fireFang, thunderFang, tackle, bite, lick, headbutt, rage, playRough, payback, crunch, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, thief, roundMove, overheat, focusBlast, gigaImpact, stoneEdge, bulldoze, rockSlide, wildCharge, snarl, dazzlingGleam, feintAttack, snore, smellingSalts, closeCombat, focusPunch, doubleEdge, covet, thunderPunch, firePunch, icePunch, lastResort, superpower, hyperVoice, ironTail, shockWave, waterPulse],
  numHeals = baseNumHeals
}

treecko :: Pokemon
treecko = Pokemon {
  pokemonIndex = 252,
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
  pokemonMoves = [fellStinger, hydroPump, waterGun, tackle, poisonSting, bubble, rollout, revenge, brine, pinMissile, takeDown, aquaTail, poisonJab, venoshock, hiddenPower, iceBeam, blizzard, shadowBall, sludgeWave, sludgeBomb, facade, roundMove, scald, explosion, payback, surf, waterfall, bubbleBeam, astonish, signalBeam, aquaJet, waterPulse, acidSpray, bounce, icyWind, snore, shockWave],
  numHeals = baseNumHeals
}

grovyle :: Pokemon
grovyle = Pokemon {
  pokemonIndex = 253,
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
  pokemonMoves = [feint, bulletPunch, quickAttack, pursuit, falseSwipe, metalClaw, furyCutter, slash, razorWind, xScissor, nightSlash, doubleHit, ironHead, venoshock, hiddenPower, hyperBeam, brickBreak, aerialAce, facade, thief, roundMove, steelWing, brutalSwing, acrobatics, gigaImpact, uturn, flashCannon, silverWind, bugBuzz, bugBite, superpower, snore, knockOff, airCutter, vacuumWave, wingAttack, airSlash],
  numHeals = baseNumHeals
}

sceptile :: Pokemon
sceptile = Pokemon {
  pokemonIndex = 254,
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
  pokemonMoves = [feint, bulletPunch, quickAttack, pursuit, falseSwipe, metalClaw, furyCutter, slash, razorWind, xScissor, nightSlash, doubleHit, ironHead, venoshock, hiddenPower, hyperBeam, brickBreak, aerialAce, facade, thief, roundMove, steelWing, brutalSwing, acrobatics, gigaImpact, uturn, flashCannon, silverWind, bugBuzz, bugBite, superpower, snore, knockOff, airCutter, vacuumWave, wingAttack, airSlash],
  numHeals = baseNumHeals
}

torchic :: Pokemon
torchic = Pokemon {
  pokemonIndex = 255,
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
  pokemonMoves = [constrict, rollout, wrap, struggleBug, rockThrow, rockSlide, bugBite, stoneEdge, venoshock, hiddenPower, smackDown, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, roundMove, bulldoze, infestation, knockOff, sandTomb, mudSlap, acid, rockBlast, earthPower, bind, snore],
  numHeals = baseNumHeals
}

combusken :: Pokemon
combusken = Pokemon {
  pokemonIndex = 256,
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
  pokemonMoves = [armThrust, bulletSeed, nightSlash, tackle, hornAttack, feint, aerialAce, chipAway, furyAttack, brickBreak, pinMissile, takeDown, megahorn, closeCombat, venoshock, hiddenPower, hyperBeam, smackDown, earthquake, rockTomb, facade, thief, roundMove, focusBlast, falseSwipe, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, revenge, pursuit, doubleEdge, focusPunch, rockBlast, bugBite, snore, knockOff],
  numHeals = baseNumHeals
}

blaziken :: Pokemon
blaziken = Pokemon {
  pokemonIndex = 257,
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
  pokemonMoves = [armThrust, bulletSeed, nightSlash, tackle, hornAttack, feint, aerialAce, chipAway, furyAttack, brickBreak, pinMissile, takeDown, megahorn, closeCombat, venoshock, hiddenPower, hyperBeam, smackDown, earthquake, rockTomb, facade, thief, roundMove, focusBlast, falseSwipe, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, revenge, pursuit, doubleEdge, focusPunch, rockBlast, bugBite, snore, knockOff],
  numHeals = baseNumHeals
}

mudkip :: Pokemon
mudkip = Pokemon {
  pokemonIndex = 258,
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
  pokemonMoves = [scratch, quickAttack, feintAttack, icyWind, furySwipes, metalClaw, slash, iceShard, hiddenPower, iceBeam, blizzard, shadowBall, brickBreak, aerialAce, facade, thief, lowSweep, roundMove, falseSwipe, shadowClaw, payback, xScissor, poisonJab, dreamEater, surf, snarl, darkPulse, bite, crushClaw, fakeOut, doubleHit, pursuit, icePunch, avalanche, feint, icicleCrash, throatChop, foulPlay, ironTail, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

marshtomp :: Pokemon
marshtomp = Pokemon {
  pokemonIndex = 259,
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
  pokemonMoves = [covet, scratch, lick, furySwipes, feintAttack, slash, snore, thrash, hiddenPower, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, shadowClaw, payback, bulldoze, rockSlide, crunch, takeDown, metalClaw, crossChop, doubleEdge, closeCombat, nightSlash, chipAway, playRough, seedBomb, gunkShot, thunderPunch, firePunch, icePunch, lastResort, superpower, hyperVoice, focusPunch],
  numHeals = baseNumHeals
}

swampert :: Pokemon
swampert = Pokemon {
  pokemonIndex = 260,
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
  pokemonMoves = [hammerArm, covet, scratch, lick, furySwipes, feintAttack, slash, snore, thrash, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, crunch, takeDown, metalClaw, crossChop, doubleEdge, closeCombat, nightSlash, chipAway, playRough, seedBomb, gunkShot, uproar, thunderPunch, firePunch, icePunch, lastResort, superpower, hyperVoice, focusPunch],
  numHeals = baseNumHeals
}

poochyena :: Pokemon
poochyena = Pokemon {
  pokemonIndex = 261,
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
  pokemonMoves = [smog, ember, rockThrow, incinerate, clearSmog, ancientPower, flameBurst, rockSlide, lavaPlume, bodySlam, flamethrower, earthPower, hiddenPower, fireBlast, rockTomb, facade, flameCharge, roundMove, overheat, infestation, heatWave, rollout, inferno, snore],
  numHeals = baseNumHeals
}

mightyena :: Pokemon
mightyena = Pokemon {
  pokemonIndex = 262,
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
  pokemonMoves = [earthPower, smog, ember, rockThrow, incinerate, clearSmog, ancientPower, flameBurst, rockSlide, lavaPlume, bodySlam, flamethrower, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, fireBlast, rockTomb, facade, flameCharge, roundMove, overheat, explosion, gigaImpact, stoneEdge, bulldoze, infestation, heatWave, rollout, inferno, snore],
  numHeals = baseNumHeals
}

zigzagoon :: Pokemon
zigzagoon = Pokemon {
  pokemonIndex = 263,
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
  pokemonMoves = [tackle, powderSnow, mudSlap, mudBomb, icyWind, iceShard, takeDown, earthquake, blizzard, hiddenPower, iceBeam, rockTomb, facade, roundMove, bulldoze, rockSlide, bite, bodySlam, ancientPower, mudShot, icicleSpear, doubleEdge, avalanche, icicleCrash, freezeDry, earthPower, superpower, snore],
  numHeals = baseNumHeals
}

linoone :: Pokemon
linoone = Pokemon {
  pokemonIndex = 264,
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
  pokemonMoves = [furyAttack, ancientPower, peck, powderSnow, mudSlap, mudBomb, icyWind, iceFang, takeDown, thrash, earthquake, blizzard, hiddenPower, iceBeam, hyperBeam, rockTomb, facade, roundMove, gigaImpact, stoneEdge, bulldoze, rockSlide, bite, bodySlam, mudShot, icicleSpear, doubleEdge, avalanche, icicleCrash, freezeDry, earthPower, superpower, snore, tackle, iceShard],
  numHeals = baseNumHeals
}

wurmple :: Pokemon
wurmple = Pokemon {
  pokemonIndex = 265,
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
  pokemonMoves = [tackle, bubble, bubbleBeam, ancientPower, spikeCannon, brine, rockBlast, powerGem, earthPower, hiddenPower, iceBeam, blizzard, earthquake, psychic, shadowBall, rockTomb, facade, roundMove, scald, explosion, stoneEdge, bulldoze, rockSlide, surf, icicleSpear, waterPulse, headSmash, liquidation, icyWind, snore],
  numHeals = baseNumHeals
}

silcoon :: Pokemon
silcoon = Pokemon {
  pokemonIndex = 266,
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
  pokemonMoves = [waterGun, psybeam, auroraBeam, bubbleBeam, waterPulse, signalBeam, iceBeam, bulletSeed, hydroPump, hyperBeam, hiddenPower, blizzard, smackDown, psychic, flamethrower, fireBlast, facade, thief, roundMove, scald, chargeBeam, surf, waterfall, octazooka, rockBlast, snore, mudShot, swift, acidSpray, seedBomb, bounce, gunkShot, icyWind],
  numHeals = baseNumHeals
}

beautifly :: Pokemon
beautifly = Pokemon {
  pokemonIndex = 267,
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
  pokemonMoves = [octazooka, gunkShot, rockBlast, waterGun, constrict, psybeam, auroraBeam, bubbleBeam, signalBeam, iceBeam, bulletSeed, hydroPump, hyperBeam, hiddenPower, blizzard, smackDown, psychic, sludgeWave, flamethrower, sludgeBomb, fireBlast, facade, thief, roundMove, energyBall, scald, chargeBeam, payback, gigaImpact, flashCannon, surf, waterfall, snore, mudShot, swift, acidSpray, waterPulse, seedBomb, bounce, icyWind, bind],
  numHeals = baseNumHeals
}

cascoon :: Pokemon
cascoon = Pokemon {
  pokemonIndex = 268,
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
  pokemonMoves = [drillPeck, hiddenPower, iceBeam, blizzard, brickBreak, aerialAce, facade, thief, roundMove, brutalSwing, fly, frostBreath, auroraBeam, quickAttack, futureSight, rapidSpin, iceBall, iceShard, icePunch, fakeOut, icyWind, freezeDry, signalBeam, seedBomb, bounce, gunkShot, snore, skyAttack, focusPunch, waterPulse],
  numHeals = baseNumHeals
}

dustox :: Pokemon
dustox = Pokemon {
  pokemonIndex = 269,
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
  pokemonMoves = [psybeam, bulletSeed, signalBeam, tackle, bubble, bubbleBeam, wingAttack, headbutt, waterPulse, takeDown, airSlash, bounce, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, aerialAce, facade, roundMove, scald, acrobatics, gigaImpact, bulldoze, rockSlide, surf, waterfall, twister, slam, ironHead, seedBomb, gunkShot, icyWind, aquaTail, snore],
  numHeals = baseNumHeals
}

lotad :: Pokemon
lotad = Pokemon {
  pokemonIndex = 270,
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
  pokemonMoves = [peck, metalClaw, airCutter, furyAttack, feint, swift, steelWing, slash, airSlash, nightSlash, hiddenPower, rockTomb, aerialAce, facade, thief, roundMove, skyDrop, payback, fly, rockSlide, xScissor, flashCannon, darkPulse, drillPeck, pursuit, skyAttack, braveBird, assurance, ironHead, icyWind, snore],
  numHeals = baseNumHeals
}

lombre :: Pokemon
lombre = Pokemon {
  pokemonIndex = 271,
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
  pokemonMoves = [ember, smog, bite, fireFang, feintAttack, foulPlay, flamethrower, crunch, inferno, hiddenPower, solarBeam, shadowBall, sludgeBomb, fireBlast, facade, flameCharge, thief, roundMove, overheat, payback, dreamEater, snarl, darkPulse, fireSpin, rage, pursuit, thunderFang, feint, suckerPunch, uproar, hyperVoice, ironTail, snore, heatWave],
  numHeals = baseNumHeals
}

ludicolo :: Pokemon
ludicolo = Pokemon {
  pokemonIndex = 272,
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
  pokemonMoves = [inferno, thunderFang, ember, smog, bite, fireFang, feintAttack, foulPlay, flamethrower, crunch, hiddenPower, hyperBeam, solarBeam, shadowBall, sludgeBomb, fireBlast, facade, flameCharge, thief, roundMove, overheat, payback, gigaImpact, dreamEater, snarl, darkPulse, fireSpin, rage, pursuit, feint, suckerPunch, uproar, hyperVoice, ironTail, snore, heatWave],
  numHeals = baseNumHeals
}

seedot :: Pokemon
seedot = Pokemon {
  pokemonIndex = 273,
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
  pokemonMoves = [inferno, thunderFang, ember, smog, bite, fireFang, feintAttack, foulPlay, flamethrower, crunch, hiddenPower, hyperBeam, solarBeam, shadowBall, sludgeBomb, fireBlast, facade, flameCharge, thief, roundMove, overheat, payback, gigaImpact, dreamEater, snarl, darkPulse, fireSpin, rage, pursuit, feint, suckerPunch, uproar, hyperVoice, ironTail, snore, heatWave],
  numHeals = baseNumHeals
}

nuzleaf :: Pokemon
nuzleaf = Pokemon {
  pokemonIndex = 274,
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
  pokemonMoves = [hydroPump, bubble, waterGun, twister, bubbleBeam, brine, dragonPulse, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, scald, gigaImpact, flashCannon, surf, waterfall, dracoMeteor, auroraBeam, octazooka, dragonBreath, signalBeam, razorWind, muddyWater, waterPulse, clearSmog, outrage, ironHead, bounce, icyWind, snore],
  numHeals = baseNumHeals
}

shiftry :: Pokemon
shiftry = Pokemon {
  pokemonIndex = 275,
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
  pokemonMoves = [tackle, rollout, slam, takeDown, lastResort, doubleEdge, hiddenPower, earthquake, rockTomb, facade, roundMove, echoedVoice, bulldoze, rockSlide, bodySlam, ancientPower, snore, iceShard, headSmash, mudSlap, playRough, seedBomb, gunkShot, earthPower, superpower, hyperVoice, ironTail, knockOff],
  numHeals = baseNumHeals
}

taillow :: Pokemon
taillow = Pokemon {
  pokemonIndex = 276,
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
  pokemonMoves = [furyAttack, fireFang, thunderFang, hornAttack, bulldoze, rapidSpin, rollout, assurance, knockOff, slam, earthquake, gigaImpact, hiddenPower, hyperBeam, rockTomb, facade, roundMove, echoedVoice, brutalSwing, stoneEdge, rockSlide, poisonJab, bodySlam, ancientPower, snore, iceShard, headSmash, mudSlap, playRough, seedBomb, bounce, gunkShot, earthPower, lastResort, superpower, hyperVoice, ironTail, tackle, takeDown, doubleEdge],
  numHeals = baseNumHeals
}

swellow :: Pokemon
swellow = Pokemon {
  pokemonIndex = 277,
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
  pokemonMoves = [zapCannon, tackle, psybeam, signalBeam, discharge, triAttack, hyperBeam, psyshock, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, psychic, shadowBall, aerialAce, facade, thief, roundMove, chargeBeam, gigaImpact, dreamEater, foulPlay, lastResort, electroweb, icyWind, zenHeadbutt, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

wingull :: Pokemon
wingull = Pokemon {
  pokemonIndex = 278,
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
  pokemonMoves = [tackle, astonish, stomp, takeDown, zenHeadbutt, jumpKick, psyshock, hiddenPower, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, facade, thief, roundMove, energyBall, chargeBeam, gigaImpact, bulldoze, dreamEater, wildCharge, bite, extrasensory, thrash, doubleKick, megahorn, rage, signalBeam, bounce, uproar, lastResort, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

ralts :: Pokemon
ralts = Pokemon {
  pokemonIndex = 280,
  pokemonName = "Ralts",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 28,
  pokemonType1 = Psychic,
  pokemonType2 = Fairy,
  attack = 25,
  defence = 25,
  specialAttack = 45,
  specialDefence = 35,
  pokemonMoves = [tackle, fakeOut, hiddenPower, earthquake, brickBreak, facade, thief, lowSweep, roundMove, bulldoze, rockSlide, rapidSpin, highJumpKick, machPunch, vacuumWave, bulletPunch, pursuit, feint, covet, uproar, snore],
  numHeals = baseNumHeals
}

kirlia :: Pokemon
kirlia = Pokemon {
  pokemonIndex = 281,
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
  pokemonMoves = [rollingKick, closeCombat, revenge, pursuit, quickAttack, rapidSpin, feint, tripleKick, hiddenPower, earthquake, brickBreak, aerialAce, facade, thief, lowSweep, roundMove, stoneEdge, bulldoze, rockSlide, highJumpKick, machPunch, vacuumWave, bulletPunch, covet, snore, tackle, fakeOut],
  numHeals = baseNumHeals
}

gardevoir :: Pokemon
gardevoir = Pokemon {
  pokemonIndex = 282,
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
  pokemonMoves = [pound, lick, powderSnow, confusion, heartStamp, avalanche, psychic, blizzard, psyshock, hiddenPower, iceBeam, shadowBall, facade, thief, roundMove, echoedVoice, payback, frostBreath, dreamEater, fakeOut, icePunch, wakeUpSlap, covet, signalBeam, uproar, icyWind, zenHeadbutt, snore, waterPulse],
  numHeals = baseNumHeals
}

surskit :: Pokemon
surskit = Pokemon {
  pokemonIndex = 283,
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
  pokemonMoves = [quickAttack, thunderShock, swift, shockWave, thunderPunch, discharge, thunderbolt, thunder, hiddenPower, psychic, brickBreak, facade, thief, roundMove, chargeBeam, voltSwitch, wildCharge, karateChop, rollingKick, crossChop, firePunch, icePunch, dynamicPunch, feint, hammerArm, focusPunch, covet, dualChop, signalBeam, uproar, electroweb, snore],
  numHeals = baseNumHeals
}

masquerain :: Pokemon
masquerain = Pokemon {
  pokemonIndex = 284,
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
  pokemonMoves = [smog, ember, feintAttack, fireSpin, clearSmog, flameBurst, firePunch, lavaPlume, flamethrower, fireBlast, hiddenPower, psychic, brickBreak, facade, flameCharge, thief, roundMove, overheat, karateChop, megaPunch, crossChop, thunderPunch, machPunch, dynamicPunch, flareBlitz, ironTail, belch, covet, dualChop, uproar, snore, heatWave, focusPunch],
  numHeals = baseNumHeals
}

shroomish :: Pokemon
shroomish = Pokemon {
  pokemonIndex = 285,
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
  pokemonMoves = [tackle, stomp, rollout, bodySlam, zenHeadbutt, wakeUpSlap, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, rockTomb, facade, roundMove, echoedVoice, focusBlast, gigaImpact, bulldoze, rockSlide, surf, dizzyPunch, hammerArm, doubleEdge, heartStamp, belch, ironHead, thunderPunch, firePunch, icePunch, icyWind, ironTail, snore, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

breloom :: Pokemon
breloom = Pokemon {
  pokemonIndex = 286,
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
  pokemonMoves = [doubleEdge, pound, doubleSlap, takeDown, eggBomb, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, bulldoze, rockSlide, dreamEater, wildCharge, dazzlingGleam, lastResort, mudBomb, covet, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, ironTail, snore, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

slakoth :: Pokemon
slakoth = Pokemon {
  pokemonIndex = 287,
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
  pokemonMoves = [extrasensory, discharge, bite, thunderShock, quickAttack, spark, crunch, thunderFang, thunder, hiddenPower, hyperBeam, thunderbolt, shadowBall, facade, roundMove, chargeBeam, gigaImpact, voltSwitch, bulldoze, wildCharge, snarl, signalBeam, ironHead, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

vigoroth :: Pokemon
vigoroth = Pokemon {
  pokemonIndex = 288,
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
  pokemonMoves = [sacredFire, extrasensory, lavaPlume, bite, ember, fireSpin, stomp, flamethrower, fireFang, fireBlast, hiddenPower, hyperBeam, solarBeam, shadowBall, facade, flameCharge, roundMove, overheat, gigaImpact, stoneEdge, bulldoze, snarl, ironHead, ironTail, snore, heatWave],
  numHeals = baseNumHeals
}

slaking :: Pokemon
slaking = Pokemon {
  pokemonIndex = 289,
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
  pokemonMoves = [bite, bubbleBeam, gust, auroraBeam, iceFang, extrasensory, hydroPump, blizzard, hiddenPower, iceBeam, hyperBeam, shadowBall, facade, roundMove, scald, gigaImpact, bulldoze, surf, snarl, waterfall, signalBeam, ironHead, icyWind, ironTail, snore, waterPulse],
  numHeals = baseNumHeals
}

nincada :: Pokemon
nincada = Pokemon {
  pokemonIndex = 290,
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
  pokemonMoves = [bite, chipAway, rockSlide, thrash, darkPulse, payback, crunch, earthquake, stoneEdge, hyperBeam, hiddenPower, smackDown, brickBreak, rockTomb, facade, roundMove, bulldoze, snarl, pursuit, stomp, outrage, ancientPower, assurance, ironHead, ironTail, uproar, earthPower, superpower, snore],
  numHeals = baseNumHeals
}

ninjask :: Pokemon
ninjask = Pokemon {
  pokemonIndex = 291,
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
  pokemonMoves = [bite, chipAway, rockSlide, thrash, darkPulse, payback, crunch, earthquake, stoneEdge, hyperBeam, hiddenPower, smackDown, brickBreak, rockTomb, facade, roundMove, bulldoze, snarl, pursuit, stomp, outrage, ancientPower, assurance, ironHead, ironTail, uproar, earthPower, superpower, snore],
  numHeals = baseNumHeals
}

shedinja :: Pokemon
shedinja = Pokemon {
  pokemonIndex = 292,
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
  pokemonMoves = [thunderFang, iceFang, fireFang, bite, chipAway, rockSlide, thrash, darkPulse, payback, crunch, earthquake, stoneEdge, hyperBeam, gigaImpact, dragonClaw, hiddenPower, iceBeam, blizzard, smackDown, thunderbolt, thunder, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, focusBlast, brutalSwing, shadowClaw, bulldoze, dragonTail, surf, snarl, pursuit, stomp, outrage, ancientPower, assurance, ironHead, ironTail, uproar, thunderPunch, firePunch, icePunch, earthPower, foulPlay, superpower, aquaTail, dragonPulse, snore, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

whismur :: Pokemon
whismur = Pokemon {
  pokemonIndex = 293,
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
  pokemonMoves = [thunderFang, iceFang, fireFang, bite, chipAway, rockSlide, thrash, darkPulse, payback, crunch, earthquake, stoneEdge, hyperBeam, gigaImpact, dragonClaw, hiddenPower, iceBeam, blizzard, smackDown, thunderbolt, thunder, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, focusBlast, brutalSwing, shadowClaw, bulldoze, dragonTail, surf, snarl, pursuit, stomp, outrage, ancientPower, assurance, ironHead, ironTail, uproar, thunderPunch, firePunch, icePunch, earthPower, foulPlay, superpower, aquaTail, dragonPulse, snore, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

loudred :: Pokemon
loudred = Pokemon {
  pokemonIndex = 294,
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
  pokemonMoves = [weatherBall, gust, dragonRush, extrasensory, hydroPump, aeroblast, ancientPower, futureSight, skyAttack, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, aerialAce, facade, roundMove, echoedVoice, steelWing, chargeBeam, skyDrop, gigaImpact, fly, bulldoze, dragonTail, dreamEater, surf, waterfall, signalBeam, ironHead, earthPower, icyWind, aquaTail, zenHeadbutt, dragonPulse, hyperVoice, ironTail, snore, gigaDrain, airCutter, shockWave, waterPulse],
  numHeals = baseNumHeals
}

exploud :: Pokemon
exploud = Pokemon {
  pokemonIndex = 295,
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
  pokemonMoves = [weatherBall, gust, braveBird, extrasensory, fireBlast, sacredFire, ancientPower, futureSight, skyAttack, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, flamethrower, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, steelWing, chargeBeam, skyDrop, gigaImpact, fly, bulldoze, dreamEater, signalBeam, ironHead, earthPower, zenHeadbutt, hyperVoice, snore, heatWave, gigaDrain, airCutter, shockWave],
  numHeals = baseNumHeals
}

makuhita :: Pokemon
makuhita = Pokemon {
  pokemonIndex = 296,
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
  pokemonMoves = [confusion, magicalLeaf, ancientPower, futureSight, leafStorm, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, aerialAce, facade, roundMove, echoedVoice, energyBall, chargeBeam, gigaImpact, dreamEater, uturn, dazzlingGleam, signalBeam, seedBomb, uproar, earthPower, lastResort, zenHeadbutt, snore, gigaDrain, shockWave, waterPulse],
  numHeals = baseNumHeals
}

hariyama :: Pokemon
hariyama = Pokemon {
  pokemonIndex = 297,
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
  pokemonMoves = [pound, absorb, quickAttack, megaDrain, pursuit, gigaDrain, slam, energyBall, hiddenPower, solarBeam, brickBreak, rockTomb, aerialAce, facade, roundMove, acrobatics, rockSlide, frenzyPlant, crunch, dragonBreath, crushClaw, doubleKick, magicalLeaf, leafStorm, razorWind, bulletSeed, seedBomb, thunderPunch, ironTail, snore, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

azurill :: Pokemon
azurill = Pokemon {
  pokemonIndex = 298,
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
  pokemonMoves = [furyCutter, pound, absorb, quickAttack, megaDrain, pursuit, leafBlade, slam, xScissor, falseSwipe, leafStorm, hiddenPower, solarBeam, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, energyBall, acrobatics, rockSlide, frenzyPlant, crunch, dragonBreath, crushClaw, doubleKick, magicalLeaf, razorWind, bulletSeed, seedBomb, thunderPunch, ironTail, snore, gigaDrain, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

nosepass :: Pokemon
nosepass = Pokemon {
  pokemonIndex = 299,
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
  pokemonMoves = [dualChop, furyCutter, leafStorm, nightSlash, pound, absorb, quickAttack, megaDrain, pursuit, leafBlade, slam, xScissor, falseSwipe, dragonClaw, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, brutalSwing, acrobatics, gigaImpact, bulldoze, rockSlide, frenzyPlant, grassPledge, crunch, dragonBreath, crushClaw, doubleKick, magicalLeaf, razorWind, bulletSeed, seedBomb, thunderPunch, dragonPulse, ironTail, snore, gigaDrain, drainPunch, focusPunch, outrage],
  numHeals = baseNumHeals
}

skitty :: Pokemon
skitty = Pokemon {
  pokemonIndex = 300,
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
  pokemonMoves = [dualChop, furyCutter, leafStorm, nightSlash, pound, absorb, quickAttack, megaDrain, pursuit, leafBlade, slam, xScissor, falseSwipe, dragonClaw, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, brutalSwing, acrobatics, gigaImpact, bulldoze, rockSlide, frenzyPlant, grassPledge, crunch, dragonBreath, crushClaw, doubleKick, magicalLeaf, razorWind, bulletSeed, seedBomb, thunderPunch, dragonPulse, ironTail, snore, gigaDrain, drainPunch, focusPunch, outrage],
  numHeals = baseNumHeals
}

delcatty :: Pokemon
delcatty = Pokemon {
  pokemonIndex = 301,
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
  pokemonMoves = [scratch, ember, peck, fireSpin, quickAttack, flameBurst, slash, flamethrower, hiddenPower, fireBlast, rockTomb, aerialAce, facade, flameCharge, roundMove, echoedVoice, overheat, shadowClaw, rockSlide, blastBurn, smellingSalts, crushClaw, nightSlash, lastResort, feint, bounce, snore, heatWave],
  numHeals = baseNumHeals
}

sableye :: Pokemon
sableye = Pokemon {
  pokemonIndex = 302,
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
  pokemonMoves = [doubleKick, scratch, ember, peck, flameCharge, quickAttack, slash, skyUppercut, flareBlitz, hiddenPower, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, echoedVoice, overheat, focusBlast, shadowClaw, rockSlide, poisonJab, blastBurn, smellingSalts, crushClaw, nightSlash, lastResort, feint, flameBurst, dualChop, bounce, thunderPunch, firePunch, snore, heatWave, focusPunch, fireSpin],
  numHeals = baseNumHeals
}

mawile :: Pokemon
mawile = Pokemon {
  pokemonIndex = 303,
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
  pokemonMoves = [blazeKick, doubleKick, flareBlitz, firePunch, highJumpKick, scratch, ember, peck, flameCharge, quickAttack, slash, braveBird, skyUppercut, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, echoedVoice, overheat, focusBlast, acrobatics, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, blastBurn, firePledge, smellingSalts, crushClaw, nightSlash, lastResort, feint, flameBurst, dualChop, bounce, thunderPunch, superpower, snore, knockOff, heatWave, focusPunch, fireSpin],
  numHeals = baseNumHeals
}

aron :: Pokemon
aron = Pokemon {
  pokemonIndex = 304,
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
  pokemonMoves = [blazeKick, doubleKick, flareBlitz, firePunch, highJumpKick, scratch, ember, peck, flameCharge, quickAttack, slash, braveBird, skyUppercut, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, echoedVoice, overheat, focusBlast, acrobatics, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, blastBurn, firePledge, smellingSalts, crushClaw, nightSlash, lastResort, feint, flameBurst, dualChop, bounce, thunderPunch, superpower, snore, knockOff, heatWave, focusPunch, fireSpin],
  numHeals = baseNumHeals
}

lairon :: Pokemon
lairon = Pokemon {
  pokemonIndex = 305,
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
  pokemonMoves = [tackle, waterGun, mudSlap, rockThrow, whirlpool, takeDown, hydroPump, hiddenPower, iceBeam, blizzard, sludgeWave, rockTomb, facade, roundMove, echoedVoice, scald, rockSlide, surf, waterfall, hydroCannon, uproar, stomp, iceBall, ancientPower, bite, doubleEdge, mudBomb, sludge, avalanche, earthPower, superpower, icyWind, aquaTail, ironTail, snore, waterPulse],
  numHeals = baseNumHeals
}

aggron :: Pokemon
aggron = Pokemon {
  pokemonIndex = 306,
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
  pokemonMoves = [mudShot, tackle, waterGun, mudSlap, mudBomb, rockSlide, muddyWater, takeDown, earthquake, hiddenPower, iceBeam, blizzard, brickBreak, sludgeWave, rockTomb, facade, roundMove, echoedVoice, scald, bulldoze, surf, waterfall, hydroCannon, uproar, stomp, iceBall, ancientPower, whirlpool, bite, doubleEdge, sludge, avalanche, icePunch, earthPower, superpower, icyWind, aquaTail, ironTail, snore, waterPulse, rockThrow, hydroPump],
  numHeals = baseNumHeals
}

meditite :: Pokemon
meditite = Pokemon {
  pokemonIndex = 307,
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
  pokemonMoves = [mudShot, hammerArm, tackle, waterGun, mudSlap, mudBomb, rockSlide, muddyWater, takeDown, earthquake, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, sludgeWave, rockTomb, facade, roundMove, echoedVoice, focusBlast, scald, gigaImpact, stoneEdge, bulldoze, surf, waterfall, hydroCannon, waterPledge, uproar, stomp, iceBall, ancientPower, whirlpool, bite, doubleEdge, sludge, avalanche, icePunch, earthPower, superpower, icyWind, aquaTail, ironTail, snore, focusPunch, waterPulse, outrage, rockThrow, hydroPump],
  numHeals = baseNumHeals
}

medicham :: Pokemon
medicham = Pokemon {
  pokemonIndex = 308,
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
  pokemonMoves = [mudShot, hammerArm, tackle, waterGun, mudSlap, mudBomb, rockSlide, muddyWater, takeDown, earthquake, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, sludgeWave, rockTomb, facade, roundMove, echoedVoice, focusBlast, scald, gigaImpact, stoneEdge, bulldoze, surf, waterfall, hydroCannon, waterPledge, uproar, stomp, iceBall, ancientPower, whirlpool, bite, doubleEdge, sludge, avalanche, icePunch, earthPower, superpower, icyWind, aquaTail, ironTail, snore, focusPunch, waterPulse, outrage, rockThrow, hydroPump],
  numHeals = baseNumHeals
}

electrike :: Pokemon
electrike = Pokemon {
  pokemonIndex = 309,
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
  pokemonMoves = [tackle, bite, assurance, crunch, takeDown, suckerPunch, playRough, hiddenPower, shadowBall, facade, thief, roundMove, payback, snarl, darkPulse, astonish, poisonFang, covet, iceFang, fireFang, thunderFang, uproar, foulPlay, hyperVoice, ironTail, snore],
  numHeals = baseNumHeals
}

manectric :: Pokemon
manectric = Pokemon {
  pokemonIndex = 310,
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
  pokemonMoves = [snarl, fireFang, thunderFang, iceFang, crunch, thief, tackle, bite, assurance, takeDown, suckerPunch, playRough, hiddenPower, hyperBeam, shadowBall, facade, roundMove, payback, gigaImpact, darkPulse, astonish, poisonFang, covet, uproar, foulPlay, hyperVoice, ironTail, snore],
  numHeals = baseNumHeals
}

plusle :: Pokemon
plusle = Pokemon {
  pokemonIndex = 311,
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
  pokemonMoves = [tackle, headbutt, pinMissile, covet, takeDown, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, shadowBall, facade, thief, roundMove, echoedVoice, chargeBeam, surf, pursuit, mudSlap, rockClimb, seedBomb, gunkShot, lastResort, icyWind, hyperVoice, ironTail, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

minun :: Pokemon
minun = Pokemon {
  pokemonIndex = 312,
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
  pokemonMoves = [playRough, tackle, headbutt, furySwipes, covet, slash, doubleEdge, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, shadowBall, facade, thief, roundMove, echoedVoice, chargeBeam, shadowClaw, gigaImpact, surf, pursuit, mudSlap, rockClimb, seedBomb, gunkShot, lastResort, icyWind, hyperVoice, ironTail, snore, shockWave, waterPulse, pinMissile, takeDown],
  numHeals = baseNumHeals
}

volbeat :: Pokemon
volbeat = Pokemon {
  pokemonIndex = 313,
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
  pokemonMoves = [tackle, poisonSting, bugBite, electroweb, snore],
  numHeals = baseNumHeals
}

illumise :: Pokemon
illumise = Pokemon {
  pokemonIndex = 314,
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
  pokemonMoves = [bugBite, electroweb, tackle, poisonSting],
  numHeals = baseNumHeals
}

roselia :: Pokemon
roselia = Pokemon {
  pokemonIndex = 315,
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
  pokemonMoves = [gust, absorb, airCutter, megaDrain, silverWind, gigaDrain, bugBuzz, rage, venoshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, energyBall, acrobatics, gigaImpact, infestation, uturn, bugBite, signalBeam, electroweb, snore, tackle, poisonSting],
  numHeals = baseNumHeals
}

gulpin :: Pokemon
gulpin = Pokemon {
  pokemonIndex = 316,
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
  pokemonMoves = [bugBite, electroweb],
  numHeals = baseNumHeals
}

swalot :: Pokemon
swalot = Pokemon {
  pokemonIndex = 317,
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
  pokemonMoves = [gust, confusion, venoshock, psybeam, silverWind, bugBuzz, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, sludgeBomb, aerialAce, facade, thief, roundMove, energyBall, acrobatics, gigaImpact, infestation, uturn, bugBite, signalBeam, electroweb, snore, gigaDrain, airCutter],
  numHeals = baseNumHeals
}

carvanha :: Pokemon
carvanha = Pokemon {
  pokemonIndex = 318,
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
  pokemonMoves = [astonish, absorb, bubble, megaDrain, bubbleBeam, gigaDrain, zenHeadbutt, energyBall, hiddenPower, iceBeam, blizzard, solarBeam, facade, thief, roundMove, echoedVoice, scald, surf, razorLeaf, waterGun, seedBomb, uproar, icyWind, snore, waterPulse],
  numHeals = baseNumHeals
}

sharpedo :: Pokemon
sharpedo = Pokemon {
  pokemonIndex = 319,
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
  pokemonMoves = [astonish, absorb, bubble, furySwipes, fakeOut, bubbleBeam, uproar, knockOff, zenHeadbutt, hydroPump, hiddenPower, iceBeam, blizzard, solarBeam, brickBreak, facade, thief, roundMove, echoedVoice, energyBall, scald, surf, waterfall, razorLeaf, waterGun, gigaDrain, seedBomb, thunderPunch, firePunch, icePunch, icyWind, hyperVoice, snore, drainPunch, waterPulse, megaDrain],
  numHeals = baseNumHeals
}

wailmer :: Pokemon
wailmer = Pokemon {
  pokemonIndex = 320,
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
  pokemonMoves = [astonish, megaDrain, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, brickBreak, facade, thief, roundMove, echoedVoice, focusBlast, energyBall, scald, gigaImpact, surf, waterfall, razorLeaf, waterGun, gigaDrain, seedBomb, uproar, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, knockOff, drainPunch, focusPunch, waterPulse, absorb, bubble, furySwipes, fakeOut, bubbleBeam, hydroPump],
  numHeals = baseNumHeals
}

wailord :: Pokemon
wailord = Pokemon {
  pokemonIndex = 321,
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
  pokemonMoves = [explosion, hiddenPower, solarBeam, shadowBall, facade, roundMove, energyBall, falseSwipe, quickAttack, razorWind, takeDown, foulPlay, bulletSeed, seedBomb, snore, gigaDrain],
  numHeals = baseNumHeals
}

numel :: Pokemon
numel = Pokemon {
  pokemonIndex = 322,
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
  pokemonMoves = [razorLeaf, pound, fakeOut, razorWind, feintAttack, leafBlade, extrasensory, hiddenPower, hyperBeam, solarBeam, shadowBall, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, energyBall, falseSwipe, explosion, payback, rockSlide, snarl, darkPulse, quickAttack, takeDown, foulPlay, bulletSeed, seedBomb, snore, gigaDrain],
  numHeals = baseNumHeals
}

camerupt :: Pokemon
camerupt = Pokemon {
  pokemonIndex = 323,
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
  pokemonMoves = [razorLeaf, feintAttack, leafTornado, hurricane, leafStorm, hiddenPower, hyperBeam, solarBeam, shadowBall, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, focusBlast, energyBall, falseSwipe, brutalSwing, explosion, payback, gigaImpact, rockSlide, xScissor, snarl, darkPulse, quickAttack, razorWind, takeDown, foulPlay, bulletSeed, seedBomb, bounce, icyWind, snore, knockOff, gigaDrain, pound, fakeOut, leafBlade, extrasensory],
  numHeals = baseNumHeals
}

torkoal :: Pokemon
torkoal = Pokemon {
  pokemonIndex = 324,
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
  pokemonMoves = [peck, quickAttack, wingAttack, aerialAce, airSlash, braveBird, hiddenPower, facade, thief, roundMove, echoedVoice, steelWing, fly, uturn, pursuit, rage, skyAttack, boomburst, hurricane, snore, heatWave, airCutter],
  numHeals = baseNumHeals
}

spoink :: Pokemon
spoink = Pokemon {
  pokemonIndex = 325,
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
  pokemonMoves = [braveBird, airSlash, pluck, peck, quickAttack, wingAttack, aerialAce, hiddenPower, hyperBeam, facade, thief, roundMove, echoedVoice, steelWing, gigaImpact, fly, uturn, pursuit, rage, skyAttack, boomburst, hurricane, snore, heatWave, airCutter],
  numHeals = baseNumHeals
}

grumpig :: Pokemon
grumpig = Pokemon {
  pokemonIndex = 326,
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
  pokemonMoves = [waterGun, wingAttack, waterPulse, quickAttack, airCutter, pursuit, aerialAce, airSlash, hurricane, hiddenPower, iceBeam, blizzard, facade, thief, roundMove, echoedVoice, steelWing, scald, fly, uturn, twister, gust, knockOff, brine, uproar, icyWind, snore, skyAttack, shockWave],
  numHeals = baseNumHeals
}

spinda :: Pokemon
spinda = Pokemon {
  pokemonIndex = 327,
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
  pokemonMoves = [hurricane, hydroPump, waterGun, wingAttack, waterPulse, payback, brine, hiddenPower, iceBeam, blizzard, hyperBeam, aerialAce, facade, thief, roundMove, echoedVoice, steelWing, scald, skyDrop, gigaImpact, fly, uturn, surf, twister, gust, knockOff, seedBomb, gunkShot, uproar, icyWind, snore, skyAttack, airCutter, shockWave, quickAttack, pursuit, airSlash],
  numHeals = baseNumHeals
}

trapinch :: Pokemon
trapinch = Pokemon {
  pokemonIndex = 328,
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
  pokemonMoves = [confusion, disarmingVoice, magicalLeaf, drainingKiss, psychic, futureSight, dreamEater, storedPower, psyshock, hiddenPower, thunderbolt, shadowBall, facade, thief, roundMove, echoedVoice, chargeBeam, dazzlingGleam, shadowSneak, synchronoise, signalBeam, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave],
  numHeals = baseNumHeals
}

vibrava :: Pokemon
vibrava = Pokemon {
  pokemonIndex = 329,
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
  pokemonMoves = [confusion, disarmingVoice, magicalLeaf, drainingKiss, psychic, futureSight, dreamEater, storedPower, psyshock, hiddenPower, thunderbolt, shadowBall, facade, thief, roundMove, echoedVoice, chargeBeam, dazzlingGleam, shadowSneak, synchronoise, signalBeam, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave],
  numHeals = baseNumHeals
}

flygon :: Pokemon
flygon = Pokemon {
  pokemonIndex = 330,
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
  pokemonMoves = [moonblast, storedPower, confusion, disarmingVoice, magicalLeaf, drainingKiss, psychic, futureSight, dreamEater, psyshock, hiddenPower, hyperBeam, thunderbolt, shadowBall, facade, thief, roundMove, echoedVoice, focusBlast, energyBall, chargeBeam, gigaImpact, dazzlingGleam, shadowSneak, synchronoise, signalBeam, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave],
  numHeals = baseNumHeals
}

cacnea :: Pokemon
cacnea = Pokemon {
  pokemonIndex = 331,
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
  pokemonMoves = [moonblast, storedPower, confusion, disarmingVoice, magicalLeaf, drainingKiss, psychic, futureSight, dreamEater, psyshock, hiddenPower, hyperBeam, thunderbolt, shadowBall, facade, thief, roundMove, echoedVoice, focusBlast, energyBall, chargeBeam, gigaImpact, dazzlingGleam, shadowSneak, synchronoise, signalBeam, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, hyperVoice, snore, shockWave],
  numHeals = baseNumHeals
}

cacturne :: Pokemon
cacturne = Pokemon {
  pokemonIndex = 332,
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
  pokemonMoves = [bubble, quickAttack, bubbleBeam, aquaJet, hiddenPower, iceBeam, blizzard, solarBeam, shadowBall, facade, thief, roundMove, scald, infestation, mudShot, psybeam, hydroPump, signalBeam, bugBite, fellStinger, lunge, icyWind, snore, gigaDrain, waterPulse],
  numHeals = baseNumHeals
}

swablu :: Pokemon
swablu = Pokemon {
  pokemonIndex = 333,
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
  pokemonMoves = [bugBuzz, ominousWind, bubble, quickAttack, gust, airCutter, silverWind, airSlash, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, shadowBall, aerialAce, facade, thief, roundMove, energyBall, scald, gigaImpact, infestation, uturn, mudShot, psybeam, hydroPump, signalBeam, bugBite, aquaJet, fellStinger, lunge, icyWind, snore, gigaDrain, waterPulse, bubbleBeam],
  numHeals = baseNumHeals
}

altaria :: Pokemon
altaria = Pokemon {
  pokemonIndex = 334,
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
  pokemonMoves = [absorb, tackle, megaDrain, headbutt, gigaDrain, seedBomb, venoshock, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, energyBall, falseSwipe, wakeUpSlap, bulletSeed, focusPunch, drainPunch, snore],
  numHeals = baseNumHeals
}

zangoose :: Pokemon
zangoose = Pokemon {
  pokemonIndex = 335,
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
  pokemonMoves = [machPunch, absorb, tackle, megaDrain, headbutt, feint, forcePalm, skyUppercut, seedBomb, dynamicPunch, venoshock, hiddenPower, hyperBeam, solarBeam, brickBreak, sludgeBomb, rockTomb, facade, lowSweep, roundMove, focusBlast, energyBall, falseSwipe, gigaImpact, stoneEdge, rockSlide, wakeUpSlap, bulletSeed, focusPunch, drainPunch, thunderPunch, superpower, ironTail, snore, gigaDrain],
  numHeals = baseNumHeals
}

seviper :: Pokemon
seviper = Pokemon {
  pokemonIndex = 336,
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
  pokemonMoves = [scratch, feintAttack, covet, chipAway, playRough, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, shadowClaw, rockSlide, pursuit, slash, bodySlam, snore, crushClaw, hammerArm, nightSlash, gunkShot, thunderPunch, firePunch, icePunch, icyWind, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

lunatone :: Pokemon
lunatone = Pokemon {
  pokemonIndex = 337,
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
  pokemonMoves = [scratch, uproar, furySwipes, slash, chipAway, focusPunch, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, shadowClaw, bulldoze, rockSlide, pursuit, bodySlam, snore, crushClaw, hammerArm, nightSlash, covet, gunkShot, thunderPunch, firePunch, icePunch, icyWind, shockWave, waterPulse, feintAttack, playRough],
  numHeals = baseNumHeals
}

solrock :: Pokemon
solrock = Pokemon {
  pokemonIndex = 338,
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
  pokemonMoves = [hammerArm, scratch, feintAttack, covet, chipAway, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, shadowClaw, gigaImpact, bulldoze, rockSlide, pursuit, slash, bodySlam, snore, crushClaw, nightSlash, gunkShot, thunderPunch, firePunch, icePunch, icyWind, focusPunch, shockWave, waterPulse, uproar, furySwipes, playRough],
  numHeals = baseNumHeals
}

barboach :: Pokemon
barboach = Pokemon {
  pokemonIndex = 339,
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
  pokemonMoves = [scratch, absorb, furySwipes, mudSlap, metalClaw, falseSwipe, dig, hiddenPower, solarBeam, leechLife, shadowBall, aerialAce, facade, roundMove, xScissor, feintAttack, gust, silverWind, bugBuzz, nightSlash, bugBite, snore, gigaDrain],
  numHeals = baseNumHeals
}

whiscash :: Pokemon
whiscash = Pokemon {
  pokemonIndex = 340,
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
  pokemonMoves = [furyCutter, bugBite, scratch, absorb, furySwipes, slash, xScissor, hiddenPower, hyperBeam, solarBeam, leechLife, shadowBall, aerialAce, facade, thief, roundMove, falseSwipe, gigaImpact, uturn, feintAttack, gust, silverWind, bugBuzz, nightSlash, uproar, snore, gigaDrain, airCutter, mudSlap, metalClaw, dig],
  numHeals = baseNumHeals
}

corphish :: Pokemon
corphish = Pokemon {
  pokemonIndex = 341,
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
  pokemonMoves = [scratch, absorb, furySwipes, shadowSneak, shadowBall, phantomForce, hiddenPower, hyperBeam, solarBeam, leechLife, aerialAce, facade, thief, roundMove, falseSwipe, shadowClaw, gigaImpact, xScissor, dreamEater, bugBite, snore, gigaDrain, mudSlap, metalClaw, dig],
  numHeals = baseNumHeals
}

crawdaunt :: Pokemon
crawdaunt = Pokemon {
  pokemonIndex = 342,
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
  pokemonMoves = [pound, echoedVoice, astonish, stomp, uproar, hyperVoice, synchronoise, hiddenPower, iceBeam, blizzard, solarBeam, shadowBall, flamethrower, fireBlast, facade, roundMove, takeDown, snore, extrasensory, smellingSalts, hammerArm, circleThrow, disarmingVoice, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, shockWave, waterPulse],
  numHeals = baseNumHeals
}

baltoy :: Pokemon
baltoy = Pokemon {
  pokemonIndex = 343,
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
  pokemonMoves = [bite, pound, echoedVoice, astonish, stomp, uproar, hyperVoice, synchronoise, hiddenPower, iceBeam, blizzard, solarBeam, smackDown, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, overheat, bulldoze, rockSlide, takeDown, snore, extrasensory, smellingSalts, hammerArm, circleThrow, disarmingVoice, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, shockWave, waterPulse],
  numHeals = baseNumHeals
}

claydol :: Pokemon
claydol = Pokemon {
  pokemonIndex = 344,
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
  pokemonMoves = [crunch, bite, boomburst, iceFang, fireFang, thunderFang, pound, echoedVoice, astonish, stomp, uproar, hyperVoice, synchronoise, hyperBeam, hiddenPower, iceBeam, blizzard, solarBeam, smackDown, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, overheat, focusBlast, gigaImpact, bulldoze, rockSlide, surf, takeDown, snore, extrasensory, smellingSalts, hammerArm, circleThrow, disarmingVoice, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

lileep :: Pokemon
lileep = Pokemon {
  pokemonIndex = 345,
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
  pokemonMoves = [tackle, armThrust, fakeOut, forcePalm, knockOff, vitalThrow, smellingSalts, wakeUpSlap, closeCombat, hiddenPower, smackDown, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, bulldoze, rockSlide, poisonJab, surf, feintAttack, crossChop, revenge, dynamicPunch, bulletPunch, feint, focusPunch, chipAway, thunderPunch, firePunch, icePunch, superpower, snore],
  numHeals = baseNumHeals
}

cradily :: Pokemon
cradily = Pokemon {
  pokemonIndex = 346,
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
  pokemonMoves = [brine, tackle, armThrust, fakeOut, forcePalm, knockOff, vitalThrow, smellingSalts, wakeUpSlap, closeCombat, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, surf, feintAttack, crossChop, revenge, dynamicPunch, bulletPunch, feint, focusPunch, chipAway, ironHead, thunderPunch, firePunch, icePunch, superpower, snore],
  numHeals = baseNumHeals
}

anorith :: Pokemon
anorith = Pokemon {
  pokemonIndex = 347,
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
  pokemonMoves = [waterGun, bubble, bubbleBeam, slam, bounce, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, surf, waterfall, bodySlam, muddyWater, covet, uproar, icyWind, hyperVoice, ironTail, snore, knockOff, waterPulse],
  numHeals = baseNumHeals
}

armaldo :: Pokemon
armaldo = Pokemon {
  pokemonIndex = 348,
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
  pokemonMoves = [tackle, rockThrow, spark, rockSlide, powerGem, rockBlast, discharge, earthPower, stoneEdge, zapCannon, hiddenPower, smackDown, thunderbolt, thunder, earthquake, rockTomb, facade, roundMove, explosion, voltSwitch, bulldoze, dazzlingGleam, rollout, doubleEdge, thunderPunch, firePunch, icePunch, snore, shockWave],
  numHeals = baseNumHeals
}

feebas :: Pokemon
feebas = Pokemon {
  pokemonIndex = 349,
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
  pokemonMoves = [fakeOut, tackle, disarmingVoice, doubleSlap, feintAttack, wakeUpSlap, covet, doubleEdge, playRough, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, facade, roundMove, echoedVoice, chargeBeam, payback, dreamEater, wildCharge, uproar, lastResort, zenHeadbutt, suckerPunch, mudBomb, icyWind, hyperVoice, ironTail, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

milotic :: Pokemon
milotic = Pokemon {
  pokemonIndex = 350,
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
  pokemonMoves = [fakeOut, doubleSlap, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, facade, roundMove, echoedVoice, chargeBeam, payback, gigaImpact, dreamEater, wildCharge, uproar, lastResort, zenHeadbutt, suckerPunch, mudBomb, covet, icyWind, hyperVoice, ironTail, snore, shockWave, waterPulse, tackle, disarmingVoice, feintAttack, wakeUpSlap, doubleEdge, playRough],
  numHeals = baseNumHeals
}

castform :: Pokemon
castform = Pokemon {
  pokemonIndex = 351,
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
  pokemonMoves = [scratch, astonish, furySwipes, shadowSneak, feintAttack, fakeOut, knockOff, shadowClaw, zenHeadbutt, powerGem, shadowBall, foulPlay, hiddenPower, psychic, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, payback, poisonJab, dreamEater, snarl, darkPulse, dazzlingGleam, feint, suckerPunch, signalBeam, thunderPunch, firePunch, icePunch, icyWind, snore, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

kecleon :: Pokemon
kecleon = Pokemon {
  pokemonIndex = 352,
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
  pokemonMoves = [scratch, astonish, furySwipes, shadowSneak, feintAttack, fakeOut, knockOff, shadowClaw, zenHeadbutt, powerGem, shadowBall, foulPlay, hiddenPower, psychic, brickBreak, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, payback, poisonJab, dreamEater, snarl, darkPulse, dazzlingGleam, feint, suckerPunch, signalBeam, thunderPunch, firePunch, icePunch, icyWind, snore, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

shuppet :: Pokemon
shuppet = Pokemon {
  pokemonIndex = 353,
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
  pokemonMoves = [playRough, ironHead, fairyWind, astonish, bite, viceGrip, feintAttack, crunch, suckerPunch, hiddenPower, iceBeam, hyperBeam, solarBeam, shadowBall, brickBreak, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, roundMove, focusBlast, falseSwipe, chargeBeam, payback, gigaImpact, stoneEdge, rockSlide, flashCannon, darkPulse, poisonFang, ancientPower, iceFang, fireFang, thunderFang, slam, thunderPunch, icePunch, foulPlay, lastResort, icyWind, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

banette :: Pokemon
banette = Pokemon {
  pokemonIndex = 354,
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
  pokemonMoves = [playRough, ironHead, fairyWind, astonish, bite, viceGrip, feintAttack, crunch, suckerPunch, hiddenPower, iceBeam, hyperBeam, solarBeam, shadowBall, brickBreak, flamethrower, sludgeBomb, fireBlast, rockTomb, facade, roundMove, focusBlast, falseSwipe, chargeBeam, payback, gigaImpact, stoneEdge, rockSlide, flashCannon, darkPulse, poisonFang, ancientPower, iceFang, fireFang, thunderFang, slam, thunderPunch, icePunch, foulPlay, lastResort, icyWind, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

duskull :: Pokemon
duskull = Pokemon {
  pokemonIndex = 355,
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
  pokemonMoves = [tackle, mudSlap, headbutt, metalClaw, rockTomb, ironHead, rockSlide, takeDown, ironTail, doubleEdge, hiddenPower, earthquake, aerialAce, facade, roundMove, shadowClaw, bulldoze, bodySlam, stomp, smellingSalts, dragonRush, headSmash, superpower, uproar, earthPower, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

dusclops :: Pokemon
dusclops = Pokemon {
  pokemonIndex = 356,
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
  pokemonMoves = [tackle, mudSlap, headbutt, metalClaw, rockTomb, ironHead, rockSlide, takeDown, ironTail, doubleEdge, hiddenPower, earthquake, aerialAce, facade, roundMove, shadowClaw, stoneEdge, bulldoze, bodySlam, stomp, smellingSalts, dragonRush, headSmash, superpower, uproar, earthPower, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

tropius :: Pokemon
tropius = Pokemon {
  pokemonIndex = 357,
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
  pokemonMoves = [tackle, mudSlap, headbutt, metalClaw, rockTomb, ironHead, rockSlide, takeDown, ironTail, doubleEdge, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, aerialAce, facade, roundMove, focusBlast, brutalSwing, shadowClaw, payback, smartStrike, gigaImpact, stoneEdge, bulldoze, dragonTail, flashCannon, surf, darkPulse, bodySlam, stomp, smellingSalts, dragonRush, headSmash, superpower, uproar, thunderPunch, firePunch, icePunch, earthPower, icyWind, aquaTail, dragonPulse, snore, focusPunch, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

chimecho :: Pokemon
chimecho = Pokemon {
  pokemonIndex = 358,
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
  pokemonMoves = [tackle, mudSlap, headbutt, metalClaw, rockTomb, ironHead, rockSlide, takeDown, ironTail, doubleEdge, dragonClaw, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, aerialAce, facade, roundMove, focusBlast, brutalSwing, shadowClaw, payback, smartStrike, gigaImpact, stoneEdge, bulldoze, dragonTail, flashCannon, surf, darkPulse, bodySlam, stomp, smellingSalts, dragonRush, headSmash, superpower, uproar, thunderPunch, firePunch, icePunch, earthPower, icyWind, aquaTail, dragonPulse, snore, focusPunch, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

absol :: Pokemon
absol = Pokemon {
  pokemonIndex = 359,
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
  pokemonMoves = [confusion, feint, forcePalm, hiddenPower, highJumpKick, psyshock, psychic, shadowBall, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, rockSlide, poisonJab, dreamEater, firePunch, thunderPunch, icePunch, fakeOut, dynamicPunch, psychoCut, bulletPunch, drainPunch, secretPower, signalBeam, zenHeadbutt, snore, focusPunch],
  numHeals = baseNumHeals
}

wynaut :: Pokemon
wynaut = Pokemon {
  pokemonIndex = 360,
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
  pokemonMoves = [zenHeadbutt, firePunch, thunderPunch, icePunch, confusion, feint, forcePalm, hiddenPower, highJumpKick, psyshock, hyperBeam, psychic, shadowBall, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, energyBall, gigaImpact, rockSlide, poisonJab, dreamEater, fakeOut, dynamicPunch, psychoCut, bulletPunch, drainPunch, secretPower, signalBeam, snore, focusPunch],
  numHeals = baseNumHeals
}

snorunt :: Pokemon
snorunt = Pokemon {
  pokemonIndex = 361,
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
  pokemonMoves = [zenHeadbutt, firePunch, thunderPunch, icePunch, confusion, feint, forcePalm, hiddenPower, highJumpKick, psyshock, hyperBeam, psychic, shadowBall, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, energyBall, gigaImpact, rockSlide, poisonJab, dreamEater, fakeOut, dynamicPunch, psychoCut, bulletPunch, drainPunch, secretPower, signalBeam, snore, focusPunch],
  numHeals = baseNumHeals
}

glalie :: Pokemon
glalie = Pokemon {
  pokemonIndex = 362,
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
  pokemonMoves = [tackle, quickAttack, spark, thunderFang, bite, discharge, wildCharge, thunder, hiddenPower, thunderbolt, flamethrower, facade, thief, roundMove, chargeBeam, voltSwitch, snarl, crunch, headbutt, uproar, swift, iceFang, fireFang, shockWave, flameBurst, signalBeam, ironTail, snore],
  numHeals = baseNumHeals
}

spheal :: Pokemon
spheal = Pokemon {
  pokemonIndex = 363,
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
  pokemonMoves = [fireFang, tackle, quickAttack, spark, thunderFang, bite, discharge, wildCharge, thunder, hiddenPower, hyperBeam, thunderbolt, flamethrower, facade, thief, roundMove, overheat, chargeBeam, gigaImpact, voltSwitch, snarl, crunch, headbutt, uproar, swift, iceFang, shockWave, flameBurst, signalBeam, ironTail, snore],
  numHeals = baseNumHeals
}

sealeo :: Pokemon
sealeo = Pokemon {
  pokemonIndex = 364,
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
  pokemonMoves = [fireFang, tackle, quickAttack, spark, thunderFang, bite, discharge, wildCharge, thunder, hiddenPower, hyperBeam, thunderbolt, flamethrower, facade, thief, roundMove, overheat, chargeBeam, gigaImpact, voltSwitch, snarl, crunch, headbutt, uproar, swift, iceFang, shockWave, flameBurst, signalBeam, ironTail, snore],
  numHeals = baseNumHeals
}

walrein :: Pokemon
walrein = Pokemon {
  pokemonIndex = 365,
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
  pokemonMoves = [nuzzle, quickAttack, spark, swift, discharge, lastResort, thunder, hiddenPower, thunderbolt, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge, signalBeam, uproar, thunderPunch, electroweb, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

clamperl :: Pokemon
clamperl = Pokemon {
  pokemonIndex = 366,
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
  pokemonMoves = [nuzzle, quickAttack, spark, swift, discharge, thunder, hiddenPower, thunderbolt, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, wildCharge, signalBeam, uproar, thunderPunch, lastResort, electroweb, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

huntail :: Pokemon
huntail = Pokemon {
  pokemonIndex = 367,
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
  pokemonMoves = [tackle, quickAttack, struggleBug, signalBeam, zenHeadbutt, bugBuzz, playRough, doubleEdge, infestation, hiddenPower, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, aerialAce, facade, thief, roundMove, chargeBeam, acrobatics, uturn, dazzlingGleam, silverWind, dizzyPunch, bugBite, thunderPunch, icePunch, snore, gigaDrain, airCutter, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

gorebyss :: Pokemon
gorebyss = Pokemon {
  pokemonIndex = 368,
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
  pokemonMoves = [tackle, quickAttack, struggleBug, zenHeadbutt, bugBuzz, playRough, covet, infestation, hiddenPower, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, aerialAce, facade, thief, roundMove, chargeBeam, acrobatics, uturn, dazzlingGleam, silverWind, bugBite, thunderPunch, icePunch, snore, gigaDrain, airCutter, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

relicanth :: Pokemon
relicanth = Pokemon {
  pokemonIndex = 369,
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
  pokemonMoves = [absorb, poisonSting, megaDrain, magicalLeaf, gigaDrain, petalBlizzard, petalDance, venoshock, hiddenPower, solarBeam, shadowBall, sludgeBomb, facade, roundMove, energyBall, poisonJab, dazzlingGleam, pinMissile, razorLeaf, leafStorm, extrasensory, seedBomb, bulletSeed, covet, snore],
  numHeals = baseNumHeals
}

luvdisc :: Pokemon
luvdisc = Pokemon {
  pokemonIndex = 370,
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
  pokemonMoves = [pound, sludge, acidSpray, sludgeBomb, belch, gunkShot, venoshock, hiddenPower, iceBeam, solarBeam, shadowBall, sludgeWave, facade, roundMove, explosion, infestation, dreamEater, smog, mudSlap, seedBomb, thunderPunch, firePunch, icePunch, snore, gigaDrain, shockWave, waterPulse],
  numHeals = baseNumHeals
}

bagon :: Pokemon
bagon = Pokemon {
  pokemonIndex = 371,
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
  pokemonMoves = [bodySlam, gunkShot, pound, sludge, acidSpray, sludgeBomb, belch, venoshock, hiddenPower, iceBeam, hyperBeam, solarBeam, earthquake, shadowBall, sludgeWave, facade, roundMove, explosion, gigaImpact, bulldoze, infestation, dreamEater, smog, mudSlap, seedBomb, thunderPunch, firePunch, icePunch, snore, gigaDrain, shockWave, waterPulse],
  numHeals = baseNumHeals
}

shelgon :: Pokemon
shelgon = Pokemon {
  pokemonIndex = 372,
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
  pokemonMoves = [bite, rage, aquaJet, assurance, iceFang, poisonFang, crunch, takeDown, hiddenPower, iceBeam, blizzard, facade, thief, roundMove, scald, payback, surf, snarl, darkPulse, waterfall, hydroPump, doubleEdge, thrash, ancientPower, swift, brine, psychicFangs, bounce, uproar, icyWind, zenHeadbutt, snore, waterPulse],
  numHeals = baseNumHeals
}

salamence :: Pokemon
salamence = Pokemon {
  pokemonIndex = 373,
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
  pokemonMoves = [slash, nightSlash, feint, bite, rage, aquaJet, assurance, iceFang, poisonFang, crunch, skullBash, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, thief, roundMove, scald, payback, gigaImpact, bulldoze, poisonJab, surf, snarl, darkPulse, waterfall, hydroPump, doubleEdge, thrash, ancientPower, swift, brine, psychicFangs, bounce, uproar, icyWind, zenHeadbutt, snore, waterPulse, takeDown],
  numHeals = baseNumHeals
}

beldum :: Pokemon
beldum = Pokemon {
  pokemonIndex = 374,
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
  pokemonMoves = [slash, nightSlash, feint, bite, rage, aquaJet, assurance, iceFang, poisonFang, crunch, skullBash, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, thief, roundMove, scald, payback, gigaImpact, bulldoze, poisonJab, surf, snarl, darkPulse, waterfall, hydroPump, doubleEdge, thrash, ancientPower, swift, brine, psychicFangs, bounce, uproar, icyWind, zenHeadbutt, snore, waterPulse, takeDown],
  numHeals = baseNumHeals
}

metang :: Pokemon
metang = Pokemon {
  pokemonIndex = 375,
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
  pokemonMoves = [waterGun, rollout, whirlpool, astonish, waterPulse, brine, dive, bounce, hydroPump, hiddenPower, iceBeam, blizzard, earthquake, rockTomb, facade, roundMove, echoedVoice, scald, bulldoze, surf, waterfall, doubleEdge, thrash, snore, bodySlam, zenHeadbutt, clearSmog, icyWind, hyperVoice],
  numHeals = baseNumHeals
}

metagross :: Pokemon
metagross = Pokemon {
  pokemonIndex = 376,
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
  pokemonMoves = [waterGun, rollout, whirlpool, astonish, waterPulse, brine, dive, bounce, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, roundMove, echoedVoice, scald, gigaImpact, bulldoze, surf, waterfall, doubleEdge, thrash, snore, bodySlam, zenHeadbutt, clearSmog, ironHead, icyWind, hyperVoice],
  numHeals = baseNumHeals
}

regirock :: Pokemon
regirock = Pokemon {
  pokemonIndex = 377,
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
  pokemonMoves = [tackle, ember, flameBurst, lavaPlume, earthPower, takeDown, earthquake, flamethrower, doubleEdge, hiddenPower, fireBlast, rockTomb, facade, flameCharge, roundMove, echoedVoice, overheat, bulldoze, rockSlide, bodySlam, rollout, stomp, ancientPower, mudBomb, heatWave, ironHead, snore],
  numHeals = baseNumHeals
}

regice :: Pokemon
regice = Pokemon {
  pokemonIndex = 378,
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
  pokemonMoves = [rockSlide, tackle, ember, flameBurst, lavaPlume, earthPower, takeDown, earthquake, hiddenPower, hyperBeam, solarBeam, flamethrower, fireBlast, rockTomb, facade, flameCharge, roundMove, echoedVoice, overheat, explosion, gigaImpact, stoneEdge, bulldoze, flashCannon, bodySlam, rollout, stomp, ancientPower, mudBomb, heatWave, ironHead, snore, doubleEdge],
  numHeals = baseNumHeals
}

registeel :: Pokemon
registeel = Pokemon {
  pokemonIndex = 379,
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
  pokemonMoves = [rockSlide, tackle, ember, flameBurst, lavaPlume, earthPower, takeDown, earthquake, hiddenPower, hyperBeam, solarBeam, flamethrower, fireBlast, rockTomb, facade, flameCharge, roundMove, echoedVoice, overheat, explosion, gigaImpact, stoneEdge, bulldoze, flashCannon, bodySlam, rollout, stomp, ancientPower, mudBomb, heatWave, ironHead, snore, doubleEdge],
  numHeals = baseNumHeals
}

latias :: Pokemon
latias = Pokemon {
  pokemonIndex = 380,
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
  pokemonMoves = [ember, smog, rapidSpin, fireSpin, flameWheel, lavaPlume, bodySlam, flamethrower, heatWave, inferno, hiddenPower, hyperBeam, solarBeam, earthquake, sludgeBomb, fireBlast, rockTomb, facade, flameCharge, roundMove, overheat, explosion, gigaImpact, stoneEdge, bulldoze, rockSlide, skullBash, flameBurst, clearSmog, superpower, earthPower, ironTail, snore],
  numHeals = baseNumHeals
}

latios :: Pokemon
latios = Pokemon {
  pokemonIndex = 381,
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
  pokemonMoves = [psybeam, zenHeadbutt, powerGem, snore, psyshock, payback, psychic, bounce, hiddenPower, shadowBall, facade, thief, roundMove, chargeBeam, dreamEater, futureSight, extrasensory, covet, signalBeam, icyWind, ironTail, shockWave],
  numHeals = baseNumHeals
}

kyogre :: Pokemon
kyogre = Pokemon {
  pokemonIndex = 382,
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
  pokemonMoves = [belch, psybeam, zenHeadbutt, powerGem, snore, psyshock, payback, psychic, bounce, hiddenPower, hyperBeam, shadowBall, brickBreak, facade, thief, roundMove, focusBlast, energyBall, chargeBeam, gigaImpact, bulldoze, dreamEater, futureSight, extrasensory, covet, signalBeam, thunderPunch, firePunch, icePunch, icyWind, ironTail, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

groudon :: Pokemon
groudon = Pokemon {
  pokemonIndex = 383,
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
  pokemonMoves = [tackle, feintAttack, psybeam, dizzyPunch, suckerPunch, uproar, doubleEdge, thrash, hiddenPower, psychic, shadowBall, brickBreak, rockTomb, facade, thief, roundMove, rockSlide, dreamEater, wildCharge, smellingSalts, fakeOut, psychoCut, rapidSpin, icyWind, waterPulse, covet, thunderPunch, firePunch, icePunch, lastResort, zenHeadbutt, hyperVoice, snore, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

rayquaza :: Pokemon
rayquaza = Pokemon {
  pokemonIndex = 384,
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
  pokemonMoves = [bite, feintAttack, mudSlap, bulldoze, sandTomb, rockSlide, dig, crunch, earthPower, feint, earthquake, superpower, hyperBeam, hiddenPower, solarBeam, rockTomb, facade, roundMove, quickAttack, gust, furyCutter, mudShot, bugBite, signalBeam, snore, gigaDrain],
  numHeals = baseNumHeals
}

jirachi :: Pokemon
jirachi = Pokemon {
  pokemonIndex = 385,
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
  pokemonMoves = [dragonBreath, feintAttack, mudSlap, bulldoze, sandTomb, rockSlide, earthPower, bugBuzz, earthquake, uproar, hyperBeam, boomburst, hiddenPower, solarBeam, rockTomb, facade, roundMove, steelWing, fly, uturn, dracoMeteor, quickAttack, gust, furyCutter, mudShot, bugBite, signalBeam, superpower, dragonPulse, snore, heatWave, gigaDrain, airCutter, outrage, bite, dig, crunch, feint],
  numHeals = baseNumHeals
}

deoxys :: Pokemon
deoxys = Pokemon {
  pokemonIndex = 386,
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
  pokemonMoves = [dragonClaw, dragonBreath, feintAttack, mudSlap, bulldoze, sandTomb, rockSlide, earthPower, dragonTail, earthquake, uproar, hyperBeam, dragonRush, hiddenPower, solarBeam, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, steelWing, brutalSwing, gigaImpact, stoneEdge, fly, uturn, dracoMeteor, quickAttack, gust, furyCutter, mudShot, bugBite, signalBeam, thunderPunch, firePunch, superpower, dragonPulse, ironTail, snore, heatWave, gigaDrain, airCutter, outrage, bugBuzz, boomburst, bite, dig, crunch, feint],
  numHeals = baseNumHeals
}

turtwig :: Pokemon
turtwig = Pokemon {
  pokemonIndex = 387,
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
  pokemonMoves = [poisonSting, absorb, needleArm, feintAttack, payback, suckerPunch, pinMissile, energyBall, venoshock, hiddenPower, solarBeam, brickBreak, facade, roundMove, poisonJab, darkPulse, acid, dynamicPunch, smellingSalts, magicalLeaf, seedBomb, fellStinger, belch, thunderPunch, snore, gigaDrain, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

grotle :: Pokemon
grotle = Pokemon {
  pokemonIndex = 388,
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
  pokemonMoves = [revenge, poisonSting, absorb, needleArm, feintAttack, payback, suckerPunch, pinMissile, energyBall, venoshock, hiddenPower, hyperBeam, solarBeam, brickBreak, facade, roundMove, focusBlast, gigaImpact, poisonJab, darkPulse, acid, dynamicPunch, smellingSalts, magicalLeaf, seedBomb, fellStinger, belch, thunderPunch, foulPlay, superpower, snore, gigaDrain, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

torterra :: Pokemon
torterra = Pokemon {
  pokemonIndex = 389,
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
  pokemonMoves = [peck, astonish, furyAttack, disarmingVoice, roundMove, takeDown, dragonPulse, moonblast, hiddenPower, iceBeam, solarBeam, aerialAce, facade, thief, echoedVoice, steelWing, fly, dreamEater, dazzlingGleam, pursuit, rage, dragonRush, hyperVoice, uproar, snore, heatWave, skyAttack, airCutter, outrage],
  numHeals = baseNumHeals
}

chimchar :: Pokemon
chimchar = Pokemon {
  pokemonIndex = 390,
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
  pokemonMoves = [dragonBreath, skyAttack, pluck, peck, astonish, furyAttack, disarmingVoice, roundMove, takeDown, dragonPulse, moonblast, dragonClaw, hiddenPower, iceBeam, hyperBeam, solarBeam, earthquake, flamethrower, fireBlast, aerialAce, facade, thief, echoedVoice, steelWing, gigaImpact, fly, bulldoze, dreamEater, dazzlingGleam, dracoMeteor, pursuit, rage, dragonRush, hyperVoice, uproar, ironTail, snore, heatWave, airCutter, outrage],
  numHeals = baseNumHeals
}

monferno :: Pokemon
monferno = Pokemon {
  pokemonIndex = 391,
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
  pokemonMoves = [dragonBreath, skyAttack, pluck, peck, astonish, furyAttack, disarmingVoice, roundMove, takeDown, dragonPulse, moonblast, dragonClaw, hiddenPower, iceBeam, hyperBeam, solarBeam, earthquake, flamethrower, fireBlast, aerialAce, facade, thief, echoedVoice, steelWing, gigaImpact, fly, bulldoze, dreamEater, dazzlingGleam, dracoMeteor, pursuit, rage, dragonRush, hyperVoice, uproar, ironTail, snore, heatWave, airCutter, outrage],
  numHeals = baseNumHeals
}

infernape :: Pokemon
infernape = Pokemon {
  pokemonIndex = 392,
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
  pokemonMoves = [scratch, quickAttack, furyCutter, pursuit, slash, revenge, crushClaw, falseSwipe, xScissor, closeCombat, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, shadowClaw, payback, rockSlide, poisonJab, doubleKick, razorWind, furySwipes, nightSlash, metalClaw, doubleHit, ironTail, feint, thunderPunch, firePunch, icePunch, lastResort, icyWind, snore, knockOff, gigaDrain, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

piplup :: Pokemon
piplup = Pokemon {
  pokemonIndex = 393,
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
  pokemonMoves = [wrap, bite, lick, poisonTail, feint, venoshock, poisonFang, nightSlash, poisonJab, crunch, belch, hiddenPower, earthquake, sludgeWave, flamethrower, sludgeBomb, facade, thief, roundMove, brutalSwing, payback, bulldoze, xScissor, dragonTail, infestation, darkPulse, bodySlam, assurance, ironTail, aquaTail, bind, snore, knockOff, gigaDrain],
  numHeals = baseNumHeals
}

prinplup :: Pokemon
prinplup = Pokemon {
  pokemonIndex = 394,
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
  pokemonMoves = [powerGem, psyshock, moonblast, tackle, confusion, rockThrow, rockSlide, psychic, stoneEdge, futureSight, explosion, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, earthquake, shadowBall, rockTomb, facade, roundMove, chargeBeam, acrobatics, gigaImpact, bulldoze, dreamEater, signalBeam, ironHead, earthPower, icyWind, zenHeadbutt, snore],
  numHeals = baseNumHeals
}

empoleon :: Pokemon
empoleon = Pokemon {
  pokemonIndex = 395,
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
  pokemonMoves = [flareBlitz, tackle, confusion, rockThrow, fireSpin, rockSlide, psychic, stoneEdge, solarBeam, explosion, psyshock, hiddenPower, hyperBeam, smackDown, earthquake, shadowBall, flamethrower, fireBlast, rockTomb, facade, roundMove, overheat, chargeBeam, acrobatics, gigaImpact, bulldoze, dreamEater, signalBeam, ironHead, earthPower, zenHeadbutt, snore, heatWave],
  numHeals = baseNumHeals
}

starly :: Pokemon
starly = Pokemon {
  pokemonIndex = 396,
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
  pokemonMoves = [mudSlap, waterGun, mudBomb, waterPulse, snore, aquaTail, earthquake, muddyWater, futureSight, hiddenPower, iceBeam, blizzard, rockTomb, facade, roundMove, scald, bulldoze, surf, waterfall, thrash, whirlpool, spark, hydroPump, takeDown, earthPower, mudShot, bounce, icyWind],
  numHeals = baseNumHeals
}

staravia :: Pokemon
staravia = Pokemon {
  pokemonIndex = 397,
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
  pokemonMoves = [thrash, belch, zenHeadbutt, mudSlap, waterGun, mudBomb, waterPulse, snore, aquaTail, earthquake, muddyWater, futureSight, hiddenPower, iceBeam, blizzard, hyperBeam, rockTomb, facade, roundMove, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, surf, waterfall, whirlpool, spark, hydroPump, takeDown, earthPower, mudShot, bounce, icyWind],
  numHeals = baseNumHeals
}

staraptor :: Pokemon
staraptor = Pokemon {
  pokemonIndex = 398,
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
  pokemonMoves = [bubble, viceGrip, bubbleBeam, doubleHit, knockOff, nightSlash, razorShell, crunch, crabhammer, hiddenPower, iceBeam, blizzard, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, falseSwipe, scald, payback, rockSlide, xScissor, surf, waterfall, bodySlam, ancientPower, superpower, metalClaw, chipAway, doubleEdge, aquaJet, icyWind, snore, waterPulse],
  numHeals = baseNumHeals
}

bidoof :: Pokemon
bidoof = Pokemon {
  pokemonIndex = 399,
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
  pokemonMoves = [swift, bubble, viceGrip, bubbleBeam, doubleHit, knockOff, nightSlash, razorShell, crunch, crabhammer, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, sludgeWave, sludgeBomb, rockTomb, aerialAce, facade, roundMove, falseSwipe, scald, payback, gigaImpact, rockSlide, xScissor, surf, snarl, darkPulse, waterfall, bodySlam, ancientPower, superpower, metalClaw, chipAway, doubleEdge, aquaJet, icyWind, snore, waterPulse],
  numHeals = baseNumHeals
}

bibarel :: Pokemon
bibarel = Pokemon {
  pokemonIndex = 400,
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
  pokemonMoves = [confusion, rapidSpin, mudSlap, rockTomb, psybeam, ancientPower, selfDestruct, extrasensory, earthPower, explosion, psyshock, hiddenPower, iceBeam, solarBeam, smackDown, earthquake, psychic, shadowBall, facade, roundMove, chargeBeam, bulldoze, rockSlide, dreamEater, dazzlingGleam, signalBeam, drillRun, zenHeadbutt, snore],
  numHeals = baseNumHeals
}

kricketot :: Pokemon
kricketot = Pokemon {
  pokemonIndex = 401,
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
  pokemonMoves = [hyperBeam, confusion, rapidSpin, mudSlap, rockTomb, psybeam, ancientPower, selfDestruct, extrasensory, earthPower, explosion, psyshock, hiddenPower, iceBeam, solarBeam, smackDown, earthquake, psychic, shadowBall, facade, roundMove, chargeBeam, gigaImpact, stoneEdge, bulldoze, rockSlide, dreamEater, dazzlingGleam, signalBeam, drillRun, zenHeadbutt, snore],
  numHeals = baseNumHeals
}

kricketune :: Pokemon
kricketune = Pokemon {
  pokemonIndex = 402,
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
  pokemonMoves = [astonish, constrict, acid, ancientPower, brine, gigaDrain, energyBall, hiddenPower, solarBeam, smackDown, sludgeBomb, rockTomb, facade, roundMove, rockSlide, infestation, megaDrain, seedBomb, earthPower, bind, snore],
  numHeals = baseNumHeals
}

shinx :: Pokemon
shinx = Pokemon {
  pokemonIndex = 403,
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
  pokemonMoves = [astonish, constrict, acid, ancientPower, brine, gigaDrain, energyBall, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, roundMove, gigaImpact, stoneEdge, bulldoze, rockSlide, infestation, megaDrain, seedBomb, earthPower, bind, snore],
  numHeals = baseNumHeals
}

luxio :: Pokemon
luxio = Pokemon {
  pokemonIndex = 404,
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
  pokemonMoves = [scratch, waterGun, furyCutter, smackDown, metalClaw, ancientPower, bugBite, brine, slash, crushClaw, xScissor, rockBlast, hiddenPower, brickBreak, rockTomb, aerialAce, facade, roundMove, falseSwipe, rockSlide, rapidSpin, knockOff, crossPoison, waterPulse, aquaJet, earthPower, snore],
  numHeals = baseNumHeals
}

luxray :: Pokemon
luxray = Pokemon {
  pokemonIndex = 405,
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
  pokemonMoves = [scratch, waterGun, furyCutter, smackDown, metalClaw, ancientPower, slash, brine, crushClaw, xScissor, rockBlast, hiddenPower, hyperBeam, earthquake, brickBreak, rockTomb, aerialAce, facade, roundMove, falseSwipe, brutalSwing, gigaImpact, stoneEdge, bulldoze, rockSlide, flashCannon, rapidSpin, knockOff, crossPoison, waterPulse, aquaJet, bugBite, earthPower, superpower, aquaTail, ironTail, snore],
  numHeals = baseNumHeals
}

budew :: Pokemon
budew = Pokemon {
  pokemonIndex = 406,
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
  pokemonMoves = [tackle, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, surf, waterfall, dragonBreath, brine, ironTail, dragonPulse, icyWind, snore, waterPulse],
  numHeals = baseNumHeals
}

roserade :: Pokemon
roserade = Pokemon {
  pokemonIndex = 407,
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
  pokemonMoves = [waterPulse, wrap, waterGun, disarmingVoice, twister, dragonTail, aquaTail, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, scald, brutalSwing, gigaImpact, bulldoze, surf, waterfall, dragonBreath, brine, ironTail, dragonPulse, ironHead, icyWind, bind, snore, tackle],
  numHeals = baseNumHeals
}

cranidos :: Pokemon
cranidos = Pokemon {
  pokemonIndex = 408,
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
  pokemonMoves = [tackle, waterGun, ember, powderSnow, headbutt, weatherBall, hydroPump, fireBlast, blizzard, hurricane, hiddenPower, iceBeam, solarBeam, thunderbolt, thunder, shadowBall, flamethrower, facade, thief, roundMove, energyBall, scald, futureSight, ominousWind, hex, clearSmog, lastResort, icyWind, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

rampardos :: Pokemon
rampardos = Pokemon {
  pokemonIndex = 409,
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
  pokemonMoves = [tackle, waterGun, ember, powderSnow, headbutt, weatherBall, hydroPump, fireBlast, blizzard, hurricane, hiddenPower, iceBeam, solarBeam, thunderbolt, thunder, shadowBall, flamethrower, facade, thief, roundMove, energyBall, scald, futureSight, ominousWind, hex, clearSmog, lastResort, icyWind, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

shieldon :: Pokemon
shieldon = Pokemon {
  pokemonIndex = 410,
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
  pokemonMoves = [tackle, waterGun, ember, powderSnow, headbutt, weatherBall, hydroPump, fireBlast, blizzard, hurricane, hiddenPower, iceBeam, solarBeam, thunderbolt, thunder, shadowBall, flamethrower, facade, thief, roundMove, energyBall, scald, futureSight, ominousWind, hex, clearSmog, lastResort, icyWind, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

bastiodon :: Pokemon
bastiodon = Pokemon {
  pokemonIndex = 411,
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
  pokemonMoves = [tackle, waterGun, ember, powderSnow, headbutt, weatherBall, hydroPump, fireBlast, blizzard, hurricane, hiddenPower, iceBeam, solarBeam, thunderbolt, thunder, shadowBall, flamethrower, facade, thief, roundMove, energyBall, scald, futureSight, ominousWind, hex, clearSmog, lastResort, icyWind, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

burmy :: Pokemon
burmy = Pokemon {
  pokemonIndex = 412,
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
  pokemonMoves = [thief, astonish, lick, scratch, bind, shadowSneak, feint, furySwipes, feintAttack, psybeam, ancientPower, slash, shadowClaw, suckerPunch, synchronoise, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, chargeBeam, rockSlide, fakeOut, dizzyPunch, foulPlay, thunderPunch, firePunch, icePunch, lastResort, icyWind, aquaTail, ironTail, snore, knockOff, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

wormadam :: Pokemon
wormadam = Pokemon {
  pokemonIndex = 413,
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
  pokemonMoves = [knockOff, shadowSneak, feintAttack, hex, shadowBall, suckerPunch, phantomForce, hiddenPower, thunderbolt, thunder, psychic, facade, thief, roundMove, chargeBeam, payback, dreamEater, darkPulse, dazzlingGleam, astonish, pursuit, ominousWind, gunkShot, foulPlay, icyWind, snore, shockWave],
  numHeals = baseNumHeals
}

mothim :: Pokemon
mothim = Pokemon {
  pokemonIndex = 414,
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
  pokemonMoves = [phantomForce, knockOff, shadowSneak, feintAttack, hex, shadowBall, suckerPunch, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, facade, thief, roundMove, chargeBeam, shadowClaw, payback, gigaImpact, infestation, dreamEater, darkPulse, dazzlingGleam, astonish, pursuit, ominousWind, gunkShot, foulPlay, icyWind, snore, shockWave],
  numHeals = baseNumHeals
}

combee :: Pokemon
combee = Pokemon {
  pokemonIndex = 415,
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
  pokemonMoves = [phantomForce, knockOff, shadowSneak, feintAttack, hex, shadowBall, suckerPunch, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, facade, thief, roundMove, chargeBeam, shadowClaw, payback, gigaImpact, infestation, dreamEater, darkPulse, dazzlingGleam, astonish, pursuit, ominousWind, gunkShot, foulPlay, icyWind, snore, shockWave],
  numHeals = baseNumHeals
}

vespiquen :: Pokemon
vespiquen = Pokemon {
  pokemonIndex = 416,
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
  pokemonMoves = [astonish, shadowSneak, pursuit, hex, shadowBall, payback, futureSight, hiddenPower, iceBeam, blizzard, psychic, facade, thief, roundMove, chargeBeam, infestation, dreamEater, darkPulse, feintAttack, ominousWind, icyWind, snore],
  numHeals = baseNumHeals
}

pachirisu :: Pokemon
pachirisu = Pokemon {
  pokemonIndex = 417,
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
  pokemonMoves = [shadowPunch, futureSight, firePunch, icePunch, thunderPunch, bind, astonish, shadowSneak, pursuit, hex, shadowBall, payback, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, brickBreak, rockTomb, facade, thief, roundMove, chargeBeam, gigaImpact, bulldoze, rockSlide, infestation, dreamEater, darkPulse, feintAttack, ominousWind, icyWind, snore, focusPunch],
  numHeals = baseNumHeals
}

buizel :: Pokemon
buizel = Pokemon {
  pokemonIndex = 418,
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
  pokemonMoves = [leafStorm, gust, razorLeaf, stomp, magicalLeaf, leafTornado, airSlash, bodySlam, solarBeam, hiddenPower, hyperBeam, earthquake, aerialAce, facade, roundMove, steelWing, energyBall, brutalSwing, gigaImpact, fly, bulldoze, headbutt, slam, razorWind, leafBlade, bulletSeed, seedBomb, dragonPulse, snore, gigaDrain, airCutter, outrage],
  numHeals = baseNumHeals
}

floatzel :: Pokemon
floatzel = Pokemon {
  pokemonIndex = 419,
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
  pokemonMoves = [synchronoise, wrap, astonish, confusion, takeDown, extrasensory, uproar, doubleEdge, psyshock, hiddenPower, psychic, shadowBall, facade, roundMove, echoedVoice, energyBall, chargeBeam, dreamEater, dazzlingGleam, futureSight, storedPower, signalBeam, lastResort, icyWind, zenHeadbutt, hyperVoice, bind, snore, knockOff, shockWave],
  numHeals = baseNumHeals
}

cherubi :: Pokemon
cherubi = Pokemon {
  pokemonIndex = 420,
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
  pokemonMoves = [futureSight, scratch, feint, quickAttack, pursuit, bite, slash, nightSlash, psychoCut, suckerPunch, razorWind, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, falseSwipe, chargeBeam, brutalSwing, shadowClaw, payback, gigaImpact, stoneEdge, rockSlide, xScissor, dreamEater, snarl, darkPulse, feintAttack, doubleEdge, zenHeadbutt, assurance, megahorn, hex, playRough, bounce, foulPlay, superpower, icyWind, ironTail, snore, knockOff, shockWave, waterPulse],
  numHeals = baseNumHeals
}

cherrim :: Pokemon
cherrim = Pokemon {
  pokemonIndex = 421,
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
  pokemonMoves = [futureSight, scratch, feint, quickAttack, pursuit, bite, slash, nightSlash, psychoCut, suckerPunch, razorWind, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, shadowBall, flamethrower, fireBlast, rockTomb, aerialAce, facade, thief, roundMove, echoedVoice, falseSwipe, chargeBeam, brutalSwing, shadowClaw, payback, gigaImpact, stoneEdge, rockSlide, xScissor, dreamEater, snarl, darkPulse, feintAttack, doubleEdge, zenHeadbutt, assurance, megahorn, hex, playRough, bounce, foulPlay, superpower, icyWind, ironTail, snore, knockOff, shockWave, waterPulse],
  numHeals = baseNumHeals
}

gastrodon :: Pokemon
gastrodon = Pokemon {
  pokemonIndex = 423,
  pokemonName = "Gastrodon",
  health = baseHealth,
  level = baseLevel,
  pokemonHP = 111,
  pokemonType1 = Water,
  pokemonType2 = Ground,
  attack = 83,
  defence = 68,
  specialAttack = 92,
  specialDefence = 82,
  pokemonMoves = [powderSnow, iceShard, icyWind, bite, iceFang, headbutt, frostBreath, crunch, blizzard, hiddenPower, iceBeam, shadowBall, facade, roundMove, rollout, weatherBall, avalanche, hex, snore, waterPulse],
  numHeals = baseNumHeals
}

ambipom :: Pokemon
ambipom = Pokemon {
  pokemonIndex = 424,
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
  pokemonMoves = [freezeDry, powderSnow, iceShard, icyWind, bite, iceFang, headbutt, frostBreath, crunch, blizzard, hiddenPower, iceBeam, hyperBeam, earthquake, shadowBall, facade, roundMove, explosion, payback, gigaImpact, bulldoze, darkPulse, rollout, weatherBall, avalanche, hex, signalBeam, ironHead, snore, waterPulse],
  numHeals = baseNumHeals
}

drifloon :: Pokemon
drifloon = Pokemon {
  pokemonIndex = 425,
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
  pokemonMoves = [freezeDry, powderSnow, iceShard, icyWind, bite, iceFang, headbutt, frostBreath, crunch, blizzard, hiddenPower, iceBeam, hyperBeam, earthquake, shadowBall, facade, roundMove, explosion, payback, gigaImpact, bulldoze, darkPulse, rollout, weatherBall, avalanche, hex, signalBeam, ironHead, snore, waterPulse],
  numHeals = baseNumHeals
}

drifblim :: Pokemon
drifblim = Pokemon {
  pokemonIndex = 426,
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
  pokemonMoves = [powderSnow, waterGun, rollout, iceBall, brine, auroraBeam, bodySlam, snore, blizzard, hiddenPower, iceBeam, earthquake, rockTomb, facade, roundMove, echoedVoice, bulldoze, frostBreath, rockSlide, surf, waterfall, signalBeam, waterPulse, icyWind, aquaTail, ironTail],
  numHeals = baseNumHeals
}

buneary :: Pokemon
buneary = Pokemon {
  pokemonIndex = 427,
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
  pokemonMoves = [powderSnow, waterGun, rollout, iceBall, brine, auroraBeam, bodySlam, snore, blizzard, hiddenPower, iceBeam, earthquake, rockTomb, facade, roundMove, echoedVoice, bulldoze, frostBreath, rockSlide, surf, waterfall, signalBeam, waterPulse, icyWind, aquaTail, ironTail],
  numHeals = baseNumHeals
}

lopunny :: Pokemon
lopunny = Pokemon {
  pokemonIndex = 428,
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
  pokemonMoves = [iceFang, crunch, powderSnow, waterGun, rollout, iceBall, brine, auroraBeam, bodySlam, snore, blizzard, hiddenPower, iceBeam, hyperBeam, earthquake, rockTomb, facade, roundMove, echoedVoice, gigaImpact, bulldoze, frostBreath, rockSlide, surf, waterfall, signalBeam, waterPulse, ironHead, icyWind, aquaTail, ironTail],
  numHeals = baseNumHeals
}

mismagius :: Pokemon
mismagius = Pokemon {
  pokemonIndex = 429,
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
  pokemonMoves = [clamp, waterGun, whirlpool, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, surf, waterfall, bodySlam, muddyWater, waterPulse, brine, icyWind, snore],
  numHeals = baseNumHeals
}

honchkrow :: Pokemon
honchkrow = Pokemon {
  pokemonIndex = 430,
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
  pokemonMoves = [whirlpool, bite, feintAttack, waterPulse, iceFang, brine, suckerPunch, dive, crunch, aquaTail, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, rockTomb, facade, roundMove, scald, gigaImpact, infestation, surf, waterfall, bodySlam, muddyWater, bounce, icyWind, bind, snore, clamp, waterGun],
  numHeals = baseNumHeals
}

glameow :: Pokemon
glameow = Pokemon {
  pokemonIndex = 431,
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
  pokemonMoves = [whirlpool, confusion, drainingKiss, waterPulse, dive, psychic, aquaTail, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, shadowBall, facade, roundMove, scald, gigaImpact, infestation, surf, waterfall, bodySlam, muddyWater, brine, signalBeam, bounce, icyWind, bind, snore, clamp, waterGun],
  numHeals = baseNumHeals
}

purugly :: Pokemon
purugly = Pokemon {
  pokemonIndex = 432,
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
  pokemonMoves = [headSmash, tackle, waterGun, rockTomb, ancientPower, dive, takeDown, hydroPump, doubleEdge, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, earthquake, facade, roundMove, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, surf, waterfall, skullBash, aquaTail, snore, mudSlap, muddyWater, mudShot, brine, zenHeadbutt, bounce, earthPower, icyWind, waterPulse],
  numHeals = baseNumHeals
}

chingling :: Pokemon
chingling = Pokemon {
  pokemonIndex = 433,
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
  pokemonMoves = [tackle, waterGun, drainingKiss, waterPulse, heartStamp, takeDown, hydroPump, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, surf, waterfall, aquaJet, brine, bounce, icyWind, snore],
  numHeals = baseNumHeals
}

stunky :: Pokemon
stunky = Pokemon {
  pokemonIndex = 434,
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
  pokemonMoves = [rage, ember, bite, dragonBreath, headbutt, crunch, dragonClaw, zenHeadbutt, flamethrower, doubleEdge, hiddenPower, brickBreak, fireBlast, rockTomb, aerialAce, facade, roundMove, shadowClaw, rockSlide, dracoMeteor, hydroPump, thrash, twister, fireFang, dragonRush, dragonPulse, hyperVoice, snore, outrage],
  numHeals = baseNumHeals
}

skuntank :: Pokemon
skuntank = Pokemon {
  pokemonIndex = 435,
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
  pokemonMoves = [rage, ember, bite, dragonBreath, headbutt, crunch, dragonClaw, zenHeadbutt, flamethrower, doubleEdge, hiddenPower, brickBreak, fireBlast, rockTomb, aerialAce, facade, roundMove, shadowClaw, rockSlide, dracoMeteor, hydroPump, thrash, twister, fireFang, dragonRush, dragonPulse, hyperVoice, snore, outrage],
  numHeals = baseNumHeals
}

bronzor :: Pokemon
bronzor = Pokemon {
  pokemonIndex = 436,
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
  pokemonMoves = [fly, dragonTail, fireFang, thunderFang, rage, ember, bite, dragonBreath, headbutt, crunch, dragonClaw, zenHeadbutt, flamethrower, doubleEdge, hiddenPower, hyperBeam, earthquake, brickBreak, fireBlast, rockTomb, aerialAce, facade, roundMove, steelWing, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dracoMeteor, hydroPump, thrash, twister, dragonRush, dragonPulse, aquaTail, hyperVoice, ironTail, snore, heatWave, airCutter, outrage],
  numHeals = baseNumHeals
}

bronzong :: Pokemon
bronzong = Pokemon {
  pokemonIndex = 437,
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
  pokemonMoves = [fly, dragonTail, fireFang, thunderFang, rage, ember, bite, dragonBreath, headbutt, crunch, dragonClaw, zenHeadbutt, flamethrower, doubleEdge, hiddenPower, hyperBeam, earthquake, brickBreak, fireBlast, rockTomb, aerialAce, facade, roundMove, steelWing, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dracoMeteor, hydroPump, thrash, twister, dragonRush, dragonPulse, aquaTail, hyperVoice, ironTail, snore, heatWave, airCutter, outrage],
  numHeals = baseNumHeals
}

bonsly :: Pokemon
bonsly = Pokemon {
  pokemonIndex = 438,
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
  pokemonMoves = [takeDown, ironHead, zenHeadbutt],
  numHeals = baseNumHeals
}

mime :: Pokemon
mime = Pokemon {
  pokemonIndex = 439,
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
  pokemonMoves = [confusion, metalClaw, takeDown, pursuit, bulletPunch, zenHeadbutt, psychic, meteorMash, hyperBeam, psyshock, hiddenPower, earthquake, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, explosion, bulldoze, rockSlide, flashCannon, signalBeam, ironHead, thunderPunch, icePunch, icyWind, snore],
  numHeals = baseNumHeals
}

happiny :: Pokemon
happiny = Pokemon {
  pokemonIndex = 440,
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
  pokemonMoves = [hammerArm, confusion, metalClaw, takeDown, pursuit, bulletPunch, zenHeadbutt, psychic, meteorMash, hyperBeam, psyshock, hiddenPower, earthquake, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, explosion, gigaImpact, bulldoze, rockSlide, flashCannon, signalBeam, ironHead, thunderPunch, icePunch, icyWind, snore],
  numHeals = baseNumHeals
}

chatot :: Pokemon
chatot = Pokemon {
  pokemonIndex = 441,
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
  pokemonMoves = [hammerArm, confusion, metalClaw, takeDown, pursuit, bulletPunch, zenHeadbutt, psychic, meteorMash, hyperBeam, psyshock, hiddenPower, earthquake, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, explosion, gigaImpact, bulldoze, rockSlide, flashCannon, signalBeam, ironHead, thunderPunch, icePunch, icyWind, snore],
  numHeals = baseNumHeals
}

spiritomb :: Pokemon
spiritomb = Pokemon {
  pokemonIndex = 442,
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
  pokemonMoves = [explosion, stomp, rockThrow, chargeBeam, bulldoze, ancientPower, stoneEdge, hammerArm, zapCannon, superpower, hyperBeam, hiddenPower, smackDown, thunderbolt, thunder, earthquake, brickBreak, rockTomb, facade, roundMove, focusBlast, gigaImpact, rockSlide, ironHead, thunderPunch, firePunch, icePunch, earthPower, snore, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

gible :: Pokemon
gible = Pokemon {
  pokemonIndex = 443,
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
  pokemonMoves = [explosion, stomp, icyWind, chargeBeam, bulldoze, ancientPower, iceBeam, hammerArm, zapCannon, superpower, hyperBeam, hiddenPower, blizzard, thunderbolt, thunder, earthquake, brickBreak, rockTomb, facade, roundMove, focusBlast, gigaImpact, frostBreath, rockSlide, flashCannon, signalBeam, ironHead, thunderPunch, icePunch, snore, focusPunch, shockWave],
  numHeals = baseNumHeals
}

gabite :: Pokemon
gabite = Pokemon {
  pokemonIndex = 444,
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
  pokemonMoves = [explosion, stomp, metalClaw, chargeBeam, bulldoze, ancientPower, ironHead, flashCannon, hammerArm, zapCannon, superpower, hyperBeam, hiddenPower, thunderbolt, thunder, earthquake, brickBreak, rockTomb, aerialAce, facade, roundMove, focusBlast, shadowClaw, gigaImpact, rockSlide, thunderPunch, icePunch, snore, focusPunch, shockWave],
  numHeals = baseNumHeals
}

garchomp :: Pokemon
garchomp = Pokemon {
  pokemonIndex = 445,
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
  pokemonMoves = [storedPower, dragonBreath, mistBall, zenHeadbutt, psychic, dragonPulse, dragonClaw, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, aerialAce, facade, roundMove, steelWing, energyBall, chargeBeam, shadowClaw, gigaImpact, fly, bulldoze, dreamEater, surf, waterfall, dracoMeteor, covet, lastResort, icyWind, snore, airCutter, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

munchlax :: Pokemon
munchlax = Pokemon {
  pokemonIndex = 446,
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
  pokemonMoves = [storedPower, dragonBreath, mistBall, zenHeadbutt, psychic, dragonPulse, dragonClaw, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, aerialAce, facade, roundMove, steelWing, energyBall, chargeBeam, shadowClaw, gigaImpact, fly, bulldoze, dreamEater, surf, waterfall, dracoMeteor, covet, lastResort, icyWind, snore, airCutter, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

riolu :: Pokemon
riolu = Pokemon {
  pokemonIndex = 447,
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
  pokemonMoves = [storedPower, dragonBreath, lusterPurge, zenHeadbutt, psychic, dragonPulse, dragonClaw, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, aerialAce, facade, roundMove, steelWing, energyBall, chargeBeam, shadowClaw, gigaImpact, fly, bulldoze, dreamEater, surf, waterfall, dracoMeteor, lastResort, icyWind, snore, airCutter, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

lucario :: Pokemon
lucario = Pokemon {
  pokemonIndex = 448,
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
  pokemonMoves = [storedPower, dragonBreath, lusterPurge, zenHeadbutt, psychic, dragonPulse, dragonClaw, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, aerialAce, facade, roundMove, steelWing, energyBall, chargeBeam, shadowClaw, gigaImpact, fly, bulldoze, dreamEater, surf, waterfall, dracoMeteor, lastResort, icyWind, snore, airCutter, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

hippopotas :: Pokemon
hippopotas = Pokemon {
  pokemonIndex = 449,
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
  pokemonMoves = [ancientPower, waterPulse, aquaTail, bodySlam, iceBeam, originPulse, muddyWater, hydroPump, doubleEdge, hiddenPower, blizzard, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, rockTomb, facade, roundMove, scald, gigaImpact, bulldoze, rockSlide, surf, waterfall, signalBeam, ironHead, uproar, icyWind, snore, shockWave],
  numHeals = baseNumHeals
}

hippowdon :: Pokemon
hippowdon = Pokemon {
  pokemonIndex = 450,
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
  pokemonMoves = [ancientPower, waterPulse, aquaTail, bodySlam, iceBeam, originPulse, muddyWater, hydroPump, doubleEdge, hiddenPower, blizzard, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, rockTomb, facade, roundMove, scald, gigaImpact, bulldoze, rockSlide, surf, waterfall, signalBeam, ironHead, uproar, icyWind, snore, shockWave],
  numHeals = baseNumHeals
}

skorupi :: Pokemon
skorupi = Pokemon {
  pokemonIndex = 451,
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
  pokemonMoves = [ancientPower, mudShot, earthPower, lavaPlume, earthquake, precipiceBlades, solarBeam, fireBlast, hammerArm, dragonClaw, hiddenPower, hyperBeam, smackDown, thunderbolt, thunder, brickBreak, flamethrower, rockTomb, aerialAce, facade, roundMove, overheat, focusBlast, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, ironHead, uproar, thunderPunch, firePunch, dragonPulse, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

drapion :: Pokemon
drapion = Pokemon {
  pokemonIndex = 452,
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
  pokemonMoves = [ancientPower, mudShot, earthPower, lavaPlume, earthquake, precipiceBlades, solarBeam, fireBlast, hammerArm, dragonClaw, hiddenPower, hyperBeam, smackDown, thunderbolt, thunder, brickBreak, flamethrower, rockTomb, aerialAce, facade, roundMove, overheat, focusBlast, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, ironHead, uproar, thunderPunch, firePunch, dragonPulse, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

croagunk :: Pokemon
croagunk = Pokemon {
  pokemonIndex = 453,
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
  pokemonMoves = [twister, ancientPower, crunch, airSlash, extremeSpeed, dragonPulse, fly, hyperVoice, outrage, hyperBeam, dragonClaw, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, echoedVoice, overheat, focusBlast, energyBall, skyDrop, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, surf, waterfall, dracoMeteor, dragonAscent, ironHead, uproar, earthPower, icyWind, aquaTail, ironTail, bind, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

toxicroak :: Pokemon
toxicroak = Pokemon {
  pokemonIndex = 454,
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
  pokemonMoves = [twister, ancientPower, crunch, airSlash, extremeSpeed, dragonPulse, fly, hyperVoice, outrage, hyperBeam, dragonClaw, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, echoedVoice, overheat, focusBlast, energyBall, skyDrop, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, surf, waterfall, dracoMeteor, dragonAscent, ironHead, uproar, earthPower, icyWind, aquaTail, ironTail, bind, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

carnivine :: Pokemon
carnivine = Pokemon {
  pokemonIndex = 455,
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
  pokemonMoves = [confusion, swift, psychic, zenHeadbutt, doubleEdge, futureSight, lastResort, doomDesire, psyshock, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, aerialAce, facade, roundMove, energyBall, chargeBeam, gigaImpact, dreamEater, uturn, flashCannon, dazzlingGleam, signalBeam, ironHead, uproar, thunderPunch, firePunch, icePunch, icyWind, snore, drainPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

finneon :: Pokemon
finneon = Pokemon {
  pokemonIndex = 456,
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
  pokemonMoves = [wrap, knockOff, pursuit, psychic, zenHeadbutt, psychoBoost, hyperBeam, psyshock, hiddenPower, iceBeam, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, rockSlide, poisonJab, dreamEater, flashCannon, darkPulse, signalBeam, thunderPunch, firePunch, icePunch, icyWind, bind, snore, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

lumineon :: Pokemon
lumineon = Pokemon {
  pokemonIndex = 457,
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
  pokemonMoves = [wrap, pursuit, psychic, superpower, zenHeadbutt, zapCannon, psychoBoost, hyperBeam, psyshock, hiddenPower, iceBeam, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, rockSlide, poisonJab, dreamEater, flashCannon, darkPulse, signalBeam, bind, snore, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

mantyke :: Pokemon
mantyke = Pokemon {
  pokemonIndex = 458,
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
  pokemonMoves = [wrap, knockOff, psychic, zenHeadbutt, psychoBoost, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, rockSlide, poisonJab, dreamEater, flashCannon, darkPulse, signalBeam, bind, snore, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

snover :: Pokemon
snover = Pokemon {
  pokemonIndex = 459,
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
  pokemonMoves = [wrap, knockOff, pursuit, psychic, swift, zenHeadbutt, psychoBoost, extremeSpeed, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, rockTomb, aerialAce, facade, lowSweep, roundMove, focusBlast, energyBall, chargeBeam, brutalSwing, gigaImpact, rockSlide, poisonJab, dreamEater, flashCannon, darkPulse, signalBeam, thunderPunch, firePunch, icePunch, bind, snore, drainPunch, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

abomasnow :: Pokemon
abomasnow = Pokemon {
  pokemonIndex = 460,
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
  pokemonMoves = [tackle, absorb, razorLeaf, bite, megaDrain, crunch, gigaDrain, leafStorm, hiddenPower, solarBeam, facade, roundMove, energyBall, frenzyPlant, bodySlam, doubleEdge, sandTomb, seedBomb, thrash, superpower, earthPower, ironTail, snore],
  numHeals = baseNumHeals
}

weavile :: Pokemon
weavile = Pokemon {
  pokemonIndex = 461,
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
  pokemonMoves = [tackle, absorb, razorLeaf, bite, megaDrain, crunch, gigaDrain, leafStorm, hiddenPower, solarBeam, facade, roundMove, energyBall, frenzyPlant, bodySlam, doubleEdge, sandTomb, seedBomb, thrash, superpower, earthPower, ironTail, snore],
  numHeals = baseNumHeals
}

magnezone :: Pokemon
magnezone = Pokemon {
  pokemonIndex = 462,
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
  pokemonMoves = [earthquake, woodHammer, tackle, absorb, razorLeaf, bite, megaDrain, crunch, gigaDrain, leafStorm, hiddenPower, hyperBeam, solarBeam, rockTomb, facade, roundMove, energyBall, gigaImpact, stoneEdge, bulldoze, rockSlide, frenzyPlant, grassPledge, bodySlam, doubleEdge, sandTomb, seedBomb, thrash, superpower, earthPower, ironHead, ironTail, snore, outrage],
  numHeals = baseNumHeals
}

lickilicky :: Pokemon
lickilicky = Pokemon {
  pokemonIndex = 463,
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
  pokemonMoves = [scratch, ember, furySwipes, flameWheel, facade, fireSpin, acrobatics, flamethrower, hiddenPower, brickBreak, fireBlast, aerialAce, flameCharge, lowSweep, roundMove, overheat, shadowClaw, uturn, blastBurn, firePunch, thunderPunch, doubleKick, heatWave, fakeOut, blazeKick, focusPunch, submission, covet, gunkShot, uproar, ironTail, snore],
  numHeals = baseNumHeals
}

rhyperior :: Pokemon
rhyperior = Pokemon {
  pokemonIndex = 464,
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
  pokemonMoves = [machPunch, scratch, ember, furySwipes, flameWheel, feint, closeCombat, fireSpin, acrobatics, flareBlitz, hiddenPower, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, lowSweep, roundMove, overheat, focusBlast, shadowClaw, rockSlide, poisonJab, uturn, blastBurn, firePunch, thunderPunch, doubleKick, heatWave, fakeOut, blazeKick, focusPunch, submission, covet, dualChop, gunkShot, ironTail, snore],
  numHeals = baseNumHeals
}

tangrowth :: Pokemon
tangrowth = Pokemon {
  pokemonIndex = 465,
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
  pokemonMoves = [closeCombat, machPunch, flareBlitz, scratch, ember, furySwipes, flameWheel, feint, fireSpin, acrobatics, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, flameCharge, lowSweep, roundMove, overheat, focusBlast, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, uturn, blastBurn, firePledge, firePunch, thunderPunch, doubleKick, heatWave, fakeOut, blazeKick, focusPunch, submission, covet, dualChop, gunkShot, ironTail, snore],
  numHeals = baseNumHeals
}

electivire :: Pokemon
electivire = Pokemon {
  pokemonIndex = 466,
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
  pokemonMoves = [pound, bubble, peck, bubbleBeam, furyAttack, brine, whirlpool, drillPeck, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, aerialAce, facade, roundMove, echoedVoice, scald, surf, waterfall, hydroCannon, doubleHit, mudSlap, snore, icyWind, covet, signalBeam, waterPulse],
  numHeals = baseNumHeals
}

magmortar :: Pokemon
magmortar = Pokemon {
  pokemonIndex = 467,
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
  pokemonMoves = [metalClaw, tackle, bubble, peck, bubbleBeam, furyAttack, brine, whirlpool, drillPeck, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, aerialAce, facade, roundMove, echoedVoice, scald, shadowClaw, surf, waterfall, hydroCannon, doubleHit, mudSlap, snore, icyWind, covet, signalBeam, waterPulse, pound],
  numHeals = baseNumHeals
}

togekiss :: Pokemon
togekiss = Pokemon {
  pokemonIndex = 468,
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
  pokemonMoves = [aquaJet, metalClaw, tackle, bubble, peck, bubbleBeam, furyAttack, brine, whirlpool, drillPeck, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, brickBreak, rockTomb, aerialAce, facade, roundMove, echoedVoice, steelWing, scald, shadowClaw, gigaImpact, bulldoze, rockSlide, flashCannon, surf, waterfall, hydroCannon, waterPledge, doubleHit, mudSlap, snore, icyWind, covet, signalBeam, knockOff, waterPulse, pound],
  numHeals = baseNumHeals
}

yanmega :: Pokemon
yanmega = Pokemon {
  pokemonIndex = 469,
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
  pokemonMoves = [tackle, quickAttack, wingAttack, aerialAce, takeDown, braveBird, hiddenPower, facade, thief, roundMove, echoedVoice, steelWing, fly, uturn, furyAttack, pursuit, astonish, doubleEdge, uproar, revenge, snore, heatWave, airCutter],
  numHeals = baseNumHeals
}

leafeon :: Pokemon
leafeon = Pokemon {
  pokemonIndex = 470,
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
  pokemonMoves = [tackle, quickAttack, wingAttack, aerialAce, takeDown, braveBird, hiddenPower, facade, thief, roundMove, echoedVoice, steelWing, fly, uturn, furyAttack, pursuit, astonish, doubleEdge, uproar, revenge, snore, heatWave, airCutter],
  numHeals = baseNumHeals
}

glaceon :: Pokemon
glaceon = Pokemon {
  pokemonIndex = 471,
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
  pokemonMoves = [closeCombat, tackle, quickAttack, wingAttack, aerialAce, takeDown, braveBird, hiddenPower, hyperBeam, facade, thief, roundMove, echoedVoice, steelWing, gigaImpact, fly, uturn, furyAttack, pursuit, astonish, doubleEdge, uproar, revenge, snore, heatWave, skyAttack, airCutter],
  numHeals = baseNumHeals
}

gliscor :: Pokemon
gliscor = Pokemon {
  pokemonIndex = 472,
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
  pokemonMoves = [tackle, rollout, headbutt, hyperFang, crunch, takeDown, superpower, hiddenPower, iceBeam, blizzard, thunderbolt, thunder, shadowBall, facade, thief, roundMove, echoedVoice, chargeBeam, quickAttack, doubleEdge, furySwipes, aquaTail, rockClimb, skullBash, covet, lastResort, icyWind, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

mamoswine :: Pokemon
mamoswine = Pokemon {
  pokemonIndex = 473,
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
  pokemonMoves = [waterGun, aquaJet, tackle, rollout, headbutt, hyperFang, crunch, takeDown, superpower, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, shadowBall, facade, thief, roundMove, echoedVoice, scald, chargeBeam, gigaImpact, bulldoze, surf, waterfall, quickAttack, doubleEdge, furySwipes, aquaTail, rockClimb, skullBash, covet, lastResort, icyWind, ironTail, snore, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

gallade :: Pokemon
gallade = Pokemon {
  pokemonIndex = 475,
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
  pokemonMoves = [furyCutter, absorb, slash, xScissor, fellStinger, nightSlash, bugBuzz, hiddenPower, hyperBeam, leechLife, brickBreak, aerialAce, facade, roundMove, echoedVoice, falseSwipe, gigaImpact, infestation, bugBite, uproar, hyperVoice, snore, knockOff, struggleBug],
  numHeals = baseNumHeals
}

probopass :: Pokemon
probopass = Pokemon {
  pokemonIndex = 476,
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
  pokemonMoves = [tackle, spark, bite, thunderFang, crunch, discharge, wildCharge, hiddenPower, thunderbolt, thunder, facade, thief, roundMove, chargeBeam, voltSwitch, snarl, iceFang, fireFang, quickAttack, takeDown, nightSlash, shockWave, swift, doubleKick, signalBeam, ironTail, snore],
  numHeals = baseNumHeals
}

dusknoir :: Pokemon
dusknoir = Pokemon {
  pokemonIndex = 477,
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
  pokemonMoves = [tackle, spark, bite, thunderFang, crunch, discharge, wildCharge, hiddenPower, thunderbolt, thunder, facade, thief, roundMove, chargeBeam, voltSwitch, snarl, iceFang, fireFang, quickAttack, takeDown, nightSlash, shockWave, swift, doubleKick, signalBeam, ironTail, snore],
  numHeals = baseNumHeals
}

froslass :: Pokemon
froslass = Pokemon {
  pokemonIndex = 478,
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
  pokemonMoves = [tackle, spark, bite, thunderFang, crunch, discharge, wildCharge, hiddenPower, hyperBeam, thunderbolt, thunder, facade, thief, roundMove, chargeBeam, gigaImpact, voltSwitch, snarl, iceFang, fireFang, quickAttack, takeDown, nightSlash, shockWave, swift, doubleKick, signalBeam, superpower, ironTail, snore],
  numHeals = baseNumHeals
}

rotom :: Pokemon
rotom = Pokemon {
  pokemonIndex = 479,
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
  pokemonMoves = [absorb, megaDrain, venoshock, hiddenPower, solarBeam, shadowBall, sludgeBomb, facade, roundMove, energyBall, dazzlingGleam, pinMissile, razorLeaf, leafStorm, extrasensory, seedBomb, gigaDrain, covet, uproar, snore],
  numHeals = baseNumHeals
}

uxie :: Pokemon
uxie = Pokemon {
  pokemonIndex = 480,
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
  pokemonMoves = [weatherBall, poisonSting, megaDrain, magicalLeaf, venoshock, hiddenPower, hyperBeam, solarBeam, shadowBall, sludgeBomb, facade, roundMove, energyBall, gigaImpact, poisonJab, dazzlingGleam, pinMissile, razorLeaf, leafStorm, extrasensory, seedBomb, gigaDrain, bulletSeed, covet, snore, absorb, petalBlizzard, petalDance],
  numHeals = baseNumHeals
}

mesprit :: Pokemon
mesprit = Pokemon {
  pokemonIndex = 481,
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
  pokemonMoves = [headbutt, pursuit, takeDown, assurance, chipAway, ancientPower, zenHeadbutt, headSmash, hiddenPower, iceBeam, blizzard, smackDown, thunderbolt, thunder, earthquake, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, payback, stoneEdge, bulldoze, rockSlide, crunch, thrash, doubleEdge, slam, stomp, hammerArm, ironTail, ironHead, uproar, thunderPunch, firePunch, earthPower, superpower, dragonPulse, snore, shockWave],
  numHeals = baseNumHeals
}

azelf :: Pokemon
azelf = Pokemon {
  pokemonIndex = 482,
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
  pokemonMoves = [headbutt, pursuit, takeDown, assurance, chipAway, ancientPower, zenHeadbutt, headSmash, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, surf, crunch, thrash, doubleEdge, slam, stomp, hammerArm, ironTail, ironHead, uproar, thunderPunch, firePunch, earthPower, superpower, dragonPulse, snore, focusPunch, shockWave, outrage],
  numHeals = baseNumHeals
}

dialga :: Pokemon
dialga = Pokemon {
  pokemonIndex = 483,
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
  pokemonMoves = [tackle, takeDown, ancientPower, ironHead, hiddenPower, iceBeam, blizzard, smackDown, thunderbolt, thunder, earthquake, flamethrower, fireBlast, rockTomb, facade, roundMove, stoneEdge, bulldoze, rockSlide, flashCannon, headbutt, doubleEdge, rockBlast, bodySlam, earthPower, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

palkia :: Pokemon
palkia = Pokemon {
  pokemonIndex = 484,
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
  pokemonMoves = [tackle, takeDown, ancientPower, ironHead, hiddenPower, iceBeam, blizzard, hyperBeam, smackDown, thunderbolt, thunder, earthquake, flamethrower, fireBlast, rockTomb, facade, roundMove, gigaImpact, stoneEdge, bulldoze, rockSlide, flashCannon, headbutt, doubleEdge, rockBlast, bodySlam, earthPower, ironTail, snore, shockWave, outrage],
  numHeals = baseNumHeals
}

heatran :: Pokemon
heatran = Pokemon {
  pokemonIndex = 485,
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
  pokemonMoves = [tackle, bugBite, hiddenPower, electroweb, snore],
  numHeals = baseNumHeals
}

regigigas :: Pokemon
regigigas = Pokemon {
  pokemonIndex = 486,
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
  pokemonMoves = [suckerPunch, tackle, bugBite, hiddenPower, confusion, razorLeaf, psybeam, psychic, leafStorm, bugBuzz, venoshock, hyperBeam, solarBeam, shadowBall, facade, thief, roundMove, energyBall, gigaImpact, infestation, dreamEater, signalBeam, seedBomb, uproar, electroweb, snore, gigaDrain],
  numHeals = baseNumHeals
}

giratina :: Pokemon
giratina = Pokemon {
  pokemonIndex = 487,
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
  pokemonMoves = [suckerPunch, tackle, bugBite, hiddenPower, confusion, rockBlast, psybeam, psychic, bugBuzz, venoshock, hyperBeam, earthquake, shadowBall, rockTomb, facade, thief, roundMove, gigaImpact, bulldoze, infestation, dreamEater, signalBeam, uproar, earthPower, electroweb, snore],
  numHeals = baseNumHeals
}

cresselia :: Pokemon
cresselia = Pokemon {
  pokemonIndex = 488,
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
  pokemonMoves = [suckerPunch, tackle, bugBite, hiddenPower, confusion, mirrorShot, psybeam, psychic, ironHead, bugBuzz, venoshock, hyperBeam, shadowBall, facade, thief, roundMove, gigaImpact, infestation, dreamEater, flashCannon, signalBeam, gunkShot, uproar, electroweb, snore],
  numHeals = baseNumHeals
}

phione :: Pokemon
phione = Pokemon {
  pokemonIndex = 489,
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
  pokemonMoves = [tackle, bugBite, hiddenPower, confusion, gust, psybeam, silverWind, airSlash, psychic, lunge, bugBuzz, venoshock, hyperBeam, solarBeam, shadowBall, aerialAce, facade, thief, roundMove, energyBall, acrobatics, gigaImpact, infestation, dreamEater, uturn, signalBeam, electroweb, snore, gigaDrain, airCutter],
  numHeals = baseNumHeals
}

manaphy :: Pokemon
manaphy = Pokemon {
  pokemonIndex = 490,
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
  pokemonMoves = [gust, bugBite, bugBuzz, snore],
  numHeals = baseNumHeals
}

darkrai :: Pokemon
darkrai = Pokemon {
  pokemonIndex = 491,
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
  pokemonMoves = [slash, fellStinger, gust, poisonSting, furyCutter, pursuit, furySwipes, powerGem, airSlash, attackOrder, venoshock, hiddenPower, hyperBeam, sludgeBomb, aerialAce, facade, thief, roundMove, acrobatics, gigaImpact, xScissor, infestation, uturn, bugBite, signalBeam, snore, airCutter, bugBuzz],
  numHeals = baseNumHeals
}

shaymin :: Pokemon
shaymin = Pokemon {
  pokemonIndex = 492,
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
  pokemonMoves = [quickAttack, spark, nuzzle, swift, discharge, lastResort, hyperFang, hiddenPower, thunderbolt, thunder, facade, roundMove, echoedVoice, chargeBeam, voltSwitch, uturn, covet, bite, rollout, ironTail, seedBomb, gunkShot, uproar, thunderPunch, electroweb, snore, shockWave],
  numHeals = baseNumHeals
}

arceus :: Pokemon
arceus = Pokemon {
  pokemonIndex = 493,
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
  pokemonMoves = [quickAttack, waterGun, pursuit, swift, aquaJet, doubleHit, whirlpool, razorWind, aquaTail, hydroPump, hiddenPower, iceBeam, blizzard, brickBreak, rockTomb, facade, roundMove, echoedVoice, scald, surf, waterfall, mudSlap, headbutt, furySwipes, slash, doubleSlap, furyCutter, tailSlap, icePunch, icyWind, ironTail, snore, focusPunch, waterPulse],
  numHeals = baseNumHeals
}

victini :: Pokemon
victini = Pokemon {
  pokemonIndex = 494,
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
  pokemonMoves = [iceFang, crunch, quickAttack, waterGun, pursuit, swift, aquaJet, doubleHit, whirlpool, razorWind, aquaTail, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, rockTomb, facade, roundMove, echoedVoice, focusBlast, scald, payback, gigaImpact, surf, waterfall, mudSlap, headbutt, furySwipes, slash, doubleSlap, furyCutter, tailSlap, icePunch, icyWind, ironTail, snore, focusPunch, waterPulse],
  numHeals = baseNumHeals
}

snivy :: Pokemon
snivy = Pokemon {
  pokemonIndex = 495,
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
  pokemonMoves = [tackle, magicalLeaf, takeDown, solarBeam, petalBlizzard, hiddenPower, facade, roundMove, energyBall, dazzlingGleam, razorLeaf, weatherBall, seedBomb, rollout, snore, gigaDrain],
  numHeals = baseNumHeals
}

servine :: Pokemon
servine = Pokemon {
  pokemonIndex = 496,
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
  pokemonMoves = [petalDance, tackle, magicalLeaf, takeDown, solarBeam, petalBlizzard, hiddenPower, hyperBeam, facade, roundMove, energyBall, gigaImpact, dazzlingGleam, razorLeaf, weatherBall, seedBomb, rollout, snore, gigaDrain],
  numHeals = baseNumHeals
}

serperior :: Pokemon
serperior = Pokemon {
  pokemonIndex = 497,
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
  pokemonMoves = [petalDance, tackle, magicalLeaf, takeDown, solarBeam, petalBlizzard, hiddenPower, hyperBeam, facade, roundMove, energyBall, gigaImpact, dazzlingGleam, razorLeaf, weatherBall, seedBomb, rollout, snore, gigaDrain],
  numHeals = baseNumHeals
}

tepig :: Pokemon
tepig = Pokemon {
  pokemonIndex = 498,
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
  pokemonMoves = [mudSlap, waterPulse, mudBomb, hiddenPower, bodySlam, muddyWater, iceBeam, blizzard, facade, roundMove, scald, infestation, surf, sludge, clearSmog, brine, earthPower, icyWind, snore],
  numHeals = baseNumHeals
}

pignite :: Pokemon
pignite = Pokemon {
  pokemonIndex = 499,
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
  pokemonMoves = [mudSlap, waterPulse, mudBomb, hiddenPower, bodySlam, muddyWater, iceBeam, blizzard, facade, roundMove, scald, infestation, surf, sludge, clearSmog, brine, earthPower, icyWind, snore],
  numHeals = baseNumHeals
}

emboar :: Pokemon
emboar = Pokemon {
  pokemonIndex = 500,
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
  pokemonMoves = [mudSlap, waterPulse, mudBomb, hiddenPower, bodySlam, muddyWater, iceBeam, blizzard, hyperBeam, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, roundMove, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, infestation, surf, waterfall, sludge, clearSmog, brine, earthPower, icyWind, snore],
  numHeals = baseNumHeals
}

oshawott :: Pokemon
oshawott = Pokemon {
  pokemonIndex = 501,
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
  pokemonMoves = [mudSlap, waterPulse, mudBomb, hiddenPower, bodySlam, muddyWater, iceBeam, blizzard, hyperBeam, earthquake, sludgeWave, sludgeBomb, rockTomb, facade, roundMove, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, infestation, surf, waterfall, sludge, clearSmog, brine, earthPower, icyWind, snore],
  numHeals = baseNumHeals
}

dewott :: Pokemon
dewott = Pokemon {
  pokemonIndex = 502,
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
  pokemonMoves = [dualChop, scratch, astonish, furySwipes, swift, doubleHit, lastResort, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, aerialAce, facade, thief, lowSweep, roundMove, acrobatics, shadowClaw, payback, gigaImpact, dreamEater, uturn, pursuit, slam, doubleSlap, fakeOut, covet, bounce, revenge, seedBomb, gunkShot, uproar, thunderPunch, firePunch, icePunch, foulPlay, ironTail, snore, knockOff, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

samurott :: Pokemon
samurott = Pokemon {
  pokemonIndex = 503,
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
  pokemonMoves = [constrict, astonish, gust, payback, ominousWind, hex, shadowBall, explosion, hiddenPower, thunderbolt, thunder, psychic, facade, thief, roundMove, chargeBeam, acrobatics, dreamEater, bodySlam, weatherBall, clearSmog, icyWind, bind, snore, knockOff, shockWave],
  numHeals = baseNumHeals
}

patrat :: Pokemon
patrat = Pokemon {
  pokemonIndex = 504,
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
  pokemonMoves = [phantomForce, constrict, astonish, gust, payback, ominousWind, hex, shadowBall, explosion, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, facade, thief, roundMove, chargeBeam, acrobatics, gigaImpact, fly, dreamEater, bodySlam, weatherBall, clearSmog, icyWind, bind, snore, knockOff, shockWave],
  numHeals = baseNumHeals
}

watchog :: Pokemon
watchog = Pokemon {
  pokemonIndex = 505,
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
  pokemonMoves = [pound, quickAttack, jumpKick, dizzyPunch, bounce, hiddenPower, iceBeam, solarBeam, thunderbolt, shadowBall, facade, roundMove, chargeBeam, fakeOut, doubleHit, skyUppercut, thunderPunch, icePunch, firePunch, focusPunch, circleThrow, covet, uproar, lastResort, hyperVoice, ironTail, snore, drainPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

lillipup :: Pokemon
lillipup = Pokemon {
  pokemonIndex = 506,
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
  pokemonMoves = [bounce, pound, quickAttack, jumpKick, dizzyPunch, highJumpKick, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, facade, lowSweep, roundMove, focusBlast, chargeBeam, brutalSwing, gigaImpact, fakeOut, doubleHit, skyUppercut, thunderPunch, icePunch, firePunch, focusPunch, circleThrow, covet, uproar, lastResort, hyperVoice, ironTail, snore, drainPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

herdier :: Pokemon
herdier = Pokemon {
  pokemonIndex = 507,
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
  pokemonMoves = [bounce, pound, quickAttack, jumpKick, dizzyPunch, highJumpKick, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, shadowBall, facade, lowSweep, roundMove, focusBlast, chargeBeam, brutalSwing, gigaImpact, fakeOut, doubleHit, skyUppercut, thunderPunch, icePunch, firePunch, focusPunch, circleThrow, covet, uproar, lastResort, hyperVoice, ironTail, snore, drainPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

stoutland :: Pokemon
stoutland = Pokemon {
  pokemonIndex = 508,
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
  pokemonMoves = [mysticalFire, powerGem, phantomForce, magicalLeaf, astonish, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, energyBall, chargeBeam, payback, gigaImpact, dreamEater, darkPulse, dazzlingGleam, suckerPunch, shadowSneak, ominousWind, uproar, foulPlay, icyWind, hyperVoice, snore, shockWave, hex, psybeam],
  numHeals = baseNumHeals
}

purrloin :: Pokemon
purrloin = Pokemon {
  pokemonIndex = 509,
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
  pokemonMoves = [nightSlash, suckerPunch, astonish, pursuit, wingAttack, foulPlay, darkPulse, hiddenPower, hyperBeam, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, payback, gigaImpact, fly, dreamEater, snarl, drillPeck, skyAttack, feintAttack, braveBird, assurance, uproar, superpower, icyWind, snore, heatWave, airCutter, peck],
  numHeals = baseNumHeals
}

liepard :: Pokemon
liepard = Pokemon {
  pokemonIndex = 510,
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
  pokemonMoves = [fakeOut, scratch, feintAttack, furySwipes, slash, suckerPunch, playRough, hiddenPower, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, dreamEater, uturn, bite, quickAttack, assurance, wakeUpSlap, lastResort, covet, foulPlay, hyperVoice, ironTail, snore, knockOff, shockWave, waterPulse],
  numHeals = baseNumHeals
}

pansage :: Pokemon
pansage = Pokemon {
  pokemonIndex = 511,
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
  pokemonMoves = [fakeOut, scratch, feintAttack, furySwipes, slash, bodySlam, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, gigaImpact, bulldoze, dreamEater, uturn, bite, quickAttack, assurance, wakeUpSlap, lastResort, covet, foulPlay, hyperVoice, ironTail, snore, knockOff, shockWave, waterPulse, suckerPunch, playRough],
  numHeals = baseNumHeals
}

simisage :: Pokemon
simisage = Pokemon {
  pokemonIndex = 512,
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
  pokemonMoves = [wrap, astonish, confusion, lastResort, uproar, psyshock, hiddenPower, psychic, shadowBall, facade, roundMove, echoedVoice, chargeBeam, dreamEater, dazzlingGleam, futureSight, storedPower, signalBeam, icyWind, zenHeadbutt, hyperVoice, bind, snore, knockOff, shockWave],
  numHeals = baseNumHeals
}

pansear :: Pokemon
pansear = Pokemon {
  pokemonIndex = 513,
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
  pokemonMoves = [scratch, furySwipes, feint, acidSpray, bite, slash, nightSlash, suckerPunch, belch, explosion, venoshock, hiddenPower, shadowBall, flamethrower, sludgeBomb, fireBlast, facade, thief, roundMove, shadowClaw, payback, snarl, darkPulse, pursuit, smog, doubleEdge, crunch, astonish, ironTail, foulPlay, flameBurst, playRough, snore],
  numHeals = baseNumHeals
}

simisear :: Pokemon
simisear = Pokemon {
  pokemonIndex = 514,
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
  pokemonMoves = [flamethrower, scratch, furySwipes, feint, acidSpray, bite, slash, nightSlash, suckerPunch, belch, explosion, venoshock, hiddenPower, hyperBeam, shadowBall, sludgeBomb, fireBlast, facade, thief, roundMove, shadowClaw, payback, gigaImpact, poisonJab, snarl, darkPulse, pursuit, smog, doubleEdge, crunch, astonish, ironTail, foulPlay, flameBurst, playRough, snore],
  numHeals = baseNumHeals
}

panpour :: Pokemon
panpour = Pokemon {
  pokemonIndex = 515,
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
  pokemonMoves = [tackle, confusion, feintAttack, futureSight, extrasensory, payback, psyshock, hiddenPower, solarBeam, earthquake, psychic, shadowBall, rockTomb, facade, roundMove, chargeBeam, bulldoze, rockSlide, dreamEater, flashCannon, signalBeam, snore],
  numHeals = baseNumHeals
}

simipour :: Pokemon
simipour = Pokemon {
  pokemonIndex = 516,
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
  pokemonMoves = [tackle, confusion, feintAttack, futureSight, extrasensory, payback, psyshock, hiddenPower, hyperBeam, solarBeam, earthquake, psychic, shadowBall, rockTomb, facade, roundMove, chargeBeam, explosion, gigaImpact, bulldoze, rockSlide, dreamEater, flashCannon, signalBeam, ironHead, zenHeadbutt, snore],
  numHeals = baseNumHeals
}

munna :: Pokemon
munna = Pokemon {
  pokemonIndex = 517,
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
  pokemonMoves = [rockThrow, feintAttack, rockTomb, rockSlide, suckerPunch, doubleEdge, hiddenPower, smackDown, brickBreak, facade, thief, roundMove, explosion, selfDestruct, headbutt, rollout, sandTomb, covet, uproar, earthPower, foulPlay, snore],
  numHeals = baseNumHeals
}

musharna :: Pokemon
musharna = Pokemon {
  pokemonIndex = 518,
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
  pokemonMoves = [confusion, doubleSlap, psybeam, psychic, psyshock, hiddenPower, solarBeam, thunderbolt, thunder, shadowBall, brickBreak, facade, thief, roundMove, chargeBeam, infestation, dreamEater, futureSight, fakeOut, wakeUpSlap, icyWind, covet, signalBeam, uproar, snore, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

pidove :: Pokemon
pidove = Pokemon {
  pokemonIndex = 519,
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
  pokemonMoves = [pound, hiddenPower, solarBeam, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, dreamEater, lastResort, mudBomb, covet, uproar, icyWind, zenHeadbutt, hyperVoice, snore, drainPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

tranquill :: Pokemon
tranquill = Pokemon {
  pokemonIndex = 520,
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
  pokemonMoves = [hyperVoice, chatter, peck, furyAttack, roundMove, echoedVoice, uproar, synchronoise, hiddenPower, aerialAce, facade, thief, steelWing, fly, uturn, airCutter, boomburst, snore, heatWave, skyAttack],
  numHeals = baseNumHeals
}

unfezant :: Pokemon
unfezant = Pokemon {
  pokemonIndex = 521,
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
  pokemonMoves = [pursuit, shadowSneak, feintAttack, dreamEater, ominousWind, suckerPunch, darkPulse, hiddenPower, hyperBeam, psychic, shadowBall, rockTomb, facade, thief, roundMove, gigaImpact, infestation, snarl, foulPlay, uproar, icyWind, snore, shockWave, waterPulse],
  numHeals = baseNumHeals
}

blitzle :: Pokemon
blitzle = Pokemon {
  pokemonIndex = 522,
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
  pokemonMoves = [tackle, takeDown, sandTomb, slash, dragonClaw, dig, dragonRush, hiddenPower, earthquake, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, shadowClaw, stoneEdge, bulldoze, rockSlide, dracoMeteor, dragonBreath, outrage, twister, doubleEdge, thrash, metalClaw, bodySlam, ironHead, mudShot, rockClimb, ironTail, earthPower, dragonPulse, snore],
  numHeals = baseNumHeals
}

zebstrika :: Pokemon
zebstrika = Pokemon {
  pokemonIndex = 523,
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
  pokemonMoves = [dualChop, tackle, takeDown, sandTomb, slash, dragonClaw, dig, dragonRush, hiddenPower, earthquake, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, shadowClaw, stoneEdge, bulldoze, rockSlide, dracoMeteor, dragonBreath, outrage, twister, doubleEdge, thrash, metalClaw, bodySlam, ironHead, mudShot, rockClimb, ironTail, earthPower, dragonPulse, snore],
  numHeals = baseNumHeals
}

roggenrola :: Pokemon
roggenrola = Pokemon {
  pokemonIndex = 524,
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
  pokemonMoves = [crunch, dualChop, fireFang, tackle, takeDown, sandTomb, slash, dragonClaw, dig, dragonRush, hiddenPower, hyperBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, falseSwipe, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, poisonJab, surf, dracoMeteor, dragonBreath, outrage, twister, doubleEdge, thrash, metalClaw, bodySlam, ironHead, mudShot, rockClimb, ironTail, earthPower, aquaTail, dragonPulse, snore],
  numHeals = baseNumHeals
}

boldore :: Pokemon
boldore = Pokemon {
  pokemonIndex = 525,
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
  pokemonMoves = [crunch, dualChop, fireFang, tackle, takeDown, sandTomb, slash, dragonClaw, dig, dragonRush, hiddenPower, hyperBeam, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, falseSwipe, brutalSwing, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, poisonJab, surf, dracoMeteor, dragonBreath, outrage, twister, doubleEdge, thrash, metalClaw, bodySlam, ironHead, mudShot, rockClimb, ironTail, earthPower, aquaTail, dragonPulse, snore],
  numHeals = baseNumHeals
}

gigalith :: Pokemon
gigalith = Pokemon {
  pokemonIndex = 526,
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
  pokemonMoves = [lastResort, lick, tackle, chipAway, bodySlam, rollout, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, roundMove, bulldoze, rockSlide, surf, doubleEdge, pursuit, zenHeadbutt, selfDestruct, belch, covet, seedBomb, gunkShot, uproar, thunderPunch, firePunch, icePunch, superpower, icyWind, hyperVoice, snore, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

woobat :: Pokemon
woobat = Pokemon {
  pokemonIndex = 527,
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
  pokemonMoves = [quickAttack, feint, forcePalm, hiddenPower, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, shadowClaw, payback, bulldoze, rockSlide, poisonJab, crossChop, bite, skyUppercut, highJumpKick, vacuumWave, crunch, blazeKick, bulletPunch, circleThrow, dualChop, thunderPunch, icePunch, zenHeadbutt, ironTail, snore, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

swoobat :: Pokemon
swoobat = Pokemon {
  pokemonIndex = 528,
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
  pokemonMoves = [auraSphere, quickAttack, metalClaw, feint, powerUpPunch, boneRush, closeCombat, dragonPulse, extremeSpeed, hiddenPower, hyperBeam, earthquake, psychic, shadowBall, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, shadowClaw, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, flashCannon, darkPulse, crossChop, bite, skyUppercut, highJumpKick, vacuumWave, crunch, blazeKick, bulletPunch, circleThrow, dualChop, thunderPunch, icePunch, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, waterPulse, forcePalm],
  numHeals = baseNumHeals
}

drilbur :: Pokemon
drilbur = Pokemon {
  pokemonIndex = 529,
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
  pokemonMoves = [auraSphere, quickAttack, metalClaw, feint, powerUpPunch, boneRush, closeCombat, dragonPulse, extremeSpeed, hiddenPower, hyperBeam, earthquake, psychic, shadowBall, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, shadowClaw, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, flashCannon, darkPulse, crossChop, bite, skyUppercut, highJumpKick, vacuumWave, crunch, blazeKick, bulletPunch, circleThrow, dualChop, thunderPunch, icePunch, zenHeadbutt, ironTail, snore, drainPunch, focusPunch, waterPulse, forcePalm],
  numHeals = baseNumHeals
}

excadrill :: Pokemon
excadrill = Pokemon {
  pokemonIndex = 530,
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
  pokemonMoves = [tackle, bite, takeDown, dig, sandTomb, crunch, earthquake, doubleEdge, hiddenPower, rockTomb, facade, roundMove, bulldoze, rockSlide, bodySlam, revenge, earthPower, superpower, ironTail, snore, waterPulse],
  numHeals = baseNumHeals
}

audino :: Pokemon
audino = Pokemon {
  pokemonIndex = 531,
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
  pokemonMoves = [iceFang, fireFang, thunderFang, tackle, bite, takeDown, dig, sandTomb, crunch, earthquake, doubleEdge, hiddenPower, hyperBeam, rockTomb, facade, roundMove, gigaImpact, stoneEdge, bulldoze, rockSlide, bodySlam, revenge, ironHead, earthPower, superpower, ironTail, snore, waterPulse],
  numHeals = baseNumHeals
}

timburr :: Pokemon
timburr = Pokemon {
  pokemonIndex = 532,
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
  pokemonMoves = [bite, poisonSting, knockOff, pinMissile, pursuit, bugBite, poisonFang, venoshock, nightSlash, crunch, fellStinger, crossPoison, hiddenPower, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, falseSwipe, payback, xScissor, infestation, poisonJab, darkPulse, feintAttack, slash, ironTail, twineedle, poisonTail, aquaTail, snore],
  numHeals = baseNumHeals
}

gurdurr :: Pokemon
gurdurr = Pokemon {
  pokemonIndex = 533,
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
  pokemonMoves = [thunderFang, iceFang, fireFang, bite, poisonSting, knockOff, pinMissile, pursuit, bugBite, poisonFang, venoshock, nightSlash, crunch, fellStinger, crossPoison, hiddenPower, hyperBeam, earthquake, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, falseSwipe, brutalSwing, payback, gigaImpact, bulldoze, rockSlide, xScissor, infestation, poisonJab, snarl, darkPulse, feintAttack, slash, ironTail, twineedle, poisonTail, aquaTail, snore],
  numHeals = baseNumHeals
}

conkeldurr :: Pokemon
conkeldurr = Pokemon {
  pokemonIndex = 534,
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
  pokemonMoves = [astonish, mudSlap, poisonSting, pursuit, feintAttack, revenge, mudBomb, suckerPunch, venoshock, poisonJab, sludgeBomb, belch, hiddenPower, earthquake, shadowBall, brickBreak, sludgeWave, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, payback, bulldoze, rockSlide, xScissor, darkPulse, feint, dynamicPunch, headbutt, vacuumWave, fakeOut, wakeUpSlap, smellingSalts, crossChop, bulletPunch, drainPunch, dualChop, bounce, gunkShot, thunderPunch, icePunch, foulPlay, icyWind, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

tympole :: Pokemon
tympole = Pokemon {
  pokemonIndex = 535,
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
  pokemonMoves = [astonish, mudSlap, poisonSting, pursuit, feintAttack, revenge, mudBomb, suckerPunch, venoshock, poisonJab, sludgeBomb, belch, hiddenPower, hyperBeam, earthquake, shadowBall, brickBreak, sludgeWave, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, darkPulse, feint, dynamicPunch, headbutt, vacuumWave, fakeOut, wakeUpSlap, smellingSalts, crossChop, bulletPunch, drainPunch, dualChop, bounce, gunkShot, thunderPunch, icePunch, foulPlay, icyWind, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

palpitoad :: Pokemon
palpitoad = Pokemon {
  pokemonIndex = 536,
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
  pokemonMoves = [bind, bite, vineWhip, feintAttack, leafTornado, crunch, powerWhip, hiddenPower, hyperBeam, solarBeam, sludgeBomb, facade, thief, roundMove, energyBall, payback, gigaImpact, infestation, razorLeaf, slam, magicalLeaf, gigaDrain, bugBite, seedBomb, snore, knockOff],
  numHeals = baseNumHeals
}

seismitoad :: Pokemon
seismitoad = Pokemon {
  pokemonIndex = 537,
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
  pokemonMoves = [pound, waterGun, gust, waterPulse, whirlpool, uturn, bounce, silverWind, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, payback, surf, waterfall, aquaTail, psybeam, brine, auroraBeam, signalBeam, icyWind, snore],
  numHeals = baseNumHeals
}

throh :: Pokemon
throh = Pokemon {
  pokemonIndex = 538,
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
  pokemonMoves = [gust, pound, waterGun, waterPulse, whirlpool, uturn, bounce, silverWind, hiddenPower, iceBeam, blizzard, hyperBeam, facade, roundMove, scald, payback, gigaImpact, surf, waterfall, aquaTail, psybeam, brine, auroraBeam, signalBeam, icyWind, snore],
  numHeals = baseNumHeals
}

sawk :: Pokemon
sawk = Pokemon {
  pokemonIndex = 539,
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
  pokemonMoves = [tackle, bubble, bubbleBeam, wingAttack, headbutt, waterPulse, takeDown, airSlash, bounce, hydroPump, hiddenPower, iceBeam, blizzard, earthquake, aerialAce, facade, roundMove, scald, acrobatics, bulldoze, rockSlide, surf, waterfall, twister, slam, signalBeam, icyWind, snore],
  numHeals = baseNumHeals
}

sewaddle :: Pokemon
sewaddle = Pokemon {
  pokemonIndex = 540,
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
  pokemonMoves = [powderSnow, razorLeaf, icyWind, iceShard, woodHammer, blizzard, hiddenPower, iceBeam, solarBeam, shadowBall, facade, roundMove, energyBall, frostBreath, magicalLeaf, seedBomb, doubleEdge, stomp, skullBash, avalanche, bulletSeed, icePunch, ironTail, snore, gigaDrain, waterPulse],
  numHeals = baseNumHeals
}

swadloon :: Pokemon
swadloon = Pokemon {
  pokemonIndex = 541,
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
  pokemonMoves = [icePunch, powderSnow, razorLeaf, icyWind, iceShard, woodHammer, blizzard, hiddenPower, iceBeam, hyperBeam, solarBeam, earthquake, shadowBall, brickBreak, rockTomb, facade, roundMove, focusBlast, energyBall, gigaImpact, bulldoze, frostBreath, rockSlide, magicalLeaf, seedBomb, doubleEdge, stomp, skullBash, avalanche, bulletSeed, ironTail, snore, gigaDrain, focusPunch, waterPulse, outrage],
  numHeals = baseNumHeals
}

leavanny :: Pokemon
leavanny = Pokemon {
  pokemonIndex = 542,
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
  pokemonMoves = [icePunch, powderSnow, razorLeaf, icyWind, iceShard, woodHammer, blizzard, hiddenPower, iceBeam, hyperBeam, solarBeam, earthquake, shadowBall, brickBreak, rockTomb, facade, roundMove, focusBlast, energyBall, gigaImpact, bulldoze, frostBreath, rockSlide, magicalLeaf, seedBomb, doubleEdge, stomp, skullBash, avalanche, bulletSeed, ironTail, snore, gigaDrain, focusPunch, waterPulse, outrage],
  numHeals = baseNumHeals
}

venipede :: Pokemon
venipede = Pokemon {
  pokemonIndex = 543,
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
  pokemonMoves = [revenge, assurance, scratch, quickAttack, feintAttack, icyWind, furySwipes, metalClaw, nightSlash, darkPulse, hiddenPower, iceBeam, blizzard, hyperBeam, shadowBall, brickBreak, aerialAce, facade, thief, lowSweep, roundMove, focusBlast, falseSwipe, shadowClaw, payback, gigaImpact, xScissor, poisonJab, dreamEater, surf, snarl, bite, crushClaw, fakeOut, doubleHit, pursuit, iceShard, icePunch, avalanche, feint, icicleCrash, throatChop, foulPlay, ironTail, snore, knockOff, focusPunch, slash],
  numHeals = baseNumHeals
}

whirlipede :: Pokemon
whirlipede = Pokemon {
  pokemonIndex = 544,
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
  pokemonMoves = [triAttack, zapCannon, tackle, thunderShock, magnetBomb, spark, mirrorShot, flashCannon, discharge, hiddenPower, hyperBeam, thunderbolt, thunder, facade, roundMove, chargeBeam, explosion, gigaImpact, voltSwitch, wildCharge, signalBeam, ironHead, electroweb, snore, shockWave],
  numHeals = baseNumHeals
}

scolipede :: Pokemon
scolipede = Pokemon {
  pokemonIndex = 545,
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
  pokemonMoves = [powerWhip, lick, knockOff, wrap, stomp, slam, rollout, chipAway, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, earthquake, shadowBall, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, brutalSwing, explosion, gigaImpact, bulldoze, rockSlide, dragonTail, dreamEater, surf, bodySlam, smellingSalts, snore, hammerArm, muddyWater, zenHeadbutt, belch, thunderPunch, firePunch, icePunch, icyWind, aquaTail, ironTail, bind, focusPunch, shockWave, waterPulse],
  numHeals = baseNumHeals
}

cottonee :: Pokemon
cottonee = Pokemon {
  pokemonIndex = 546,
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
  pokemonMoves = [hammerArm, rockWrecker, poisonJab, hornAttack, furyAttack, smackDown, stomp, bulldoze, chipAway, rockBlast, drillRun, takeDown, stoneEdge, earthquake, megahorn, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, brickBreak, flamethrower, fireBlast, rockTomb, facade, thief, roundMove, focusBlast, brutalSwing, shadowClaw, payback, smartStrike, gigaImpact, rockSlide, dragonTail, flashCannon, surf, crunch, crushClaw, dragonRush, iceFang, fireFang, thunderFang, skullBash, ironTail, rockClimb, ironHead, uproar, thunderPunch, firePunch, icePunch, earthPower, superpower, icyWind, aquaTail, dragonPulse, snore, focusPunch, shockWave, outrage],
  numHeals = baseNumHeals
}

whimsicott :: Pokemon
whimsicott = Pokemon {
  pokemonIndex = 547,
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
  pokemonMoves = [constrict, vineWhip, absorb, bind, megaDrain, knockOff, gigaDrain, ancientPower, slam, powerWhip, hiddenPower, hyperBeam, solarBeam, earthquake, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, energyBall, payback, gigaImpact, bulldoze, rockSlide, infestation, poisonJab, confusion, leafStorm, seedBomb, snore, shockWave],
  numHeals = baseNumHeals
}

petilil :: Pokemon
petilil = Pokemon {
  pokemonIndex = 548,
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
  pokemonMoves = [firePunch, quickAttack, thunderShock, swift, shockWave, thunderPunch, discharge, thunderbolt, thunder, gigaImpact, hiddenPower, hyperBeam, earthquake, psychic, brickBreak, flamethrower, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, chargeBeam, voltSwitch, bulldoze, rockSlide, wildCharge, karateChop, rollingKick, crossChop, icePunch, dynamicPunch, feint, hammerArm, focusPunch, covet, dualChop, signalBeam, electroweb, ironTail, snore],
  numHeals = baseNumHeals
}

lilligant :: Pokemon
lilligant = Pokemon {
  pokemonIndex = 549,
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
  pokemonMoves = [thunderPunch, smog, ember, feintAttack, fireSpin, clearSmog, flameBurst, firePunch, lavaPlume, flamethrower, fireBlast, hyperBeam, hiddenPower, solarBeam, thunderbolt, earthquake, psychic, brickBreak, rockTomb, facade, flameCharge, thief, lowSweep, roundMove, overheat, focusBlast, gigaImpact, bulldoze, rockSlide, karateChop, megaPunch, crossChop, machPunch, dynamicPunch, flareBlitz, ironTail, belch, covet, dualChop, snore, heatWave, focusPunch],
  numHeals = baseNumHeals
}

basculin :: Pokemon
basculin = Pokemon {
  pokemonIndex = 550,
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
  pokemonMoves = [skyAttack, extremeSpeed, auraSphere, airSlash, psyshock, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, brickBreak, flamethrower, fireBlast, aerialAce, facade, roundMove, echoedVoice, steelWing, gigaImpact, fly, dreamEater, dazzlingGleam, peck, futureSight, extrasensory, secretPower, storedPower, covet, signalBeam, lastResort, zenHeadbutt, hyperVoice, snore, heatWave, drainPunch, airCutter, focusPunch, shockWave, waterPulse, magicalLeaf, fairyWind, ancientPower, doubleEdge],
  numHeals = baseNumHeals
}

sandile :: Pokemon
sandile = Pokemon {
  pokemonIndex = 551,
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
  pokemonMoves = [bugBuzz, airSlash, nightSlash, bugBite, tackle, quickAttack, uproar, pursuit, ancientPower, feint, slash, uturn, hiddenPower, hyperBeam, solarBeam, leechLife, psychic, shadowBall, aerialAce, facade, thief, roundMove, steelWing, gigaImpact, dreamEater, signalBeam, silverWind, feintAttack, doubleEdge, secretPower, snore, gigaDrain, airCutter, wingAttack],
  numHeals = baseNumHeals
}

krokorok :: Pokemon
krokorok = Pokemon {
  pokemonIndex = 552,
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
  pokemonMoves = [razorLeaf, tackle, quickAttack, magicalLeaf, gigaDrain, lastResort, leafBlade, hiddenPower, hyperBeam, solarBeam, shadowBall, aerialAce, facade, roundMove, echoedVoice, energyBall, gigaImpact, xScissor, covet, storedPower, synchronoise, seedBomb, hyperVoice, ironTail, snore, knockOff, bite, swift, takeDown, doubleEdge],
  numHeals = baseNumHeals
}

krookodile :: Pokemon
krookodile = Pokemon {
  pokemonIndex = 553,
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
  pokemonMoves = [icyWind, tackle, quickAttack, bite, iceFang, iceShard, lastResort, blizzard, hiddenPower, iceBeam, hyperBeam, shadowBall, facade, roundMove, echoedVoice, gigaImpact, frostBreath, covet, storedPower, synchronoise, signalBeam, aquaTail, hyperVoice, ironTail, snore, waterPulse, swift, takeDown, doubleEdge],
  numHeals = baseNumHeals
}

darumaka :: Pokemon
darumaka = Pokemon {
  pokemonIndex = 554,
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
  pokemonMoves = [thunderFang, iceFang, fireFang, poisonJab, knockOff, quickAttack, furyCutter, feintAttack, acrobatics, nightSlash, uturn, xScissor, skyUppercut, venoshock, hiddenPower, hyperBeam, earthquake, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, steelWing, falseSwipe, brutalSwing, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, darkPulse, metalClaw, wingAttack, razorWind, sandTomb, doubleEdge, feint, crossPoison, rockClimb, poisonTail, bugBite, earthPower, aquaTail, ironTail, snore, skyAttack, airCutter, poisonSting, slash],
  numHeals = baseNumHeals
}

darmanitan :: Pokemon
darmanitan = Pokemon {
  pokemonIndex = 555,
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
  pokemonMoves = [furyAttack, ancientPower, peck, powderSnow, mudSlap, mudBomb, iceFang, takeDown, doubleHit, thrash, earthquake, blizzard, hiddenPower, iceBeam, hyperBeam, rockTomb, facade, roundMove, gigaImpact, stoneEdge, bulldoze, rockSlide, bite, bodySlam, mudShot, icicleSpear, doubleEdge, avalanche, icicleCrash, freezeDry, ironHead, earthPower, superpower, icyWind, snore, knockOff, tackle, iceShard],
  numHeals = baseNumHeals
}

maractus :: Pokemon
maractus = Pokemon {
  pokemonIndex = 556,
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
  pokemonMoves = [zapCannon, tackle, psybeam, signalBeam, discharge, triAttack, hyperBeam, psyshock, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, psychic, shadowBall, aerialAce, facade, thief, roundMove, chargeBeam, gigaImpact, dreamEater, darkPulse, uproar, foulPlay, lastResort, electroweb, icyWind, zenHeadbutt, ironTail, snore, shockWave],
  numHeals = baseNumHeals
}

dwebble :: Pokemon
dwebble = Pokemon {
  pokemonIndex = 557,
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
  pokemonMoves = [slash, storedPower, closeCombat, leafBlade, nightSlash, confusion, furyCutter, aerialAce, psychoCut, feint, falseSwipe, psyshock, hiddenPower, hyperBeam, thunderbolt, earthquake, psychic, shadowBall, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, dreamEater, dazzlingGleam, shadowSneak, synchronoise, dualChop, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, hyperVoice, snore, knockOff, drainPunch, focusPunch, shockWave, disarmingVoice, magicalLeaf, drainingKiss, futureSight],
  numHeals = baseNumHeals
}

crustle :: Pokemon
crustle = Pokemon {
  pokemonIndex = 558,
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
  pokemonMoves = [slash, storedPower, closeCombat, leafBlade, nightSlash, confusion, furyCutter, aerialAce, psychoCut, feint, falseSwipe, psyshock, hiddenPower, hyperBeam, thunderbolt, earthquake, psychic, shadowBall, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, echoedVoice, focusBlast, chargeBeam, gigaImpact, stoneEdge, bulldoze, rockSlide, xScissor, poisonJab, dreamEater, dazzlingGleam, shadowSneak, synchronoise, dualChop, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, hyperVoice, snore, knockOff, drainPunch, focusPunch, shockWave, disarmingVoice, magicalLeaf, drainingKiss, futureSight],
  numHeals = baseNumHeals
}

scraggy :: Pokemon
scraggy = Pokemon {
  pokemonIndex = 559,
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
  pokemonMoves = [triAttack, tackle, magnetBomb, spark, rockSlide, powerGem, rockBlast, discharge, earthPower, stoneEdge, zapCannon, hiddenPower, hyperBeam, smackDown, thunderbolt, thunder, earthquake, rockTomb, facade, roundMove, explosion, gigaImpact, voltSwitch, bulldoze, flashCannon, dazzlingGleam, rollout, doubleEdge, ironHead, thunderPunch, firePunch, icePunch, snore, shockWave, rockThrow],
  numHeals = baseNumHeals
}

scrafty :: Pokemon
scrafty = Pokemon {
  pokemonIndex = 560,
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
  pokemonMoves = [shadowPunch, futureSight, firePunch, icePunch, thunderPunch, bind, astonish, shadowSneak, pursuit, hex, shadowBall, payback, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, psychic, brickBreak, rockTomb, facade, thief, roundMove, focusBlast, chargeBeam, gigaImpact, bulldoze, rockSlide, infestation, dreamEater, darkPulse, feintAttack, ominousWind, icyWind, snore, focusPunch],
  numHeals = baseNumHeals
}

sigilyph :: Pokemon
sigilyph = Pokemon {
  pokemonIndex = 561,
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
  pokemonMoves = [ominousWind, powderSnow, iceShard, icyWind, astonish, drainingKiss, wakeUpSlap, shadowBall, blizzard, hiddenPower, iceBeam, hyperBeam, thunderbolt, thunder, psychic, facade, roundMove, payback, gigaImpact, frostBreath, dreamEater, rollout, weatherBall, avalanche, hex, signalBeam, icePunch, snore, shockWave, waterPulse, razorLeaf, woodHammer],
  numHeals = baseNumHeals
}

yamask :: Pokemon
yamask = Pokemon {
  pokemonIndex = 562,
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
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, signalBeam, foulPlay, electroweb, snore],
  numHeals = baseNumHeals
}

cofagrigus :: Pokemon
cofagrigus = Pokemon {
  pokemonIndex = 563,
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
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, overheat, signalBeam, foulPlay, electroweb, snore],
  numHeals = baseNumHeals
}

tirtouga :: Pokemon
tirtouga = Pokemon {
  pokemonIndex = 564,
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
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, hydroPump, signalBeam, foulPlay, electroweb, snore],
  numHeals = baseNumHeals
}

carracosta :: Pokemon
carracosta = Pokemon {
  pokemonIndex = 565,
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
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, blizzard, signalBeam, foulPlay, electroweb, snore],
  numHeals = baseNumHeals
}

archen :: Pokemon
archen = Pokemon {
  pokemonIndex = 566,
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
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, airSlash, signalBeam, foulPlay, electroweb, snore],
  numHeals = baseNumHeals
}

archeops :: Pokemon
archeops = Pokemon {
  pokemonIndex = 567,
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
  pokemonMoves = [discharge, astonish, thunderShock, uproar, shockWave, ominousWind, hex, hiddenPower, thunderbolt, thunder, shadowBall, facade, thief, roundMove, chargeBeam, voltSwitch, dreamEater, darkPulse, leafStorm, signalBeam, foulPlay, electroweb, snore],
  numHeals = baseNumHeals
}

trubbish :: Pokemon
trubbish = Pokemon {
  pokemonIndex = 568,
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
  pokemonMoves = [confusion, swift, futureSight, extrasensory, psyshock, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, facade, roundMove, energyBall, chargeBeam, acrobatics, gigaImpact, dreamEater, uturn, dazzlingGleam, signalBeam, thunderPunch, firePunch, icePunch, foulPlay, zenHeadbutt, ironTail, snore, knockOff, gigaDrain, shockWave, waterPulse],
  numHeals = baseNumHeals
}

garbodor :: Pokemon
garbodor = Pokemon {
  pokemonIndex = 569,
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
  pokemonMoves = [confusion, swift, futureSight, extrasensory, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, psychic, shadowBall, facade, roundMove, energyBall, chargeBeam, acrobatics, gigaImpact, dreamEater, uturn, dazzlingGleam, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, ironTail, snore, knockOff, shockWave, waterPulse],
  numHeals = baseNumHeals
}

zorua :: Pokemon
zorua = Pokemon {
  pokemonIndex = 570,
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
  pokemonMoves = [lastResort, confusion, swift, uproar, futureSight, extrasensory, explosion, psyshock, hiddenPower, hyperBeam, thunderbolt, thunder, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, energyBall, chargeBeam, acrobatics, payback, gigaImpact, dreamEater, uturn, dazzlingGleam, signalBeam, thunderPunch, firePunch, icePunch, zenHeadbutt, ironTail, snore, knockOff, shockWave, waterPulse],
  numHeals = baseNumHeals
}

zoroark :: Pokemon
zoroark = Pokemon {
  pokemonIndex = 571,
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
  pokemonMoves = [dragonBreath, metalClaw, ancientPower, slash, powerGem, dragonClaw, earthPower, auraSphere, ironTail, roarofTime, flashCannon, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, echoedVoice, overheat, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, dracoMeteor, ironHead, dragonPulse, hyperVoice, snore, shockWave, outrage],
  numHeals = baseNumHeals
}

minccino :: Pokemon
minccino = Pokemon {
  pokemonIndex = 572,
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
  pokemonMoves = [dragonBreath, waterPulse, ancientPower, slash, powerGem, aquaTail, dragonClaw, earthPower, auraSphere, spacialRend, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, earthquake, brickBreak, flamethrower, fireBlast, rockTomb, aerialAce, facade, roundMove, echoedVoice, focusBlast, shadowClaw, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, surf, dracoMeteor, dragonPulse, hyperVoice, snore, focusPunch, shockWave, outrage],
  numHeals = baseNumHeals
}

cinccino :: Pokemon
cinccino = Pokemon {
  pokemonIndex = 573,
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
  pokemonMoves = [magmaStorm, heatWave, earthPower, ironHead, fireSpin, ancientPower, fireFang, crunch, lavaPlume, stoneEdge, hiddenPower, hyperBeam, solarBeam, earthquake, flamethrower, fireBlast, rockTomb, facade, flameCharge, roundMove, overheat, explosion, payback, gigaImpact, bulldoze, rockSlide, flashCannon, darkPulse, bugBite, uproar, dragonPulse, snore],
  numHeals = baseNumHeals
}

gothita :: Pokemon
gothita = Pokemon {
  pokemonIndex = 574,
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
  pokemonMoves = [firePunch, icePunch, thunderPunch, dizzyPunch, knockOff, revenge, zenHeadbutt, payback, gigaImpact, hiddenPower, hyperBeam, smackDown, thunderbolt, thunder, earthquake, brickBreak, rockTomb, aerialAce, facade, roundMove, focusBlast, stoneEdge, bulldoze, rockSlide, ironHead, earthPower, superpower, icyWind, snore, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

gothorita :: Pokemon
gothorita = Pokemon {
  pokemonIndex = 575,
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
  pokemonMoves = [dragonBreath, ominousWind, ancientPower, slash, shadowSneak, dragonClaw, earthPower, auraSphere, shadowClaw, shadowForce, hex, hiddenPower, hyperBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, aerialAce, facade, roundMove, echoedVoice, steelWing, energyBall, chargeBeam, brutalSwing, payback, gigaImpact, stoneEdge, fly, bulldoze, dragonTail, dreamEater, darkPulse, dracoMeteor, ironHead, icyWind, aquaTail, dragonPulse, hyperVoice, ironTail, snore, shockWave, outrage],
  numHeals = baseNumHeals
}

gothitelle :: Pokemon
gothitelle = Pokemon {
  pokemonIndex = 576,
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
  pokemonMoves = [dragonBreath, ominousWind, ancientPower, slash, shadowSneak, dragonClaw, earthPower, auraSphere, shadowClaw, shadowForce, hex, hiddenPower, hyperBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, aerialAce, facade, roundMove, echoedVoice, steelWing, energyBall, chargeBeam, brutalSwing, payback, gigaImpact, stoneEdge, fly, bulldoze, dragonTail, dreamEater, darkPulse, dracoMeteor, ironHead, icyWind, aquaTail, dragonPulse, hyperVoice, ironTail, snore, shockWave, outrage],
  numHeals = baseNumHeals
}

solosis :: Pokemon
solosis = Pokemon {
  pokemonIndex = 577,
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
  pokemonMoves = [psychoCut, confusion, auroraBeam, futureSight, slash, psychic, moonblast, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, shadowBall, facade, roundMove, energyBall, chargeBeam, gigaImpact, dreamEater, signalBeam, icyWind, zenHeadbutt, snore],
  numHeals = baseNumHeals
}

duosion :: Pokemon
duosion = Pokemon {
  pokemonIndex = 578,
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
  pokemonMoves = [bubble, bubbleBeam, whirlpool, waterPulse, dive, hiddenPower, iceBeam, blizzard, facade, roundMove, scald, uturn, surf, waterfall, dazzlingGleam, covet, signalBeam, bounce, uproar, lastResort, icyWind, snore, knockOff],
  numHeals = baseNumHeals
}

reuniclus :: Pokemon
reuniclus = Pokemon {
  pokemonIndex = 579,
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
  pokemonMoves = [bubble, bubbleBeam, whirlpool, waterPulse, dive, hiddenPower, iceBeam, blizzard, hyperBeam, psychic, shadowBall, facade, roundMove, energyBall, scald, gigaImpact, uturn, surf, waterfall, dazzlingGleam, covet, signalBeam, bounce, uproar, lastResort, icyWind, snore, knockOff],
  numHeals = baseNumHeals
}

ducklett :: Pokemon
ducklett = Pokemon {
  pokemonIndex = 580,
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
  pokemonMoves = [ominousWind, quickAttack, feintAttack, dreamEater, darkPulse, hiddenPower, iceBeam, blizzard, hyperBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, roundMove, focusBlast, chargeBeam, shadowClaw, payback, gigaImpact, rockSlide, xScissor, poisonJab, snarl, foulPlay, lastResort, icyWind, snore, knockOff, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

swanna :: Pokemon
swanna = Pokemon {
  pokemonIndex = 581,
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
  pokemonMoves = [magicalLeaf, energyBall, seedFlare, hiddenPower, hyperBeam, solarBeam, psychic, facade, roundMove, gigaImpact, dazzlingGleam, covet, seedBomb, earthPower, lastResort, zenHeadbutt, snore, gigaDrain],
  numHeals = baseNumHeals
}

vanillite :: Pokemon
vanillite = Pokemon {
  pokemonIndex = 582,
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
  pokemonMoves = [magicalLeaf, quickAttack, airSlash, energyBall, leafStorm, seedFlare, hiddenPower, hyperBeam, solarBeam, psychic, facade, roundMove, gigaImpact, dazzlingGleam, covet, seedBomb, lastResort, zenHeadbutt, snore, gigaDrain],
  numHeals = baseNumHeals
}

vanillish :: Pokemon
vanillish = Pokemon {
  pokemonIndex = 583,
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
  pokemonMoves = [earthPower, hyperVoice, extremeSpeed, futureSight, hyperBeam, judgment, dragonClaw, psyshock, hiddenPower, iceBeam, blizzard, solarBeam, thunderbolt, thunder, earthquake, psychic, shadowBall, brickBreak, flamethrower, sludgeBomb, fireBlast, rockTomb, aerialAce, facade, roundMove, echoedVoice, overheat, focusBlast, energyBall, chargeBeam, shadowClaw, payback, gigaImpact, stoneEdge, fly, bulldoze, rockSlide, xScissor, poisonJab, dreamEater, flashCannon, surf, snarl, darkPulse, waterfall, dracoMeteor, signalBeam, ironHead, lastResort, icyWind, aquaTail, zenHeadbutt, dragonPulse, ironTail, snore, heatWave, gigaDrain, shockWave, waterPulse, outrage],
  numHeals = baseNumHeals
}

vanilluxe :: Pokemon
vanilluxe = Pokemon {
  pokemonIndex = 584,
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
  pokemonMoves = [searingShot, confusion, incinerate, quickAttack, headbutt, flameCharge, flameBurst, zenHeadbutt, inferno, doubleEdge, flareBlitz, storedPower, overheat, psyshock, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, brickBreak, flamethrower, fireBlast, facade, roundMove, focusBlast, energyBall, chargeBeam, gigaImpact, uturn, wildCharge, dazzlingGleam, signalBeam, bounce, uproar, thunderPunch, firePunch, lastResort, snore, heatWave, shockWave],
  numHeals = baseNumHeals
}

deerling :: Pokemon
deerling = Pokemon {
  pokemonIndex = 585,
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
  pokemonMoves = [tackle, vineWhip, wrap, leafTornado, megaDrain, slam, leafBlade, gigaDrain, leafStorm, hiddenPower, solarBeam, aerialAce, facade, roundMove, energyBall, frenzyPlant, ironTail, magicalLeaf, pursuit, twister, seedBomb, aquaTail, bind, snore, knockOff],
  numHeals = baseNumHeals
}

sawsbuck :: Pokemon
sawsbuck = Pokemon {
  pokemonIndex = 586,
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
  pokemonMoves = [tackle, vineWhip, wrap, leafTornado, megaDrain, slam, leafBlade, gigaDrain, leafStorm, hiddenPower, solarBeam, aerialAce, facade, roundMove, energyBall, frenzyPlant, ironTail, magicalLeaf, pursuit, twister, seedBomb, aquaTail, bind, snore, knockOff],
  numHeals = baseNumHeals
}

emolga :: Pokemon
emolga = Pokemon {
  pokemonIndex = 587,
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
  pokemonMoves = [tackle, vineWhip, wrap, leafTornado, megaDrain, slam, leafBlade, gigaDrain, leafStorm, hiddenPower, hyperBeam, solarBeam, aerialAce, facade, roundMove, energyBall, brutalSwing, gigaImpact, dragonTail, frenzyPlant, grassPledge, ironTail, magicalLeaf, pursuit, twister, seedBomb, aquaTail, dragonPulse, bind, snore, knockOff, outrage],
  numHeals = baseNumHeals
}

karrablast :: Pokemon
karrablast = Pokemon {
  pokemonIndex = 588,
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
  pokemonMoves = [tackle, ember, flameCharge, smog, rollout, takeDown, assurance, flamethrower, headSmash, flareBlitz, hiddenPower, solarBeam, fireBlast, rockTomb, facade, roundMove, echoedVoice, overheat, wildCharge, blastBurn, covet, bodySlam, thrash, superpower, suckerPunch, zenHeadbutt, ironTail, snore, heatWave],
  numHeals = baseNumHeals
}

escavalier :: Pokemon
escavalier = Pokemon {
  pokemonIndex = 589,
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
  pokemonMoves = [armThrust, tackle, ember, flameCharge, smog, rollout, takeDown, assurance, flamethrower, headSmash, flareBlitz, hiddenPower, solarBeam, brickBreak, fireBlast, rockTomb, facade, lowSweep, roundMove, echoedVoice, overheat, focusBlast, stoneEdge, bulldoze, rockSlide, poisonJab, wildCharge, blastBurn, covet, bodySlam, thrash, superpower, suckerPunch, thunderPunch, firePunch, zenHeadbutt, ironTail, snore, heatWave, focusPunch],
  numHeals = baseNumHeals
}

foongus :: Pokemon
foongus = Pokemon {
  pokemonIndex = 590,
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
  pokemonMoves = [armThrust, hammerArm, tackle, ember, flameCharge, smog, rollout, takeDown, assurance, flamethrower, headSmash, flareBlitz, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, brickBreak, fireBlast, rockTomb, facade, lowSweep, roundMove, echoedVoice, overheat, focusBlast, scald, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, wildCharge, blastBurn, firePledge, covet, bodySlam, thrash, superpower, suckerPunch, ironHead, thunderPunch, firePunch, zenHeadbutt, ironTail, snore, heatWave, focusPunch],
  numHeals = baseNumHeals
}

amoonguss :: Pokemon
amoonguss = Pokemon {
  pokemonIndex = 591,
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
  pokemonMoves = [tackle, waterGun, razorShell, furyCutter, waterPulse, revenge, aquaJet, aquaTail, retaliate, hydroPump, hiddenPower, iceBeam, blizzard, aerialAce, facade, roundMove, falseSwipe, scald, xScissor, surf, waterfall, hydroCannon, airSlash, assurance, brine, nightSlash, covet, icyWind, ironTail, snore],
  numHeals = baseNumHeals
}

frillish :: Pokemon
frillish = Pokemon {
  pokemonIndex = 592,
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
  pokemonMoves = [tackle, waterGun, razorShell, furyCutter, waterPulse, revenge, aquaJet, aquaTail, retaliate, hydroPump, hiddenPower, iceBeam, blizzard, aerialAce, facade, roundMove, falseSwipe, scald, xScissor, surf, waterfall, hydroCannon, airSlash, assurance, brine, nightSlash, covet, icyWind, ironTail, snore],
  numHeals = baseNumHeals
}

jellicent :: Pokemon
jellicent = Pokemon {
  pokemonIndex = 593,
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
  pokemonMoves = [slash, megahorn, tackle, waterGun, razorShell, furyCutter, waterPulse, revenge, aquaJet, aquaTail, retaliate, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, aerialAce, facade, roundMove, falseSwipe, scald, smartStrike, gigaImpact, xScissor, dragonTail, surf, waterfall, hydroCannon, waterPledge, airSlash, assurance, brine, nightSlash, covet, superpower, icyWind, ironTail, snore, knockOff],
  numHeals = baseNumHeals
}

alomomola :: Pokemon
alomomola = Pokemon {
  pokemonIndex = 594,
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
  pokemonMoves = [tackle, bite, crunch, hyperFang, slam, hiddenPower, thunderbolt, shadowBall, facade, roundMove, ironTail, assurance, pursuit, revenge, covet, seedBomb, gunkShot, lastResort, aquaTail, zenHeadbutt, snore, shockWave],
  numHeals = baseNumHeals
}

joltik :: Pokemon
joltik = Pokemon {
  pokemonIndex = 595,
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
  pokemonMoves = [tackle, bite, crunch, hyperFang, slam, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, flamethrower, facade, roundMove, focusBlast, gigaImpact, dreamEater, ironTail, assurance, pursuit, revenge, covet, signalBeam, seedBomb, gunkShot, thunderPunch, firePunch, icePunch, lastResort, aquaTail, zenHeadbutt, snore, knockOff, focusPunch, shockWave],
  numHeals = baseNumHeals
}

galvantula :: Pokemon
galvantula = Pokemon {
  pokemonIndex = 596,
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
  pokemonMoves = [tackle, bite, takeDown, crunch, retaliate, lastResort, gigaImpact, playRough, hiddenPower, thunderbolt, shadowBall, rockTomb, aerialAce, facade, roundMove, wildCharge, snarl, mudSlap, lick, pursuit, fireFang, thunderFang, iceFang, psychicFangs, covet, uproar, hyperVoice, snore, shockWave],
  numHeals = baseNumHeals
}

ferroseed :: Pokemon
ferroseed = Pokemon {
  pokemonIndex = 597,
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
  pokemonMoves = [tackle, bite, takeDown, crunch, retaliate, lastResort, gigaImpact, playRough, hiddenPower, thunderbolt, shadowBall, rockTomb, aerialAce, facade, roundMove, payback, wildCharge, surf, snarl, mudSlap, lick, pursuit, fireFang, thunderFang, iceFang, psychicFangs, covet, uproar, hyperVoice, snore, shockWave],
  numHeals = baseNumHeals
}

ferrothorn :: Pokemon
ferrothorn = Pokemon {
  pokemonIndex = 598,
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
  pokemonMoves = [iceFang, fireFang, thunderFang, tackle, bite, takeDown, crunch, retaliate, lastResort, gigaImpact, playRough, hiddenPower, hyperBeam, thunderbolt, thunder, shadowBall, rockTomb, aerialAce, facade, roundMove, payback, wildCharge, surf, snarl, mudSlap, lick, pursuit, psychicFangs, covet, ironHead, uproar, superpower, hyperVoice, snore, shockWave],
  numHeals = baseNumHeals
}

klink :: Pokemon
klink = Pokemon {
  pokemonIndex = 599,
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
  pokemonMoves = [scratch, furySwipes, pursuit, fakeOut, assurance, slash, nightSlash, suckerPunch, playRough, hiddenPower, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, dreamEater, uturn, snarl, darkPulse, payDay, foulPlay, feintAttack, covet, seedBomb, gunkShot, hyperVoice, ironTail, snore, knockOff],
  numHeals = baseNumHeals
}

klang :: Pokemon
klang = Pokemon {
  pokemonIndex = 600,
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
  pokemonMoves = [scratch, furySwipes, pursuit, fakeOut, assurance, slash, nightSlash, suckerPunch, playRough, hiddenPower, hyperBeam, shadowBall, aerialAce, facade, thief, roundMove, echoedVoice, shadowClaw, payback, gigaImpact, dreamEater, uturn, snarl, darkPulse, payDay, foulPlay, feintAttack, covet, seedBomb, gunkShot, hyperVoice, ironTail, snore, knockOff],
  numHeals = baseNumHeals
}

klinklang :: Pokemon
klinklang = Pokemon {
  pokemonIndex = 601,
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
  pokemonMoves = [scratch, lick, vineWhip, furySwipes, bite, seedBomb, acrobatics, crunch, hiddenPower, solarBeam, rockTomb, facade, thief, lowSweep, roundMove, energyBall, shadowClaw, payback, frenzyPlant, covet, astonish, magicalLeaf, bulletSeed, leafStorm, disarmingVoice, gunkShot, uproar, ironTail, snore, knockOff, gigaDrain, focusPunch],
  numHeals = baseNumHeals
}

tynamo :: Pokemon
tynamo = Pokemon {
  pokemonIndex = 602,
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
  pokemonMoves = [lick, furySwipes, seedBomb, hiddenPower, hyperBeam, solarBeam, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, energyBall, acrobatics, shadowClaw, payback, gigaImpact, rockSlide, frenzyPlant, covet, astonish, magicalLeaf, bulletSeed, leafStorm, disarmingVoice, gunkShot, uproar, superpower, ironTail, snore, knockOff, gigaDrain, focusPunch, scratch, vineWhip, bite, crunch],
  numHeals = baseNumHeals
}

eelektrik :: Pokemon
eelektrik = Pokemon {
  pokemonIndex = 603,
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
  pokemonMoves = [scratch, lick, incinerate, furySwipes, bite, flameBurst, acrobatics, fireBlast, crunch, hiddenPower, solarBeam, flamethrower, rockTomb, facade, flameCharge, thief, lowSweep, roundMove, overheat, shadowClaw, payback, blastBurn, covet, astonish, fireSpin, firePunch, heatWave, disarmingVoice, gunkShot, uproar, ironTail, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

eelektross :: Pokemon
eelektross = Pokemon {
  pokemonIndex = 604,
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
  pokemonMoves = [lick, furySwipes, flameBurst, hiddenPower, hyperBeam, solarBeam, brickBreak, flamethrower, fireBlast, rockTomb, facade, flameCharge, thief, lowSweep, roundMove, overheat, focusBlast, acrobatics, shadowClaw, payback, gigaImpact, rockSlide, blastBurn, covet, astonish, fireSpin, firePunch, heatWave, disarmingVoice, gunkShot, uproar, superpower, ironTail, snore, knockOff, focusPunch, scratch, incinerate, bite, crunch],
  numHeals = baseNumHeals
}

elgyem :: Pokemon
elgyem = Pokemon {
  pokemonIndex = 605,
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
  pokemonMoves = [scratch, lick, waterGun, furySwipes, bite, scald, acrobatics, brine, crunch, hiddenPower, iceBeam, blizzard, rockTomb, facade, thief, lowSweep, roundMove, shadowClaw, payback, surf, waterfall, hydroCannon, covet, astonish, aquaTail, hydroPump, disarmingVoice, gunkShot, uproar, icePunch, icyWind, ironTail, snore, knockOff, focusPunch, waterPulse],
  numHeals = baseNumHeals
}

beheeyem :: Pokemon
beheeyem = Pokemon {
  pokemonIndex = 606,
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
  pokemonMoves = [lick, furySwipes, scald, hiddenPower, iceBeam, blizzard, hyperBeam, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, focusBlast, acrobatics, shadowClaw, payback, gigaImpact, rockSlide, surf, waterfall, hydroCannon, covet, astonish, aquaTail, hydroPump, disarmingVoice, gunkShot, uproar, icePunch, superpower, icyWind, ironTail, snore, knockOff, focusPunch, waterPulse, scratch, waterGun, bite, brine, crunch],
  numHeals = baseNumHeals
}

litwick :: Pokemon
litwick = Pokemon {
  pokemonIndex = 607,
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
  pokemonMoves = [psybeam, zenHeadbutt, synchronoise, futureSight, psychic, dreamEater, storedPower, psyshock, hiddenPower, shadowBall, rockTomb, facade, roundMove, energyBall, chargeBeam, rockSlide, dazzlingGleam, secretPower, swift, signalBeam, snore, shockWave],
  numHeals = baseNumHeals
}

lampent :: Pokemon
lampent = Pokemon {
  pokemonIndex = 608,
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
  pokemonMoves = [psybeam, psyshock, hiddenPower, hyperBeam, psychic, shadowBall, rockTomb, facade, roundMove, energyBall, chargeBeam, gigaImpact, rockSlide, dreamEater, dazzlingGleam, secretPower, swift, signalBeam, zenHeadbutt, snore, shockWave, synchronoise, futureSight, storedPower],
  numHeals = baseNumHeals
}

chandelure :: Pokemon
chandelure = Pokemon {
  pokemonIndex = 609,
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
  pokemonMoves = [gust, quickAttack, airCutter, airSlash, razorWind, facade, skyAttack, hiddenPower, aerialAce, roundMove, echoedVoice, steelWing, fly, uturn, uproar, nightSlash, snore, heatWave],
  numHeals = baseNumHeals
}

axew :: Pokemon
axew = Pokemon {
  pokemonIndex = 610,
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
  pokemonMoves = [gust, quickAttack, airCutter, airSlash, razorWind, facade, skyAttack, hiddenPower, aerialAce, roundMove, echoedVoice, steelWing, fly, uturn, uproar, nightSlash, snore, heatWave],
  numHeals = baseNumHeals
}

fraxure :: Pokemon
fraxure = Pokemon {
  pokemonIndex = 611,
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
  pokemonMoves = [gust, quickAttack, airCutter, airSlash, razorWind, facade, skyAttack, hiddenPower, hyperBeam, aerialAce, roundMove, echoedVoice, steelWing, gigaImpact, fly, uturn, uproar, nightSlash, snore, heatWave],
  numHeals = baseNumHeals
}

haxorus :: Pokemon
haxorus = Pokemon {
  pokemonIndex = 612,
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
  pokemonMoves = [quickAttack, shockWave, flameCharge, pursuit, spark, stomp, discharge, wildCharge, thrash, hiddenPower, thunderbolt, thunder, facade, roundMove, chargeBeam, voltSwitch, takeDown, doubleKick, rage, doubleEdge, signalBeam, bounce, snore],
  numHeals = baseNumHeals
}

cubchoo :: Pokemon
cubchoo = Pokemon {
  pokemonIndex = 613,
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
  pokemonMoves = [quickAttack, shockWave, flameCharge, pursuit, spark, stomp, discharge, wildCharge, thrash, hiddenPower, hyperBeam, thunderbolt, thunder, facade, roundMove, overheat, chargeBeam, gigaImpact, voltSwitch, takeDown, doubleKick, rage, doubleEdge, signalBeam, bounce, snore],
  numHeals = baseNumHeals
}

beartic :: Pokemon
beartic = Pokemon {
  pokemonIndex = 614,
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
  pokemonMoves = [tackle, headbutt, rockBlast, mudSlap, smackDown, rockSlide, stoneEdge, explosion, hiddenPower, earthquake, rockTomb, facade, roundMove, bulldoze, flashCannon, takeDown, earthPower, snore],
  numHeals = baseNumHeals
}

cryogonal :: Pokemon
cryogonal = Pokemon {
  pokemonIndex = 615,
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
  pokemonMoves = [powerGem, tackle, headbutt, rockBlast, mudSlap, smackDown, rockSlide, stoneEdge, explosion, hiddenPower, earthquake, rockTomb, facade, roundMove, bulldoze, flashCannon, takeDown, earthPower, snore],
  numHeals = baseNumHeals
}

shelmet :: Pokemon
shelmet = Pokemon {
  pokemonIndex = 616,
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
  pokemonMoves = [powerGem, tackle, headbutt, rockBlast, mudSlap, smackDown, rockSlide, stoneEdge, explosion, hiddenPower, hyperBeam, solarBeam, earthquake, rockTomb, facade, roundMove, gigaImpact, bulldoze, flashCannon, takeDown, ironHead, earthPower, superpower, snore],
  numHeals = baseNumHeals
}

accelgor :: Pokemon
accelgor = Pokemon {
  pokemonIndex = 617,
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
  pokemonMoves = [confusion, gust, assurance, heartStamp, airCutter, airSlash, futureSight, psychic, psyshock, hiddenPower, shadowBall, aerialAce, facade, thief, roundMove, steelWing, energyBall, chargeBeam, acrobatics, fly, dreamEater, uturn, knockOff, synchronoise, storedPower, signalBeam, uproar, zenHeadbutt, snore, heatWave, gigaDrain, shockWave],
  numHeals = baseNumHeals
}

stunfisk :: Pokemon
stunfisk = Pokemon {
  pokemonIndex = 618,
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
  pokemonMoves = [confusion, gust, assurance, heartStamp, airCutter, airSlash, futureSight, psychic, psyshock, hiddenPower, hyperBeam, shadowBall, aerialAce, facade, thief, roundMove, steelWing, energyBall, chargeBeam, acrobatics, gigaImpact, fly, dreamEater, uturn, knockOff, synchronoise, storedPower, signalBeam, uproar, zenHeadbutt, snore, heatWave, skyAttack, gigaDrain, shockWave],
  numHeals = baseNumHeals
}

mienfoo :: Pokemon
mienfoo = Pokemon {
  pokemonIndex = 619,
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
  pokemonMoves = [scratch, rapidSpin, mudSlap, furySwipes, metalClaw, dig, slash, rockSlide, earthquake, drillRun, hiddenPower, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, shadowClaw, bulldoze, xScissor, poisonJab, earthPower, crushClaw, submission, skullBash, rockClimb, snore],
  numHeals = baseNumHeals
}

mienshao :: Pokemon
mienshao = Pokemon {
  pokemonIndex = 620,
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
  pokemonMoves = [scratch, rapidSpin, mudSlap, furySwipes, metalClaw, dig, slash, rockSlide, earthquake, drillRun, hiddenPower, hyperBeam, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, roundMove, focusBlast, brutalSwing, shadowClaw, smartStrike, gigaImpact, bulldoze, xScissor, poisonJab, earthPower, crushClaw, submission, skullBash, rockClimb, ironHead, snore],
  numHeals = baseNumHeals
}

druddigon :: Pokemon
druddigon = Pokemon {
  pokemonIndex = 621,
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
  pokemonMoves = [lastResort, hyperVoice, pound, disarmingVoice, doubleSlap, secretPower, takeDown, doubleEdge, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, chargeBeam, dreamEater, wildCharge, surf, dazzlingGleam, drainingKiss, covet, signalBeam, uproar, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, ironTail, snore, knockOff, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

golett :: Pokemon
golett = Pokemon {
  pokemonIndex = 622,
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
  pokemonMoves = [lastResort, hyperVoice, pound, disarmingVoice, doubleSlap, secretPower, takeDown, doubleEdge, psyshock, hiddenPower, iceBeam, blizzard, hyperBeam, solarBeam, thunderbolt, thunder, psychic, shadowBall, flamethrower, fireBlast, facade, roundMove, echoedVoice, chargeBeam, dreamEater, wildCharge, surf, dazzlingGleam, drainingKiss, covet, signalBeam, uproar, thunderPunch, firePunch, icePunch, icyWind, zenHeadbutt, ironTail, snore, knockOff, drainPunch, focusPunch],
  numHeals = baseNumHeals
}

golurk :: Pokemon
golurk = Pokemon {
  pokemonIndex = 623,
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
  pokemonMoves = [pound, rockThrow, wakeUpSlap, chipAway, rockSlide, dynamicPunch, hammerArm, stoneEdge, focusPunch, superpower, hiddenPower, smackDown, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, brutalSwing, payback, poisonJab, drainPunch, cometPunch, smellingSalts, forcePalm, machPunch, thunderPunch, firePunch, icePunch, snore, knockOff],
  numHeals = baseNumHeals
}

pawniard :: Pokemon
pawniard = Pokemon {
  pokemonIndex = 624,
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
  pokemonMoves = [pound, rockThrow, wakeUpSlap, chipAway, rockSlide, dynamicPunch, hammerArm, stoneEdge, focusPunch, superpower, hiddenPower, smackDown, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, brutalSwing, payback, poisonJab, drainPunch, cometPunch, smellingSalts, forcePalm, machPunch, thunderPunch, firePunch, icePunch, snore, knockOff],
  numHeals = baseNumHeals
}

bisharp :: Pokemon
bisharp = Pokemon {
  pokemonIndex = 625,
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
  pokemonMoves = [pound, rockThrow, wakeUpSlap, chipAway, rockSlide, dynamicPunch, hammerArm, stoneEdge, focusPunch, superpower, hiddenPower, hyperBeam, smackDown, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, brutalSwing, payback, gigaImpact, bulldoze, poisonJab, drainPunch, cometPunch, smellingSalts, forcePalm, machPunch, thunderPunch, firePunch, icePunch, snore, knockOff],
  numHeals = baseNumHeals
}

bouffalant :: Pokemon
bouffalant = Pokemon {
  pokemonIndex = 626,
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
  pokemonMoves = [bubble, roundMove, bubbleBeam, mudShot, uproar, muddyWater, echoedVoice, hydroPump, hyperVoice, hiddenPower, sludgeWave, sludgeBomb, facade, scald, infestation, surf, waterPulse, mudBomb, snore, earthPower, bounce, icyWind],
  numHeals = baseNumHeals
}

rufflet :: Pokemon
rufflet = Pokemon {
  pokemonIndex = 627,
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
  pokemonMoves = [bubble, roundMove, bubbleBeam, mudShot, uproar, muddyWater, echoedVoice, hydroPump, hyperVoice, hiddenPower, sludgeWave, sludgeBomb, facade, scald, bulldoze, infestation, surf, waterPulse, mudBomb, snore, earthPower, bounce, icyWind, focusPunch],
  numHeals = baseNumHeals
}

braviary :: Pokemon
braviary = Pokemon {
  pokemonIndex = 628,
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
  pokemonMoves = [acid, bubble, roundMove, bubbleBeam, mudShot, uproar, muddyWater, drainPunch, echoedVoice, hydroPump, hyperVoice, venoshock, hiddenPower, hyperBeam, earthquake, brickBreak, sludgeWave, sludgeBomb, rockTomb, facade, focusBlast, scald, payback, gigaImpact, bulldoze, rockSlide, infestation, poisonJab, surf, waterPulse, mudBomb, snore, earthPower, bounce, icePunch, icyWind, knockOff, focusPunch],
  numHeals = baseNumHeals
}

vullaby :: Pokemon
vullaby = Pokemon {
  pokemonIndex = 629,
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
  pokemonMoves = [bind, vitalThrow, revenge, stormThrow, bodySlam, circleThrow, superpower, hiddenPower, earthquake, brickBreak, rockTomb, facade, lowSweep, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, thunderPunch, firePunch, icePunch, zenHeadbutt, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

mandibuzz :: Pokemon
mandibuzz = Pokemon {
  pokemonIndex = 630,
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
  pokemonMoves = [rockSmash, doubleKick, lowSweep, karateChop, brickBreak, retaliate, closeCombat, hiddenPower, earthquake, rockTomb, facade, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, poisonJab, dualChop, thunderPunch, firePunch, icePunch, superpower, zenHeadbutt, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

heatmor :: Pokemon
heatmor = Pokemon {
  pokemonIndex = 631,
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
  pokemonMoves = [tackle, bugBite, razorLeaf, struggleBug, bugBuzz, hiddenPower, solarBeam, facade, roundMove, energyBall, payback, dreamEater, silverWind, razorWind, airSlash, signalBeam, seedBomb, electroweb, snore, gigaDrain],
  numHeals = baseNumHeals
}

durant :: Pokemon
durant = Pokemon {
  pokemonIndex = 632,
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
  pokemonMoves = [tackle, bugBite, razorLeaf, hiddenPower, solarBeam, facade, roundMove, energyBall, payback, dreamEater, silverWind, razorWind, airSlash, signalBeam, seedBomb, electroweb, snore, gigaDrain, struggleBug, bugBuzz],
  numHeals = baseNumHeals
}

deino :: Pokemon
deino = Pokemon {
  pokemonIndex = 633,
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
  pokemonMoves = [slash, falseSwipe, tackle, bugBite, razorLeaf, struggleBug, fellStinger, leafBlade, xScissor, leafStorm, hiddenPower, hyperBeam, solarBeam, aerialAce, facade, roundMove, steelWing, energyBall, shadowClaw, payback, gigaImpact, poisonJab, dreamEater, silverWind, razorWind, airSlash, signalBeam, seedBomb, electroweb, snore, knockOff, gigaDrain, bugBuzz],
  numHeals = baseNumHeals
}

zweilous :: Pokemon
zweilous = Pokemon {
  pokemonIndex = 634,
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
  pokemonMoves = [rollout, poisonSting, pursuit, poisonTail, bugBite, venoshock, steamroller, rockClimb, doubleEdge, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, payback, infestation, poisonJab, twineedle, pinMissile, takeDown, signalBeam, snore],
  numHeals = baseNumHeals
}

hydreigon :: Pokemon
hydreigon = Pokemon {
  pokemonIndex = 635,
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
  pokemonMoves = [rollout, poisonSting, pursuit, poisonTail, bugBite, venoshock, steamroller, rockClimb, doubleEdge, hiddenPower, solarBeam, sludgeBomb, facade, roundMove, payback, infestation, poisonJab, twineedle, pinMissile, takeDown, signalBeam, snore],
  numHeals = baseNumHeals
}

larvesta :: Pokemon
larvesta = Pokemon {
  pokemonIndex = 636,
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
  pokemonMoves = [megahorn, rollout, poisonSting, pursuit, poisonTail, bugBite, venoshock, steamroller, rockClimb, doubleEdge, hiddenPower, hyperBeam, solarBeam, earthquake, sludgeBomb, rockTomb, facade, roundMove, payback, smartStrike, gigaImpact, bulldoze, rockSlide, xScissor, infestation, poisonJab, twineedle, pinMissile, takeDown, signalBeam, superpower, aquaTail, ironTail, snore],
  numHeals = baseNumHeals
}

volcarona :: Pokemon
volcarona = Pokemon {
  pokemonIndex = 637,
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
  pokemonMoves = [absorb, fairyWind, megaDrain, razorLeaf, gigaDrain, energyBall, solarBeam, hiddenPower, facade, roundMove, dreamEater, dazzlingGleam, covet, seedBomb, snore, knockOff],
  numHeals = baseNumHeals
}

cobalion :: Pokemon
cobalion = Pokemon {
  pokemonIndex = 638,
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
  pokemonMoves = [megaDrain, gust, hurricane, moonblast, hiddenPower, hyperBeam, solarBeam, psychic, shadowBall, facade, thief, roundMove, energyBall, gigaImpact, dreamEater, uturn, dazzlingGleam, covet, seedBomb, snore, knockOff, gigaDrain, absorb, fairyWind, razorLeaf],
  numHeals = baseNumHeals
}

terrakion :: Pokemon
terrakion = Pokemon {
  pokemonIndex = 639,
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
  pokemonMoves = [absorb, megaDrain, magicalLeaf, gigaDrain, energyBall, leafStorm, hiddenPower, solarBeam, facade, roundMove, dreamEater, covet, seedBomb, snore],
  numHeals = baseNumHeals
}

virizion :: Pokemon
virizion = Pokemon {
  pokemonIndex = 640,
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
  pokemonMoves = [megaDrain, petalDance, petalBlizzard, hiddenPower, hyperBeam, solarBeam, facade, roundMove, energyBall, gigaImpact, dreamEater, covet, seedBomb, snore, gigaDrain, absorb, magicalLeaf, leafStorm],
  numHeals = baseNumHeals
}

tornadus :: Pokemon
tornadus = Pokemon {
  pokemonIndex = 641,
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
  pokemonMoves = [tackle, waterGun, uproar, headbutt, bite, aquaJet, chipAway, takeDown, crunch, aquaTail, doubleEdge, thrash, headSmash, hiddenPower, iceBeam, facade, roundMove, scald, surf, waterfall, swift, bubbleBeam, mudShot, muddyWater, whirlpool, rage, brine, revenge, bounce, superpower, icyWind, zenHeadbutt, snore],
  numHeals = baseNumHeals
}

thundurus :: Pokemon
thundurus = Pokemon {
  pokemonIndex = 642,
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
  pokemonMoves = [tackle, waterGun, uproar, headbutt, bite, aquaJet, chipAway, takeDown, crunch, aquaTail, doubleEdge, thrash, headSmash, hiddenPower, iceBeam, facade, roundMove, scald, surf, waterfall, swift, bubbleBeam, mudShot, muddyWater, whirlpool, rage, brine, revenge, bounce, superpower, icyWind, zenHeadbutt, snore],
  numHeals = baseNumHeals
}

reshiram :: Pokemon
reshiram = Pokemon {
  pokemonIndex = 643,
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
  pokemonMoves = [rage, bite, sandTomb, assurance, mudSlap, crunch, dig, foulPlay, earthquake, thrash, hiddenPower, sludgeBomb, rockTomb, facade, thief, roundMove, payback, stoneEdge, bulldoze, rockSlide, snarl, darkPulse, doubleEdge, rockClimb, pursuit, uproar, fireFang, thunderFang, powerTrip, earthPower, aquaTail, ironTail, snore],
  numHeals = baseNumHeals
}

zekrom :: Pokemon
zekrom = Pokemon {
  pokemonIndex = 644,
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
  pokemonMoves = [rage, bite, sandTomb, assurance, mudSlap, crunch, dig, foulPlay, earthquake, thrash, hiddenPower, brickBreak, sludgeBomb, rockTomb, facade, thief, lowSweep, roundMove, brutalSwing, shadowClaw, payback, stoneEdge, bulldoze, rockSlide, snarl, darkPulse, doubleEdge, rockClimb, pursuit, uproar, fireFang, thunderFang, powerTrip, earthPower, aquaTail, ironTail, snore, knockOff, focusPunch],
  numHeals = baseNumHeals
}

landorus :: Pokemon
landorus = Pokemon {
  pokemonIndex = 645,
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
  pokemonMoves = [powerTrip, rage, bite, sandTomb, assurance, mudSlap, crunch, dig, foulPlay, earthquake, outrage, dragonClaw, hiddenPower, hyperBeam, smackDown, brickBreak, sludgeBomb, rockTomb, aerialAce, facade, thief, lowSweep, roundMove, focusBlast, brutalSwing, shadowClaw, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, dragonTail, snarl, darkPulse, doubleEdge, rockClimb, pursuit, uproar, fireFang, thunderFang, earthPower, superpower, aquaTail, dragonPulse, ironTail, snore, knockOff, focusPunch, thrash],
  numHeals = baseNumHeals
}

kyurem :: Pokemon
kyurem = Pokemon {
  pokemonIndex = 646,
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
  pokemonMoves = [tackle, rollout, incinerate, rage, fireFang, headbutt, uproar, facade, firePunch, thrash, flareBlitz, superpower, overheat, hiddenPower, solarBeam, brickBreak, flamethrower, fireBlast, rockTomb, flameCharge, thief, roundMove, rockSlide, uturn, focusPunch, hammerArm, takeDown, flameWheel, zenHeadbutt, snore, heatWave],
  numHeals = baseNumHeals
}

keldeo :: Pokemon
keldeo = Pokemon {
  pokemonIndex = 647,
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
  pokemonMoves = [hammerArm, tackle, rollout, incinerate, rage, fireFang, headbutt, facade, firePunch, thrash, flareBlitz, superpower, overheat, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, psychic, brickBreak, flamethrower, fireBlast, rockTomb, flameCharge, thief, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, uturn, focusPunch, takeDown, flameWheel, uproar, zenHeadbutt, snore, heatWave],
  numHeals = baseNumHeals
}

meloetta :: Pokemon
meloetta = Pokemon {
  pokemonIndex = 648,
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
  pokemonMoves = [hammerArm, tackle, rollout, incinerate, rage, fireFang, headbutt, facade, firePunch, thrash, flareBlitz, superpower, overheat, hiddenPower, hyperBeam, solarBeam, smackDown, earthquake, psychic, brickBreak, flamethrower, fireBlast, rockTomb, flameCharge, thief, roundMove, focusBlast, payback, gigaImpact, stoneEdge, bulldoze, rockSlide, uturn, focusPunch, takeDown, flameWheel, uproar, zenHeadbutt, snore, heatWave],
  numHeals = baseNumHeals
}

genesect :: Pokemon
genesect = Pokemon {
  pokemonIndex = 649,
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
  pokemonMoves = [peck, absorb, pinMissile, megaDrain, needleArm, gigaDrain, petalDance, suckerPunch, petalBlizzard, solarBeam, hiddenPower, aerialAce, facade, roundMove, energyBall, poisonJab, bulletSeed, bounce, seedBomb, woodHammer, uproar, hyperVoice, snore, knockOff, drainPunch],
  numHeals = baseNumHeals
}

chespin :: Pokemon
chespin = Pokemon {
  pokemonIndex = 650,
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
  pokemonMoves = [furyCutter, rockBlast, feintAttack, smackDown, bugBite, rockSlide, slash, xScissor, rockWrecker, hiddenPower, solarBeam, earthquake, rockTomb, aerialAce, facade, roundMove, shadowClaw, stoneEdge, bulldoze, poisonJab, nightSlash, sandTomb, snore, knockOff],
  numHeals = baseNumHeals
}

quilladin :: Pokemon
quilladin = Pokemon {
  pokemonIndex = 651,
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
  pokemonMoves = [rockBlast, feintAttack, smackDown, bugBite, rockSlide, slash, xScissor, rockWrecker, hiddenPower, hyperBeam, solarBeam, earthquake, rockTomb, aerialAce, facade, roundMove, shadowClaw, gigaImpact, stoneEdge, bulldoze, poisonJab, nightSlash, sandTomb, snore, knockOff, furyCutter],
  numHeals = baseNumHeals
}

chesnaught :: Pokemon
chesnaught = Pokemon {
  pokemonIndex = 652,
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
  pokemonMoves = [headbutt, feintAttack, payback, brickBreak, chipAway, highJumpKick, crunch, facade, rockClimb, focusPunch, headSmash, dragonClaw, hiddenPower, smackDown, sludgeBomb, rockTomb, lowSweep, roundMove, focusBlast, stoneEdge, rockSlide, dragonTail, poisonJab, snarl, darkPulse, drainPunch, fakeOut, firePunch, icePunch, thunderPunch, zenHeadbutt, dualChop, ironHead, foulPlay, dragonPulse, ironTail, snore, knockOff],
  numHeals = baseNumHeals
}

fennekin :: Pokemon
fennekin = Pokemon {
  pokemonIndex = 653,
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
  pokemonMoves = [headbutt, feintAttack, payback, brickBreak, chipAway, highJumpKick, crunch, facade, rockClimb, focusPunch, headSmash, dragonClaw, hiddenPower, hyperBeam, smackDown, sludgeBomb, rockTomb, thief, lowSweep, roundMove, focusBlast, gigaImpact, stoneEdge, rockSlide, dragonTail, poisonJab, snarl, darkPulse, drainPunch, fakeOut, firePunch, icePunch, thunderPunch, zenHeadbutt, dualChop, ironHead, foulPlay, dragonPulse, ironTail, snore, knockOff, outrage],
  numHeals = baseNumHeals
}

braixen :: Pokemon
braixen = Pokemon {
  pokemonIndex = 654,
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
  pokemonMoves = [gust, psybeam, airCutter, synchronoise, airSlash, psychic, skyAttack, psyshock, hiddenPower, iceBeam, hyperBeam, solarBeam, smackDown, shadowBall, aerialAce, facade, thief, roundMove, steelWing, energyBall, chargeBeam, fly, dreamEater, flashCannon, darkPulse, dazzlingGleam, storedPower, ancientPower, futureSight, signalBeam, icyWind, zenHeadbutt, snore, heatWave, shockWave],
  numHeals = baseNumHeals
}

delphox :: Pokemon
delphox = Pokemon {
  pokemonIndex = 655,
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
  pokemonMoves = [astonish, hex, ominousWind, shadowBall, hiddenPower, psychic, facade, thief, roundMove, energyBall, payback, infestation, dreamEater, darkPulse, zenHeadbutt, snore, knockOff, shockWave],
  numHeals = baseNumHeals
}

froakie :: Pokemon
froakie = Pokemon {
  pokemonIndex = 656,
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
  pokemonMoves = [astonish, hex, ominousWind, shadowBall, hiddenPower, hyperBeam, psychic, facade, thief, roundMove, energyBall, payback, gigaImpact, infestation, dreamEater, darkPulse, zenHeadbutt, snore, knockOff, shockWave],
  numHeals = baseNumHeals
}

frogadier :: Pokemon
frogadier = Pokemon {
  pokemonIndex = 657,
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
  pokemonMoves = [waterGun, rollout, bite, aquaJet, ancientPower, crunch, brine, smackDown, aquaTail, rockSlide, hydroPump, hiddenPower, iceBeam, blizzard, earthquake, rockTomb, facade, roundMove, scald, stoneEdge, bulldoze, surf, waterfall, waterPulse, knockOff, rockThrow, slam, whirlpool, bodySlam, liquidation, earthPower, icyWind, zenHeadbutt, ironTail, snore],
  numHeals = baseNumHeals
}

greninja :: Pokemon
greninja = Pokemon {
  pokemonIndex = 658,
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
  pokemonMoves = [waterGun, rollout, bite, aquaJet, ancientPower, crunch, brine, smackDown, aquaTail, rockSlide, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, earthquake, rockTomb, facade, roundMove, focusBlast, scald, gigaImpact, stoneEdge, bulldoze, surf, waterfall, waterPulse, knockOff, rockThrow, slam, whirlpool, bodySlam, liquidation, ironHead, earthPower, superpower, icyWind, zenHeadbutt, ironTail, snore],
  numHeals = baseNumHeals
}

bunnelby :: Pokemon
bunnelby = Pokemon {
  pokemonIndex = 659,
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
  pokemonMoves = [quickAttack, wingAttack, rockThrow, pluck, ancientPower, acrobatics, dragonBreath, crunch, uturn, rockSlide, dragonClaw, thrash, hiddenPower, smackDown, earthquake, rockTomb, aerialAce, facade, roundMove, steelWing, shadowClaw, stoneEdge, bulldoze, dragonPulse, headSmash, knockOff, earthPower, bite, bounce, uproar, aquaTail, zenHeadbutt, ironTail, snore, heatWave, airCutter],
  numHeals = baseNumHeals
}

diggersby :: Pokemon
diggersby = Pokemon {
  pokemonIndex = 660,
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
  pokemonMoves = [quickAttack, wingAttack, rockThrow, pluck, ancientPower, acrobatics, dragonBreath, crunch, uturn, rockSlide, dragonClaw, thrash, hiddenPower, hyperBeam, smackDown, earthquake, rockTomb, aerialAce, facade, roundMove, steelWing, focusBlast, shadowClaw, gigaImpact, stoneEdge, fly, bulldoze, dragonTail, dragonPulse, headSmash, knockOff, earthPower, bite, bounce, uproar, aquaTail, zenHeadbutt, ironTail, snore, heatWave, skyAttack, airCutter, outrage],
  numHeals = baseNumHeals
}

fletchling :: Pokemon
fletchling = Pokemon {
  pokemonIndex = 661,
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
  pokemonMoves = [pound, acidSpray, doubleSlap, sludge, takeDown, sludgeBomb, clearSmog, belch, gunkShot, explosion, venoshock, hiddenPower, sludgeWave, facade, thief, roundMove, payback, infestation, darkPulse, rollout, rockBlast, selfDestruct, seedBomb, snore, gigaDrain, drainPunch],
  numHeals = baseNumHeals
}

fletchinder :: Pokemon
fletchinder = Pokemon {
  pokemonIndex = 662,
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
  pokemonMoves = [pound, acidSpray, doubleSlap, sludge, bodySlam, sludgeBomb, clearSmog, belch, gunkShot, explosion, venoshock, hiddenPower, hyperBeam, solarBeam, smackDown, thunderbolt, psychic, sludgeWave, facade, thief, roundMove, focusBlast, payback, gigaImpact, infestation, darkPulse, rollout, rockBlast, selfDestruct, seedBomb, snore, gigaDrain, drainPunch, takeDown],
  numHeals = baseNumHeals
}

talonflame :: Pokemon
talonflame = Pokemon {
  pokemonIndex = 663,
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
  pokemonMoves = [scratch, pursuit, furySwipes, feintAttack, foulPlay, nightDaze, hiddenPower, shadowBall, aerialAce, facade, thief, roundMove, payback, uturn, snarl, darkPulse, suckerPunch, extrasensory, covet, bounce, uproar, hyperVoice, snore, knockOff],
  numHeals = baseNumHeals
}

scatterbug :: Pokemon
scatterbug = Pokemon {
  pokemonIndex = 664,
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
  pokemonMoves = [nightSlash, nightDaze, uturn, scratch, pursuit, furySwipes, feintAttack, foulPlay, hiddenPower, hyperBeam, shadowBall, flamethrower, aerialAce, facade, thief, lowSweep, roundMove, focusBlast, shadowClaw, payback, gigaImpact, snarl, darkPulse, suckerPunch, extrasensory, covet, bounce, uproar, hyperVoice, snore, knockOff],
  numHeals = baseNumHeals
}

spewpa :: Pokemon
spewpa = Pokemon {
  pokemonIndex = 665,
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
  pokemonMoves = [pound, doubleSlap, swift, tailSlap, wakeUpSlap, echoedVoice, slam, hyperVoice, lastResort, hiddenPower, thunderbolt, facade, thief, roundMove, uturn, dazzlingGleam, ironTail, aquaTail, mudSlap, knockOff, covet, seedBomb, gunkShot, uproar, snore, shockWave],
  numHeals = baseNumHeals
}

vivillon :: Pokemon
vivillon = Pokemon {
  pokemonIndex = 666,
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
  pokemonMoves = [bulletSeed, rockBlast, tailSlap, hiddenPower, hyperBeam, thunderbolt, thunder, facade, thief, roundMove, echoedVoice, focusBlast, gigaImpact, uturn, dazzlingGleam, ironTail, aquaTail, mudSlap, knockOff, covet, seedBomb, gunkShot, uproar, lastResort, hyperVoice, snore, shockWave, pound, doubleSlap, swift, wakeUpSlap, slam],
  numHeals = baseNumHeals
}

litleo :: Pokemon
litleo = Pokemon {
  pokemonIndex = 667,
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
  pokemonMoves = [pound, confusion, doubleSlap, psybeam, feintAttack, psyshock, futureSight, psychic, hiddenPower, thunderbolt, shadowBall, rockTomb, facade, thief, roundMove, energyBall, chargeBeam, payback, rockSlide, dreamEater, darkPulse, uproar, covet, signalBeam, foulPlay, zenHeadbutt, snore, shockWave],
  numHeals = baseNumHeals
}

pyroar :: Pokemon
pyroar = Pokemon {
  pokemonIndex = 668,
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
  pokemonMoves = [pound, confusion, doubleSlap, psybeam, feintAttack, psyshock, futureSight, psychic, hiddenPower, thunderbolt, shadowBall, rockTomb, facade, thief, roundMove, energyBall, chargeBeam, payback, rockSlide, dreamEater, darkPulse, uproar, covet, signalBeam, foulPlay, zenHeadbutt, snore, shockWave],
  numHeals = baseNumHeals
}

flab :: Pokemon
flab = Pokemon {
  pokemonIndex = 669,
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
  pokemonMoves = [pound, confusion, doubleSlap, psybeam, feintAttack, psyshock, futureSight, psychic, hiddenPower, hyperBeam, thunderbolt, shadowBall, brickBreak, rockTomb, facade, thief, lowSweep, roundMove, energyBall, chargeBeam, payback, gigaImpact, rockSlide, dreamEater, darkPulse, uproar, covet, signalBeam, foulPlay, zenHeadbutt, snore, shockWave],
  numHeals = baseNumHeals
}

floette :: Pokemon
floette = Pokemon {
  pokemonIndex = 670,
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
  pokemonMoves = [rollout, hiddenPower, psyshock, futureSight, psychic, thunder, shadowBall, rockTomb, facade, roundMove, energyBall, explosion, rockSlide, infestation, dreamEater, flashCannon, astonish, secretPower, signalBeam, zenHeadbutt, snore, shockWave],
  numHeals = baseNumHeals
}

florges :: Pokemon
florges = Pokemon {
  pokemonIndex = 671,
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
  pokemonMoves = [rollout, hiddenPower, psyshock, futureSight, psychic, thunder, shadowBall, rockTomb, facade, roundMove, energyBall, explosion, rockSlide, infestation, dreamEater, flashCannon, astonish, secretPower, signalBeam, zenHeadbutt, snore, shockWave],
  numHeals = baseNumHeals
}

skiddo :: Pokemon
skiddo = Pokemon {
  pokemonIndex = 672,
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
  pokemonMoves = [dizzyPunch, rollout, hiddenPower, psyshock, futureSight, psychic, hyperBeam, thunder, shadowBall, rockTomb, facade, roundMove, focusBlast, energyBall, explosion, gigaImpact, rockSlide, infestation, dreamEater, flashCannon, astonish, secretPower, signalBeam, thunderPunch, firePunch, icePunch, superpower, zenHeadbutt, snore, knockOff, drainPunch, focusPunch, shockWave],
  numHeals = baseNumHeals
}

gogoat :: Pokemon
gogoat = Pokemon {
  pokemonIndex = 673,
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
  pokemonMoves = [waterGun, wingAttack, waterPulse, aerialAce, bubbleBeam, airSlash, braveBird, hurricane, hiddenPower, iceBeam, facade, roundMove, steelWing, scald, fly, surf, brine, gust, airCutter, uproar, icyWind, snore],
  numHeals = baseNumHeals
}

pancham :: Pokemon
pancham = Pokemon {
  pokemonIndex = 674,
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
  pokemonMoves = [waterGun, wingAttack, waterPulse, aerialAce, bubbleBeam, airSlash, braveBird, hurricane, hiddenPower, iceBeam, hyperBeam, facade, roundMove, steelWing, scald, gigaImpact, fly, surf, brine, gust, airCutter, uproar, icyWind, snore, skyAttack],
  numHeals = baseNumHeals
}

pangoro :: Pokemon
pangoro = Pokemon {
  pokemonIndex = 675,
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
  pokemonMoves = [icicleSpear, astonish, uproar, icyWind, avalanche, mirrorShot, iceBeam, blizzard, hiddenPower, facade, roundMove, explosion, frostBreath, flashCannon, waterPulse, iceShard, powderSnow, signalBeam, snore],
  numHeals = baseNumHeals
}

furfrou :: Pokemon
furfrou = Pokemon {
  pokemonIndex = 676,
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
  pokemonMoves = [icicleSpear, astonish, uproar, icyWind, avalanche, mirrorShot, iceBeam, blizzard, hiddenPower, facade, roundMove, explosion, frostBreath, flashCannon, waterPulse, iceShard, powderSnow, signalBeam, snore],
  numHeals = baseNumHeals
}

espurr :: Pokemon
espurr = Pokemon {
  pokemonIndex = 677,
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
  pokemonMoves = [freezeDry, weatherBall, icicleSpear, astonish, uproar, icyWind, avalanche, mirrorShot, iceBeam, blizzard, hiddenPower, hyperBeam, facade, roundMove, explosion, gigaImpact, frostBreath, flashCannon, waterPulse, iceShard, powderSnow, signalBeam, snore],
  numHeals = baseNumHeals
}

meowstic :: Pokemon
meowstic = Pokemon {
  pokemonIndex = 678,
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
  pokemonMoves = [tackle, doubleKick, feintAttack, takeDown, jumpKick, energyBall, doubleEdge, solarBeam, hiddenPower, shadowBall, facade, roundMove, echoedVoice, wildCharge, seedBomb, bounce, lastResort, snore, gigaDrain],
  numHeals = baseNumHeals
}

honedge :: Pokemon
honedge = Pokemon {
  pokemonIndex = 679,
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
  pokemonMoves = [hornLeech, megahorn, tackle, doubleKick, feintAttack, takeDown, jumpKick, energyBall, doubleEdge, solarBeam, hiddenPower, hyperBeam, shadowBall, facade, roundMove, echoedVoice, gigaImpact, wildCharge, seedBomb, bounce, lastResort, snore, gigaDrain],
  numHeals = baseNumHeals
}

doublade :: Pokemon
doublade = Pokemon {
  pokemonIndex = 680,
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
  pokemonMoves = [thunderShock, quickAttack, spark, nuzzle, pursuit, shockWave, acrobatics, voltSwitch, discharge, hiddenPower, thunderbolt, thunder, aerialAce, facade, roundMove, chargeBeam, uturn, wildCharge, ironTail, astonish, airSlash, covet, signalBeam, lastResort, electroweb, snore, knockOff, airCutter],
  numHeals = baseNumHeals
}

aegislash :: Pokemon
aegislash = Pokemon {
  pokemonIndex = 681,
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
  pokemonMoves = [peck, furyCutter, furyAttack, headbutt, falseSwipe, bugBuzz, slash, takeDown, xScissor, doubleEdge, hiddenPower, aerialAce, facade, roundMove, energyBall, infestation, poisonJab, megahorn, pursuit, hornAttack, feintAttack, bugBite, knockOff, drillRun, signalBeam, snore, gigaDrain],
  numHeals = baseNumHeals
}

spritzee :: Pokemon
spritzee = Pokemon {
  pokemonIndex = 682,
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
  pokemonMoves = [doubleEdge, fellStinger, peck, twineedle, furyAttack, headbutt, falseSwipe, bugBuzz, slash, ironHead, xScissor, gigaImpact, hiddenPower, hyperBeam, aerialAce, facade, roundMove, focusBlast, energyBall, brutalSwing, smartStrike, infestation, poisonJab, megahorn, pursuit, hornAttack, feintAttack, bugBite, knockOff, drillRun, signalBeam, snore, gigaDrain, furyCutter, takeDown],
  numHeals = baseNumHeals
}

aromatisse :: Pokemon
aromatisse = Pokemon {
  pokemonIndex = 683,
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
  pokemonMoves = [absorb, astonish, megaDrain, feintAttack, gigaDrain, clearSmog, solarBeam, venoshock, hiddenPower, sludgeBomb, facade, roundMove, energyBall, payback, rollout, bodySlam, seedBomb, foulPlay, snore],
  numHeals = baseNumHeals
}

swirlix :: Pokemon
swirlix = Pokemon {
  pokemonIndex = 684,
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
  pokemonMoves = [absorb, astonish, megaDrain, feintAttack, gigaDrain, clearSmog, solarBeam, venoshock, hiddenPower, hyperBeam, sludgeBomb, facade, roundMove, energyBall, payback, gigaImpact, rollout, bodySlam, seedBomb, foulPlay, snore],
  numHeals = baseNumHeals
}

slurpuff :: Pokemon
slurpuff = Pokemon {
  pokemonIndex = 685,
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
  pokemonMoves = [bubble, absorb, bubbleBeam, waterPulse, ominousWind, brine, hex, hydroPump, hiddenPower, iceBeam, blizzard, psychic, shadowBall, sludgeWave, sludgeBomb, facade, roundMove, energyBall, scald, dreamEater, surf, darkPulse, waterfall, dazzlingGleam, constrict, icyWind, bind, snore, gigaDrain, shockWave],
  numHeals = baseNumHeals
}

inkay :: Pokemon
inkay = Pokemon {
  pokemonIndex = 686,
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
  pokemonMoves = [bubble, absorb, bubbleBeam, waterPulse, ominousWind, brine, hex, hydroPump, hiddenPower, iceBeam, blizzard, hyperBeam, psychic, shadowBall, sludgeWave, sludgeBomb, facade, roundMove, energyBall, scald, gigaImpact, dreamEater, surf, darkPulse, waterfall, dazzlingGleam, constrict, icyWind, bind, snore, gigaDrain, shockWave],
  numHeals = baseNumHeals
}

malamar :: Pokemon
malamar = Pokemon {
  pokemonIndex = 687,
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
  pokemonMoves = [hydroPump, pound, aquaJet, doubleSlap, waterPulse, wakeUpSlap, brine, whirlpool, hiddenPower, iceBeam, blizzard, psychic, shadowBall, facade, roundMove, scald, surf, waterfall, bounce, icyWind, snore, knockOff],
  numHeals = baseNumHeals
}

binacle :: Pokemon
binacle = Pokemon {
  pokemonIndex = 688,
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
  pokemonMoves = [absorb, furyCutter, electroweb, bugBite, slash, signalBeam, suckerPunch, discharge, bugBuzz, hiddenPower, thunderbolt, leechLife, facade, thief, roundMove, energyBall, chargeBeam, voltSwitch, xScissor, infestation, poisonJab, wildCharge, pinMissile, poisonSting, crossPoison, rockClimb, pursuit, feintAttack, bounce, snore, gigaDrain, shockWave],
  numHeals = baseNumHeals
}

barbaracle :: Pokemon
barbaracle = Pokemon {
  pokemonIndex = 689,
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
  pokemonMoves = [absorb, furyCutter, electroweb, bugBite, slash, signalBeam, suckerPunch, discharge, bugBuzz, hiddenPower, hyperBeam, thunderbolt, thunder, leechLife, facade, thief, roundMove, energyBall, chargeBeam, gigaImpact, voltSwitch, xScissor, infestation, poisonJab, wildCharge, pinMissile, poisonSting, crossPoison, rockClimb, pursuit, feintAttack, bounce, snore, gigaDrain, shockWave],
  numHeals = baseNumHeals
}

skrelp :: Pokemon
skrelp = Pokemon {
  pokemonIndex = 690,
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
  pokemonMoves = [tackle, rollout, metalClaw, pinMissile, mirrorShot, selfDestruct, ironHead, payback, flashCannon, explosion, hiddenPower, solarBeam, thunderbolt, facade, roundMove, energyBall, poisonJab, bulletSeed, seedBomb, rockClimb, acidSpray, snore, knockOff, gigaDrain],
  numHeals = baseNumHeals
}

dragalge :: Pokemon
dragalge = Pokemon {
  pokemonIndex = 691,
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
  pokemonMoves = [powerWhip, rockClimb, tackle, rollout, metalClaw, pinMissile, mirrorShot, selfDestruct, ironHead, payback, flashCannon, explosion, hiddenPower, hyperBeam, solarBeam, thunderbolt, thunder, aerialAce, facade, roundMove, energyBall, shadowClaw, gigaImpact, bulldoze, poisonJab, bulletSeed, seedBomb, acidSpray, snore, knockOff, gigaDrain],
  numHeals = baseNumHeals
}

clauncher :: Pokemon
clauncher = Pokemon {
  pokemonIndex = 692,
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
  pokemonMoves = [viceGrip, thunderShock, gearGrind, bind, chargeBeam, mirrorShot, discharge, zapCannon, hyperBeam, hiddenPower, thunderbolt, facade, roundMove, voltSwitch, flashCannon, wildCharge, signalBeam, uproar, snore, shockWave],
  numHeals = baseNumHeals
}

clawitzer :: Pokemon
clawitzer = Pokemon {
  pokemonIndex = 693,
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
  pokemonMoves = [viceGrip, thunderShock, gearGrind, bind, chargeBeam, mirrorShot, discharge, zapCannon, hyperBeam, hiddenPower, thunderbolt, facade, roundMove, voltSwitch, flashCannon, wildCharge, signalBeam, uproar, snore, shockWave],
  numHeals = baseNumHeals
}

helioptile :: Pokemon
helioptile = Pokemon {
  pokemonIndex = 694,
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
  pokemonMoves = [viceGrip, thunderShock, gearGrind, bind, chargeBeam, mirrorShot, discharge, zapCannon, hyperBeam, hiddenPower, thunderbolt, thunder, facade, roundMove, gigaImpact, voltSwitch, flashCannon, wildCharge, signalBeam, uproar, snore, shockWave],
  numHeals = baseNumHeals
}

heliolisk :: Pokemon
heliolisk = Pokemon {
  pokemonIndex = 695,
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
  pokemonMoves = [tackle, spark, chargeBeam],
  numHeals = baseNumHeals
}

tyrunt :: Pokemon
tyrunt = Pokemon {
  pokemonIndex = 696,
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
  pokemonMoves = [crunch, headbutt, spark, chargeBeam, bind, acid, discharge, thunderbolt, acidSpray, wildCharge, zapCannon, thrash, hiddenPower, thunder, facade, roundMove, acrobatics, voltSwitch, uturn, flashCannon, signalBeam, bounce, aquaTail, ironTail, snore, knockOff, gigaDrain, shockWave, tackle],
  numHeals = baseNumHeals
}

tyrantrum :: Pokemon
tyrantrum = Pokemon {
  pokemonIndex = 697,
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
  pokemonMoves = [crunch, thrash, zapCannon, crushClaw, headbutt, acid, discharge, dragonClaw, hiddenPower, hyperBeam, thunderbolt, thunder, brickBreak, flamethrower, rockTomb, facade, roundMove, chargeBeam, acrobatics, gigaImpact, voltSwitch, rockSlide, dragonTail, uturn, flashCannon, wildCharge, signalBeam, bounce, thunderPunch, firePunch, superpower, aquaTail, dragonPulse, ironTail, bind, snore, knockOff, gigaDrain, drainPunch, focusPunch, shockWave, outrage, spark, acidSpray, tackle],
  numHeals = baseNumHeals
}

amaura :: Pokemon
amaura = Pokemon {
  pokemonIndex = 698,
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
  pokemonMoves = [confusion, psybeam, headbutt, hiddenPower, zenHeadbutt, psychic, synchronoise, psyshock, thunderbolt, shadowBall, rockTomb, facade, thief, roundMove, echoedVoice, steelWing, energyBall, chargeBeam, rockSlide, dreamEater, darkPulse, astonish, signalBeam, uproar, snore, shockWave],
  numHeals = baseNumHeals
}

aurorus :: Pokemon
aurorus = Pokemon {
  pokemonIndex = 699,
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
  pokemonMoves = [synchronoise, confusion, psybeam, headbutt, hiddenPower, zenHeadbutt, psychic, psyshock, hyperBeam, thunderbolt, shadowBall, rockTomb, facade, thief, roundMove, echoedVoice, steelWing, energyBall, chargeBeam, gigaImpact, rockSlide, dreamEater, darkPulse, astonish, signalBeam, uproar, snore, shockWave],
  numHeals = baseNumHeals
}

sylveon :: Pokemon
sylveon = Pokemon {
  pokemonIndex = 700,
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
  pokemonMoves = [ember, astonish, smog, fireSpin, flameBurst, hex, inferno, shadowBall, overheat, hiddenPower, solarBeam, psychic, flamethrower, fireBlast, facade, flameCharge, thief, roundMove, energyBall, payback, dreamEater, darkPulse, heatWave, acid, clearSmog, snore, shockWave],
  numHeals = baseNumHeals
}

hawlucha :: Pokemon
hawlucha = Pokemon {
  pokemonIndex = 701,
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
  pokemonMoves = [ember, astonish, smog, fireSpin, flameBurst, hex, inferno, shadowBall, overheat, hiddenPower, solarBeam, psychic, flamethrower, fireBlast, facade, flameCharge, thief, roundMove, energyBall, payback, dreamEater, darkPulse, heatWave, acid, clearSmog, snore, shockWave],
  numHeals = baseNumHeals
}