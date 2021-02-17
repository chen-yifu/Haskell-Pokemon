module Move where

data Move = Move {moveName::[Char], power::Int, effect::[Char], pp::Int, moveType::[Char]} deriving (Eq,Show,Read)

defaultScratch :: Move
defaultScratch = Move {
  moveName = "Scratch",
  power = 40,
  effect = [],
  moveType = "Normal",
  pp = 35
}

-- FIRE
defaultEmber :: Move
defaultEmber = Move {
  moveName = "Ember",
  power = 40,
  effect = [],
  moveType = "Fire",
  pp = 25
}

defaultFlamethrower :: Move
defaultFlamethrower = Move {
  moveName = "Flamethrower",
  power = 90,
  effect = [],
  moveType = "Fire",
  pp = 15
}

-- GRASS
defaultVineWhip :: Move
defaultVineWhip = Move {
  moveName = "Vine Whip",
  power = 45,
  effect = [],
  moveType = "Grass",
  pp = 25
}
-- WATER
defaultWaterGun :: Move
defaultWaterGun = Move {
  moveName = "Water Gun",
  power = 40,
  effect = [],
  moveType = "Water",
  pp = 25
}

defaultSurf :: Move
defaultSurf = Move {
  moveName = "Surf",
  power = 90,
  effect = [],
  moveType = "Water",
  pp = 15
}

-- FLYING
defaultPeck :: Move
defaultPeck = Move {
  moveName = "Peck",
  power = 35,
  effect = [],
  moveType = "Flying",
  pp = 35
}

defaultGrowl :: Move
defaultGrowl = Move {
  moveName = "Growl",
  power = 0,
  effect = "Slows opponent's attack",
  moveType = "Normal",
  pp = 15
}


