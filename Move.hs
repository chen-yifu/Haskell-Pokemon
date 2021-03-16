module Foreign.PokemonGame.Move where
  import Foreign.PokemonGame.Type
  data Move = Move {
    moveName::[Char],
    moveDescription::[Char],
    power::Int,
    effect::[Char],
    accuracy::Float,
    pp::Int,
    moveType::Type
    } deriving (Eq,Show,Read)

  dummy :: Move
  dummy = Move {
  moveName = "If this shows up something is wrong",
  moveDescription = "dummy",
  moveType = Normal,
  power = 0,
  accuracy = 1.0,
  effect = [],
  pp = 35
  }
  opMove :: Move
  opMove = Move {
  moveName = "If this shows up something is wrong",
  moveDescription = "dummy",
  moveType = Normal,
  power = 100000,
  accuracy = 1.0,
  effect = [],
  pp = 35
  }


  heal25 = Move {
             moveName = "heal s",
             moveDescription = "The user heals for 25.",
             moveType = Normal,
             power = 25,
             accuracy = 1.0,
             effect = [],
             pp = 35
             }
  heal15 = Move {
             moveName = "heal s",
             moveDescription = "The user heals for 15.",
             moveType = Normal,
             power = 15,
             accuracy = 1.0,
             effect = [],
             pp = 35
             }

  pound :: Move
  pound = Move {
  moveName = "pound",
  moveDescription = "The target is physically pounded with a long tail, a foreleg, or the like.",
  moveType = Normal,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 35
  }
  

  karateChop :: Move
  karateChop = Move {
  moveName = "karateChop",
  moveDescription = "The target is attacked with a sharp chop. Critical hits land more easily.",
  moveType = Fighting,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  doubleSlap :: Move
  doubleSlap = Move {
  moveName = "doubleSlap",
  moveDescription = "The target is slapped repeatedly, back and forth, two to five times in a row.",
  moveType = Normal,
  power = 15,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  cometPunch :: Move
  cometPunch = Move {
  moveName = "cometPunch",
  moveDescription = "The target is hit with a flurry of punches that strike two to five times in a row.",
  moveType = Normal,
  power = 18,
  accuracy = 0.85,
  effect = [],
  pp = 15
  }
  

  megaPunch :: Move
  megaPunch = Move {
  moveName = "megaPunch",
  moveDescription = "The target is slugged by a punch thrown with muscle-packed power.",
  moveType = Normal,
  power = 80,
  accuracy = 0.85,
  effect = [],
  pp = 20
  }
  

  payDay :: Move
  payDay = Move {
  moveName = "payDay",
  moveDescription = "Numerous coins are hurled at the target to inflict damage. Money is earned after the battle.",
  moveType = Normal,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  firePunch :: Move
  firePunch = Move {
  moveName = "firePunch",
  moveDescription = "The target is punched with a fiery fist. This may also leave the target with a burn.",
  moveType = Fire,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  icePunch :: Move
  icePunch = Move {
  moveName = "icePunch",
  moveDescription = "The target is punched with an icy fist. This may also leave the target frozen.",
  moveType = Ice,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  thunderPunch :: Move
  thunderPunch = Move {
  moveName = "thunderPunch",
  moveDescription = "The target is punched with an electrified fist. This may also leave the target with paralysis.",
  moveType = Electric,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  scratch :: Move
  scratch = Move {
  moveName = "scratch",
  moveDescription = "Hard, pointed, sharp claws rake the target to inflict damage.",
  moveType = Normal,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 35
  }
  

  viceGrip :: Move
  viceGrip = Move {
  moveName = "viceGrip",
  moveDescription = "The target is gripped and squeezed from both sides to inflict damage.",
  moveType = Normal,
  power = 55,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  razorWind :: Move
  razorWind = Move {
  moveName = "razorWind",
  moveDescription = "In this two-turn attack, blades of wind hit opposing Pokémon on the second turn. Critical hits land more easily.",
  moveType = Normal,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  cut :: Move
  cut = Move {
  moveName = "cut",
  moveDescription = "The target is cut with a scythe or claw.",
  moveType = Normal,
  power = 50,
  accuracy = 0.95,
  effect = [],
  pp = 30
  }
  

  gust :: Move
  gust = Move {
  moveName = "gust",
  moveDescription = "A gust of wind is whipped up by wings and launched at the target to inflict damage.",
  moveType = Flying,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 35
  }
  

  wingAttack :: Move
  wingAttack = Move {
  moveName = "wingAttack",
  moveDescription = "The target is struck with large, imposing wings spread wide to inflict damage.",
  moveType = Flying,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 35
  }
  

  fly :: Move
  fly = Move {
  moveName = "fly",
  moveDescription = "The user soars and then strikes its target on the next turn.",
  moveType = Flying,
  power = 90,
  accuracy = 0.95,
  effect = [],
  pp = 15
  }
  

  bind :: Move
  bind = Move {
  moveName = "bind",
  moveDescription = "Things such as long bodies or tentacles are used to bind and squeeze the target for four to five turns.",
  moveType = Normal,
  power = 15,
  accuracy = 0.85,
  effect = [],
  pp = 20
  }
  

  slam :: Move
  slam = Move {
  moveName = "slam",
  moveDescription = "The target is slammed with a long tail, vines, or the like to inflict damage.",
  moveType = Normal,
  power = 80,
  accuracy = 0.75,
  effect = [],
  pp = 20
  }
  

  vineWhip :: Move
  vineWhip = Move {
  moveName = "vineWhip",
  moveDescription = "The target is struck with slender, whiplike vines to inflict damage.",
  moveType = Grass,
  power = 45,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  stomp :: Move
  stomp = Move {
  moveName = "stomp",
  moveDescription = "The target is stomped with a big foot. This may also make the target flinch.",
  moveType = Normal,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  doubleKick :: Move
  doubleKick = Move {
  moveName = "doubleKick",
  moveDescription = "The target is quickly kicked twice in succession using both feet.",
  moveType = Fighting,
  power = 30,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  megaKick :: Move
  megaKick = Move {
  moveName = "megaKick",
  moveDescription = "The target is attacked by a kick launched with muscle-packed power.",
  moveType = Normal,
  power = 120,
  accuracy = 0.75,
  effect = [],
  pp = 5
  }
  

  jumpKick :: Move
  jumpKick = Move {
  moveName = "jumpKick",
  moveDescription = "The user jumps up high, then strikes with a kick. If the kick misses, the user hurts itself.",
  moveType = Fighting,
  power = 100,
  accuracy = 0.95,
  effect = [],
  pp = 10
  }
  

  rollingKick :: Move
  rollingKick = Move {
  moveName = "rollingKick",
  moveDescription = "The user lashes out with a quick, spinning kick. This may also make the target flinch.",
  moveType = Fighting,
  power = 60,
  accuracy = 0.85,
  effect = [],
  pp = 15
  }
  

  headbutt :: Move
  headbutt = Move {
  moveName = "headbutt",
  moveDescription = "The user sticks out its head and attacks by charging straight into the target. This may also make the target flinch.",
  moveType = Normal,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  hornAttack :: Move
  hornAttack = Move {
  moveName = "hornAttack",
  moveDescription = "The target is jabbed with a sharply pointed horn to inflict damage.",
  moveType = Normal,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  furyAttack :: Move
  furyAttack = Move {
  moveName = "furyAttack",
  moveDescription = "The target is jabbed repeatedly with a horn or beak two to five times in a row.",
  moveType = Normal,
  power = 15,
  accuracy = 0.85,
  effect = [],
  pp = 20
  }
  

  tackle :: Move
  tackle = Move {
  moveName = "tackle",
  moveDescription = "A physical attack in which the user charges and slams into the target with its whole body.",
  moveType = Normal,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 35
  }
  

  bodySlam :: Move
  bodySlam = Move {
  moveName = "bodySlam",
  moveDescription = "The user drops onto the target with its full body weight. This may also leave the target with paralysis.",
  moveType = Normal,
  power = 85,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  wrap :: Move
  wrap = Move {
  moveName = "wrap",
  moveDescription = "A long body, vines, or the like are used to wrap and squeeze the target for four to five turns.",
  moveType = Normal,
  power = 15,
  accuracy = 0.9,
  effect = [],
  pp = 20
  }
  

  takeDown :: Move
  takeDown = Move {
  moveName = "takeDown",
  moveDescription = "A reckless, full-body charge attack for slamming into the target. This also damages the user a little.",
  moveType = Normal,
  power = 90,
  accuracy = 0.85,
  effect = [],
  pp = 20
  }
  

  thrash :: Move
  thrash = Move {
  moveName = "thrash",
  moveDescription = "The user rampages and attacks for two to three turns. The user then becomes confused.",
  moveType = Normal,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  doubleEdge :: Move
  doubleEdge = Move {
  moveName = "doubleEdge",
  moveDescription = "A reckless, life-risking tackle. This also damages the user quite a lot.",
  moveType = Normal,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  poisonSting :: Move
  poisonSting = Move {
  moveName = "poisonSting",
  moveDescription = "The user stabs the target with a poisonous stinger. This may also poison the target.",
  moveType = Poison,
  power = 15,
  accuracy = 1.0,
  effect = [],
  pp = 35
  }
  

  twineedle :: Move
  twineedle = Move {
  moveName = "twineedle",
  moveDescription = "The user damages the target twice in succession by jabbing it with two spikes. This may also poison the target.",
  moveType = Bug,
  power = 25,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  pinMissile :: Move
  pinMissile = Move {
  moveName = "pinMissile",
  moveDescription = "Sharp spikes are shot at the target in rapid succession. They hit two to five times in a row.",
  moveType = Bug,
  power = 25,
  accuracy = 0.95,
  effect = [],
  pp = 20
  }
  

  bite :: Move
  bite = Move {
  moveName = "bite",
  moveDescription = "The target is bitten with viciously sharp fangs. This may also make the target flinch.",
  moveType = Dark,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  acid :: Move
  acid = Move {
  moveName = "acid",
  moveDescription = "The opposing Pokémon are attacked with a spray of harsh acid. This may also lower their Sp. Def stat.",
  moveType = Poison,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  ember :: Move
  ember = Move {
  moveName = "ember",
  moveDescription = "The target is attacked with small flames. This may also leave the target with a burn.",
  moveType = Fire,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  flamethrower :: Move
  flamethrower = Move {
  moveName = "flamethrower",
  moveDescription = "The target is scorched with an intense blast of fire. This may also leave the target with a burn.",
  moveType = Fire,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  waterGun :: Move
  waterGun = Move {
  moveName = "waterGun",
  moveDescription = "The target is blasted with a forceful shot of water.",
  moveType = Water,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  hydroPump :: Move
  hydroPump = Move {
  moveName = "hydroPump",
  moveDescription = "The target is blasted by a huge volume of water launched under great pressure.",
  moveType = Water,
  power = 110,
  accuracy = 0.8,
  effect = [],
  pp = 5
  }
  

  surf :: Move
  surf = Move {
  moveName = "surf",
  moveDescription = "The user attacks everything around it by swamping its surroundings with a giant wave.",
  moveType = Water,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  iceBeam :: Move
  iceBeam = Move {
  moveName = "iceBeam",
  moveDescription = "The target is struck with an icy-cold beam of energy. This may also leave the target frozen.",
  moveType = Ice,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  blizzard :: Move
  blizzard = Move {
  moveName = "blizzard",
  moveDescription = "A howling blizzard is summoned to strike opposing Pokémon. This may also leave the opposing Pokémon frozen.",
  moveType = Ice,
  power = 110,
  accuracy = 0.7,
  effect = [],
  pp = 5
  }
  

  psybeam :: Move
  psybeam = Move {
  moveName = "psybeam",
  moveDescription = "The target is attacked with a peculiar ray. This may also leave the target confused.",
  moveType = Psychic,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  bubbleBeam :: Move
  bubbleBeam = Move {
  moveName = "bubbleBeam",
  moveDescription = "A spray of bubbles is forcefully ejected at the target. This may also lower its Speed stat.",
  moveType = Water,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  auroraBeam :: Move
  auroraBeam = Move {
  moveName = "auroraBeam",
  moveDescription = "The target is hit with a rainbow-colored beam. This may also lower the target’s Attack stat.",
  moveType = Ice,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  hyperBeam :: Move
  hyperBeam = Move {
  moveName = "hyperBeam",
  moveDescription = "The target is attacked with a powerful beam. The user can’t move on the next turn.",
  moveType = Normal,
  power = 150,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  peck :: Move
  peck = Move {
  moveName = "peck",
  moveDescription = "The target is jabbed with a sharply pointed beak or horn.",
  moveType = Flying,
  power = 35,
  accuracy = 1.0,
  effect = [],
  pp = 35
  }
  

  drillPeck :: Move
  drillPeck = Move {
  moveName = "drillPeck",
  moveDescription = "A corkscrewing attack with a sharp beak acting as a drill.",
  moveType = Flying,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  submission :: Move
  submission = Move {
  moveName = "submission",
  moveDescription = "The user grabs the target and recklessly dives for the ground. This also damages the user a little.",
  moveType = Fighting,
  power = 80,
  accuracy = 0.8,
  effect = [],
  pp = 25
  }
  

  strength :: Move
  strength = Move {
  moveName = "strength",
  moveDescription = "The target is slugged with a punch thrown at maximum power.",
  moveType = Normal,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  absorb :: Move
  absorb = Move {
  moveName = "absorb",
  moveDescription = "A nutrient-draining attack. The user’s HP is restored by half the damage taken by the target.",
  moveType = Grass,
  power = 20,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  megaDrain :: Move
  megaDrain = Move {
  moveName = "megaDrain",
  moveDescription = "A nutrient-draining attack. The user’s HP is restored by half the damage taken by the target.",
  moveType = Grass,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  razorLeaf :: Move
  razorLeaf = Move {
  moveName = "razorLeaf",
  moveDescription = "Sharp-edged leaves are launched to slash at the opposing Pokémon. Critical hits land more easily.",
  moveType = Grass,
  power = 55,
  accuracy = 0.95,
  effect = [],
  pp = 25
  }
  

  solarBeam :: Move
  solarBeam = Move {
  moveName = "solarBeam",
  moveDescription = "In this two-turn attack, the user gathers light, then blasts a bundled beam on the next turn.",
  moveType = Grass,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  petalDance :: Move
  petalDance = Move {
  moveName = "petalDance",
  moveDescription = "The user attacks the target by scattering petals for two to three turns. The user then becomes confused.",
  moveType = Grass,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  fireSpin :: Move
  fireSpin = Move {
  moveName = "fireSpin",
  moveDescription = "The target becomes trapped within a fierce vortex of fire that rages for four to five turns.",
  moveType = Fire,
  power = 35,
  accuracy = 0.85,
  effect = [],
  pp = 15
  }
  

  thunderShock :: Move
  thunderShock = Move {
  moveName = "thunderShock",
  moveDescription = "A jolt of electricity crashes down on the target to inflict damage. This may also leave the target with paralysis.",
  moveType = Electric,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  thunderbolt :: Move
  thunderbolt = Move {
  moveName = "thunderbolt",
  moveDescription = "A strong electric blast crashes down on the target. This may also leave the target with paralysis.",
  moveType = Electric,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  thunder :: Move
  thunder = Move {
  moveName = "thunder",
  moveDescription = "A wicked thunderbolt is dropped on the target to inflict damage. This may also leave the target with paralysis.",
  moveType = Electric,
  power = 110,
  accuracy = 0.7,
  effect = [],
  pp = 10
  }
  

  rockThrow :: Move
  rockThrow = Move {
  moveName = "rockThrow",
  moveDescription = "The user picks up and throws a small rock at the target to attack.",
  moveType = Rock,
  power = 50,
  accuracy = 0.9,
  effect = [],
  pp = 15
  }
  

  earthquake :: Move
  earthquake = Move {
  moveName = "earthquake",
  moveDescription = "The user sets off an earthquake that strikes every Pokémon around it.",
  moveType = Ground,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  dig :: Move
  dig = Move {
  moveName = "dig",
  moveDescription = "The user burrows, then attacks on the next turn.",
  moveType = Ground,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  confusion :: Move
  confusion = Move {
  moveName = "confusion",
  moveDescription = "The target is hit by a weak telekinetic force. This may also confuse the target.",
  moveType = Psychic,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  psychic :: Move
  psychic = Move {
  moveName = "psychic",
  moveDescription = "The target is hit by a strong telekinetic force. This may also lower the target’s Sp. Def stat.",
  moveType = Psychic,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  quickAttack :: Move
  quickAttack = Move {
  moveName = "quickAttack",
  moveDescription = "The user lunges at the target at a speed that makes it almost invisible. This move always goes first.",
  moveType = Normal,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  rage :: Move
  rage = Move {
  moveName = "rage",
  moveDescription = "As long as this move is in use, the power of rage raises the Attack stat each time the user is hit in battle.",
  moveType = Normal,
  power = 20,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  selfDestruct :: Move
  selfDestruct = Move {
  moveName = "selfDestruct",
  moveDescription = "The user attacks everything around it by causing an explosion. The user faints upon using this move.",
  moveType = Normal,
  power = 200,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  eggBomb :: Move
  eggBomb = Move {
  moveName = "eggBomb",
  moveDescription = "A large egg is hurled at the target with maximum force to inflict damage.",
  moveType = Normal,
  power = 100,
  accuracy = 0.75,
  effect = [],
  pp = 10
  }
  

  lick :: Move
  lick = Move {
  moveName = "lick",
  moveDescription = "The target is licked with a long tongue, causing damage. This may also leave the target with paralysis.",
  moveType = Ghost,
  power = 30,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  smog :: Move
  smog = Move {
  moveName = "smog",
  moveDescription = "The target is attacked with a discharge of filthy gases. This may also poison the target.",
  moveType = Poison,
  power = 30,
  accuracy = 0.7,
  effect = [],
  pp = 20
  }
  

  sludge :: Move
  sludge = Move {
  moveName = "sludge",
  moveDescription = "Unsanitary sludge is hurled at the target. This may also poison the target.",
  moveType = Poison,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  boneClub :: Move
  boneClub = Move {
  moveName = "boneClub",
  moveDescription = "The user clubs the target with a bone. This may also make the target flinch.",
  moveType = Ground,
  power = 65,
  accuracy = 0.85,
  effect = [],
  pp = 20
  }
  

  fireBlast :: Move
  fireBlast = Move {
  moveName = "fireBlast",
  moveDescription = "The target is attacked with an intense blast of all-consuming fire. This may also leave the target with a burn.",
  moveType = Fire,
  power = 110,
  accuracy = 0.85,
  effect = [],
  pp = 5
  }
  

  waterfall :: Move
  waterfall = Move {
  moveName = "waterfall",
  moveDescription = "The user charges at the target and may make it flinch.",
  moveType = Water,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  clamp :: Move
  clamp = Move {
  moveName = "clamp",
  moveDescription = "The target is clamped and squeezed by the user’s very thick and sturdy shell for four to five turns.",
  moveType = Water,
  power = 35,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  swift :: Move
  swift = Move {
  moveName = "swift",
  moveDescription = "Star-shaped rays are shot at the opposing Pokémon. This attack never misses.",
  moveType = Normal,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  skullBash :: Move
  skullBash = Move {
  moveName = "skullBash",
  moveDescription = "The user tucks in its head to raise its Defense stat on the first turn, then rams the target on the next turn.",
  moveType = Normal,
  power = 130,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  spikeCannon :: Move
  spikeCannon = Move {
  moveName = "spikeCannon",
  moveDescription = "Sharp spikes are shot at the target in rapid succession. They hit two to five times in a row.",
  moveType = Normal,
  power = 20,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  constrict :: Move
  constrict = Move {
  moveName = "constrict",
  moveDescription = "The target is attacked with long, creeping tentacles, vines, or the like. This may also lower the target’s Speed stat.",
  moveType = Normal,
  power = 10,
  accuracy = 1.0,
  effect = [],
  pp = 35
  }
  

  highJumpKick :: Move
  highJumpKick = Move {
  moveName = "highJumpKick",
  moveDescription = "The target is attacked with a knee kick from a jump. If it misses, the user is hurt instead.",
  moveType = Fighting,
  power = 130,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  dreamEater :: Move
  dreamEater = Move {
  moveName = "dreamEater",
  moveDescription = "The user eats the dreams of a sleeping target. It absorbs half the damage caused to heal its own HP.",
  moveType = Psychic,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  barrage :: Move
  barrage = Move {
  moveName = "barrage",
  moveDescription = "Round objects are hurled at the target to strike two to five times in a row.",
  moveType = Normal,
  power = 15,
  accuracy = 0.85,
  effect = [],
  pp = 20
  }
  

  leechLife :: Move
  leechLife = Move {
  moveName = "leechLife",
  moveDescription = "The user drains the target’s blood. The user’s HP is restored by half the damage taken by the target.",
  moveType = Bug,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  skyAttack :: Move
  skyAttack = Move {
  moveName = "skyAttack",
  moveDescription = "A second-turn attack move where critical hits land more easily. This may also make the target flinch.",
  moveType = Flying,
  power = 140,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  bubble :: Move
  bubble = Move {
  moveName = "bubble",
  moveDescription = "A spray of countless bubbles is jetted at the opposing Pokémon. This may also lower their Speed stat.",
  moveType = Water,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  dizzyPunch :: Move
  dizzyPunch = Move {
  moveName = "dizzyPunch",
  moveDescription = "The target is hit with rhythmically launched punches. This may also leave the target confused.",
  moveType = Normal,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  crabhammer :: Move
  crabhammer = Move {
  moveName = "crabhammer",
  moveDescription = "The target is hammered with a large pincer. Critical hits land more easily.",
  moveType = Water,
  power = 100,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  explosion :: Move
  explosion = Move {
  moveName = "explosion",
  moveDescription = "The user attacks everything around it by causing a tremendous explosion. The user faints upon using this move.",
  moveType = Normal,
  power = 250,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  furySwipes :: Move
  furySwipes = Move {
  moveName = "furySwipes",
  moveDescription = "The target is raked with sharp claws or scythes quickly two to five times in a row.",
  moveType = Normal,
  power = 18,
  accuracy = 0.8,
  effect = [],
  pp = 15
  }
  

  bonemerang :: Move
  bonemerang = Move {
  moveName = "bonemerang",
  moveDescription = "The user throws the bone it holds. The bone loops around to hit the target twice0coming and going.",
  moveType = Ground,
  power = 50,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  rockSlide :: Move
  rockSlide = Move {
  moveName = "rockSlide",
  moveDescription = "Large boulders are hurled at the opposing Pokémon to inflict damage. This may also make the opposing Pokémon flinch.",
  moveType = Rock,
  power = 75,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  hyperFang :: Move
  hyperFang = Move {
  moveName = "hyperFang",
  moveDescription = "The user bites hard on the target with its sharp front fangs. This may also make the target flinch.",
  moveType = Normal,
  power = 80,
  accuracy = 0.9,
  effect = [],
  pp = 15
  }
  

  triAttack :: Move
  triAttack = Move {
  moveName = "triAttack",
  moveDescription = "The user strikes with a simultaneous three-beam attack. May also burn, freeze, or paralyze the target.",
  moveType = Normal,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  slash :: Move
  slash = Move {
  moveName = "slash",
  moveDescription = "The target is attacked with a slash of claws or blades. Critical hits land more easily.",
  moveType = Normal,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  struggle :: Move
  struggle = Move {
  moveName = "struggle",
  moveDescription = "This attack is used in desperation only if the user has no PP. It also damages the user a little.",
  moveType = Normal,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 1
  }
  

  tripleKick :: Move
  tripleKick = Move {
  moveName = "tripleKick",
  moveDescription = "A consecutive three-kick attack that becomes more powerful with each successive hit.",
  moveType = Fighting,
  power = 10,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  thief :: Move
  thief = Move {
  moveName = "thief",
  moveDescription = "The user attacks and steals the target’s held item simultaneously. The user can’t steal anything if it already holds an item.",
  moveType = Dark,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  flameWheel :: Move
  flameWheel = Move {
  moveName = "flameWheel",
  moveDescription = "The user cloaks itself in fire and charges at the target. This may also leave the target with a burn.",
  moveType = Fire,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  snore :: Move
  snore = Move {
  moveName = "snore",
  moveDescription = "This attack can be used only if the user is asleep. The harsh noise may also make the target flinch.",
  moveType = Normal,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  aeroblast :: Move
  aeroblast = Move {
  moveName = "aeroblast",
  moveDescription = "A vortex of air is shot at the target to inflict damage. Critical hits land more easily.",
  moveType = Flying,
  power = 100,
  accuracy = 0.95,
  effect = [],
  pp = 5
  }
  

  powderSnow :: Move
  powderSnow = Move {
  moveName = "powderSnow",
  moveDescription = "The user attacks with a chilling gust of powdery snow. This may also freeze the opposing Pokémon.",
  moveType = Ice,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  machPunch :: Move
  machPunch = Move {
  moveName = "machPunch",
  moveDescription = "The user throws a punch at blinding speed. This move always goes first.",
  moveType = Fighting,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  feintAttack :: Move
  feintAttack = Move {
  moveName = "feintAttack",
  moveDescription = "The user approaches the target disarmingly, then throws a sucker punch. This attack never misses.",
  moveType = Dark,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  sludgeBomb :: Move
  sludgeBomb = Move {
  moveName = "sludgeBomb",
  moveDescription = "Unsanitary sludge is hurled at the target. This may also poison the target.",
  moveType = Poison,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  mudSlap :: Move
  mudSlap = Move {
  moveName = "mudSlap",
  moveDescription = "The user hurls mud in the target’s face to inflict damage and lower its accuracy.",
  moveType = Ground,
  power = 20,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  octazooka :: Move
  octazooka = Move {
  moveName = "octazooka",
  moveDescription = "The user attacks by spraying ink in the target’s face or eyes. This may also lower the target’s accuracy.",
  moveType = Water,
  power = 65,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  zapCannon :: Move
  zapCannon = Move {
  moveName = "zapCannon",
  moveDescription = "The user fires an electric blast like a cannon to inflict damage and cause paralysis.",
  moveType = Electric,
  power = 120,
  accuracy = 0.5,
  effect = [],
  pp = 5
  }
  

  icyWind :: Move
  icyWind = Move {
  moveName = "icyWind",
  moveDescription = "The user attacks with a gust of chilled air. This also lowers the opposing Pokémon’s Speed stats.",
  moveType = Ice,
  power = 55,
  accuracy = 0.95,
  effect = [],
  pp = 15
  }
  

  boneRush :: Move
  boneRush = Move {
  moveName = "boneRush",
  moveDescription = "The user strikes the target with a hard bone two to five times in a row.",
  moveType = Ground,
  power = 25,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  outrage :: Move
  outrage = Move {
  moveName = "outrage",
  moveDescription = "The user rampages and attacks for two to three turns. The user then becomes confused.",
  moveType = Dragon,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  gigaDrain :: Move
  gigaDrain = Move {
  moveName = "gigaDrain",
  moveDescription = "A nutrient-draining attack. The user’s HP is restored by half the damage taken by the target.",
  moveType = Grass,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  rollout :: Move
  rollout = Move {
  moveName = "rollout",
  moveDescription = "The user continually rolls into the target over five turns. It becomes more powerful each time it hits.",
  moveType = Rock,
  power = 30,
  accuracy = 0.9,
  effect = [],
  pp = 20
  }
  

  falseSwipe :: Move
  falseSwipe = Move {
  moveName = "falseSwipe",
  moveDescription = "A restrained attack that prevents the target from fainting. The target is left with at least 1 HP.",
  moveType = Normal,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 40
  }
  

  spark :: Move
  spark = Move {
  moveName = "spark",
  moveDescription = "The user throws an electrically charged tackle at the target. This may also leave the target with paralysis.",
  moveType = Electric,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  furyCutter :: Move
  furyCutter = Move {
  moveName = "furyCutter",
  moveDescription = "The target is slashed with scythes or claws. This attack becomes more powerful if it hits in succession.",
  moveType = Bug,
  power = 40,
  accuracy = 0.95,
  effect = [],
  pp = 20
  }
  

  steelWing :: Move
  steelWing = Move {
  moveName = "steelWing",
  moveDescription = "The target is hit with wings of steel. This may also raise the user’s Defense stat.",
  moveType = Steel,
  power = 70,
  accuracy = 0.9,
  effect = [],
  pp = 25
  }
  

  sacredFire :: Move
  sacredFire = Move {
  moveName = "sacredFire",
  moveDescription = "The target is razed with a mystical fire of great intensity. This may also leave the target with a burn.",
  moveType = Fire,
  power = 100,
  accuracy = 0.95,
  effect = [],
  pp = 5
  }
  

  dynamicPunch :: Move
  dynamicPunch = Move {
  moveName = "dynamicPunch",
  moveDescription = "The user punches the target with full, concentrated power. This confuses the target if it hits.",
  moveType = Fighting,
  power = 100,
  accuracy = 0.5,
  effect = [],
  pp = 5
  }
  

  megahorn :: Move
  megahorn = Move {
  moveName = "megahorn",
  moveDescription = "Using its tough and impressive horn, the user rams into the target with no letup.",
  moveType = Bug,
  power = 120,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  dragonBreath :: Move
  dragonBreath = Move {
  moveName = "dragonBreath",
  moveDescription = "The user exhales a mighty gust that inflicts damage. This may also leave the target with paralysis.",
  moveType = Dragon,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  pursuit :: Move
  pursuit = Move {
  moveName = "pursuit",
  moveDescription = "The power of this attack move is doubled if it’s used on a target that’s switching out of battle.",
  moveType = Dark,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  rapidSpin :: Move
  rapidSpin = Move {
  moveName = "rapidSpin",
  moveDescription = "A spin attack that can also eliminate such moves as Bind, Wrap, Leech Seed, and Spikes.",
  moveType = Normal,
  power = 20,
  accuracy = 1.0,
  effect = [],
  pp = 40
  }
  

  ironTail :: Move
  ironTail = Move {
  moveName = "ironTail",
  moveDescription = "The target is slammed with a steel-hard tail. This may also lower the target’s Defense stat.",
  moveType = Steel,
  power = 100,
  accuracy = 0.75,
  effect = [],
  pp = 15
  }
  

  metalClaw :: Move
  metalClaw = Move {
  moveName = "metalClaw",
  moveDescription = "The target is raked with steel claws. This may also raise the user’s Attack stat.",
  moveType = Steel,
  power = 50,
  accuracy = 0.95,
  effect = [],
  pp = 35
  }
  

  vitalThrow :: Move
  vitalThrow = Move {
  moveName = "vitalThrow",
  moveDescription = "The user attacks last. In return, this throw move never misses.",
  moveType = Fighting,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  hiddenPower :: Move
  hiddenPower = Move {
  moveName = "hiddenPower",
  moveDescription = "A unique attack that varies in type depending on the Pokémon using it.",
  moveType = Normal,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  crossChop :: Move
  crossChop = Move {
  moveName = "crossChop",
  moveDescription = "The user delivers a double chop with its forearms crossed. Critical hits land more easily.",
  moveType = Fighting,
  power = 100,
  accuracy = 0.8,
  effect = [],
  pp = 5
  }
  

  twister :: Move
  twister = Move {
  moveName = "twister",
  moveDescription = "The user whips up a vicious tornado to tear at the opposing Pokémon. This may also make them flinch.",
  moveType = Dragon,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  crunch :: Move
  crunch = Move {
  moveName = "crunch",
  moveDescription = "The user crunches up the target with sharp fangs. This may also lower the target’s Defense stat.",
  moveType = Dark,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  extremeSpeed :: Move
  extremeSpeed = Move {
  moveName = "extremeSpeed",
  moveDescription = "The user charges the target at blinding speed. This move always goes first.",
  moveType = Normal,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  ancientPower :: Move
  ancientPower = Move {
  moveName = "ancientPower",
  moveDescription = "The user attacks with a prehistoric power. This may also raise all the user’s stats at once.",
  moveType = Rock,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  shadowBall :: Move
  shadowBall = Move {
  moveName = "shadowBall",
  moveDescription = "The user hurls a shadowy blob at the target. This may also lower the target’s Sp. Def stat.",
  moveType = Ghost,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  futureSight :: Move
  futureSight = Move {
  moveName = "futureSight",
  moveDescription = "Two turns after this move is used, a hunk of psychic energy attacks the target.",
  moveType = Psychic,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  rockSmash :: Move
  rockSmash = Move {
  moveName = "rockSmash",
  moveDescription = "The user attacks with a punch. This may also lower the target’s Defense stat.",
  moveType = Fighting,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  whirlpool :: Move
  whirlpool = Move {
  moveName = "whirlpool",
  moveDescription = "The user traps the target in a violent swirling whirlpool for four to five turns.",
  moveType = Water,
  power = 35,
  accuracy = 0.85,
  effect = [],
  pp = 15
  }
  

  fakeOut :: Move
  fakeOut = Move {
  moveName = "fakeOut",
  moveDescription = "This attack hits first and makes the target flinch. It only works the first turn the user is in battle.",
  moveType = Normal,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  uproar :: Move
  uproar = Move {
  moveName = "uproar",
  moveDescription = "The user attacks in an uproar for three turns. During that time, no Pokémon can fall asleep.",
  moveType = Normal,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  heatWave :: Move
  heatWave = Move {
  moveName = "heatWave",
  moveDescription = "The user attacks by exhaling hot breath on the opposing Pokémon. This may also leave those Pokémon with a burn.",
  moveType = Fire,
  power = 95,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  facade :: Move
  facade = Move {
  moveName = "facade",
  moveDescription = "This attack move doubles its power if the user is poisoned, burned, or paralyzed.",
  moveType = Normal,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  focusPunch :: Move
  focusPunch = Move {
  moveName = "focusPunch",
  moveDescription = "The user focuses its mind before launching a punch. This move fails if the user is hit before it is used.",
  moveType = Fighting,
  power = 150,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  smellingSalts :: Move
  smellingSalts = Move {
  moveName = "smellingSalts",
  moveDescription = "This attack’s power is doubled when used on a target with paralysis. This also cures the target’s paralysis, however.",
  moveType = Normal,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  superpower :: Move
  superpower = Move {
  moveName = "superpower",
  moveDescription = "The user attacks the target with great power. However, this also lowers the user’s Attack and Defense stats.",
  moveType = Fighting,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  revenge :: Move
  revenge = Move {
  moveName = "revenge",
  moveDescription = "This attack move’s power is doubled if the user has been hurt by the opponent in the same turn.",
  moveType = Fighting,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  brickBreak :: Move
  brickBreak = Move {
  moveName = "brickBreak",
  moveDescription = "The user attacks with a swift chop. It can also break barriers, such as Light Screen and Reflect.",
  moveType = Fighting,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  knockOff :: Move
  knockOff = Move {
  moveName = "knockOff",
  moveDescription = "The user slaps down the target’s held item, and that item can’t be used in that battle. The move does more damage if the target has a held item.",
  moveType = Dark,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  secretPower :: Move
  secretPower = Move {
  moveName = "secretPower",
  moveDescription = "The additional effects of this attack depend upon where it was used.",
  moveType = Normal,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  dive :: Move
  dive = Move {
  moveName = "dive",
  moveDescription = "Diving on the first turn, the user floats up and attacks on the next turn.",
  moveType = Water,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  armThrust :: Move
  armThrust = Move {
  moveName = "armThrust",
  moveDescription = "The user lets loose a flurry of open-palmed arm thrusts that hit two to five times in a row.",
  moveType = Fighting,
  power = 15,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  lusterPurge :: Move
  lusterPurge = Move {
  moveName = "lusterPurge",
  moveDescription = "The user lets loose a damaging burst of light. This may also lower the target’s Sp. Def stat.",
  moveType = Psychic,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  mistBall :: Move
  mistBall = Move {
  moveName = "mistBall",
  moveDescription = "A mist-like flurry of down envelops and damages the target. This may also lower the target’s Sp. Atk stat.",
  moveType = Psychic,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  blazeKick :: Move
  blazeKick = Move {
  moveName = "blazeKick",
  moveDescription = "The user launches a kick that lands a critical hit more easily. This may also leave the target with a burn.",
  moveType = Fire,
  power = 85,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  iceBall :: Move
  iceBall = Move {
  moveName = "iceBall",
  moveDescription = "The user attacks the target for five turns. The move’s power increases each time it hits.",
  moveType = Ice,
  power = 30,
  accuracy = 0.9,
  effect = [],
  pp = 20
  }
  

  needleArm :: Move
  needleArm = Move {
  moveName = "needleArm",
  moveDescription = "The user attacks by wildly swinging its thorny arms. This may also make the target flinch.",
  moveType = Grass,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  hyperVoice :: Move
  hyperVoice = Move {
  moveName = "hyperVoice",
  moveDescription = "The user lets loose a horribly echoing shout with the power to inflict damage.",
  moveType = Normal,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  poisonFang :: Move
  poisonFang = Move {
  moveName = "poisonFang",
  moveDescription = "The user bites the target with toxic fangs. This may also leave the target badly poisoned.",
  moveType = Poison,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  crushClaw :: Move
  crushClaw = Move {
  moveName = "crushClaw",
  moveDescription = "The user slashes the target with hard and sharp claws. This may also lower the target’s Defense stat.",
  moveType = Normal,
  power = 75,
  accuracy = 0.95,
  effect = [],
  pp = 10
  }
  

  blastBurn :: Move
  blastBurn = Move {
  moveName = "blastBurn",
  moveDescription = "The target is razed by a fiery explosion. The user can’t move on the next turn.",
  moveType = Fire,
  power = 150,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  hydroCannon :: Move
  hydroCannon = Move {
  moveName = "hydroCannon",
  moveDescription = "The target is hit with a watery blast. The user can’t move on the next turn.",
  moveType = Water,
  power = 150,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  meteorMash :: Move
  meteorMash = Move {
  moveName = "meteorMash",
  moveDescription = "The target is hit with a hard punch fired like a meteor. This may also raise the user’s Attack stat.",
  moveType = Steel,
  power = 90,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  astonish :: Move
  astonish = Move {
  moveName = "astonish",
  moveDescription = "The user attacks the target while shouting in a startling fashion. This may also make the target flinch.",
  moveType = Ghost,
  power = 30,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  weatherBall :: Move
  weatherBall = Move {
  moveName = "weatherBall",
  moveDescription = "This attack move varies in power and type depending on the weather.",
  moveType = Normal,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  airCutter :: Move
  airCutter = Move {
  moveName = "airCutter",
  moveDescription = "The user launches razor-like wind to slash the opposing Pokémon. Critical hits land more easily.",
  moveType = Flying,
  power = 60,
  accuracy = 0.95,
  effect = [],
  pp = 25
  }
  

  overheat :: Move
  overheat = Move {
  moveName = "overheat",
  moveDescription = "The user attacks the target at full power. The attack’s recoil harshly lowers the user’s Sp. Atk stat.",
  moveType = Fire,
  power = 130,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  rockTomb :: Move
  rockTomb = Move {
  moveName = "rockTomb",
  moveDescription = "Boulders are hurled at the target. This also lowers the target’s Speed stat by preventing its movement.",
  moveType = Rock,
  power = 60,
  accuracy = 0.95,
  effect = [],
  pp = 15
  }
  

  silverWind :: Move
  silverWind = Move {
  moveName = "silverWind",
  moveDescription = "The target is attacked with powdery scales blown by the wind. This may also raise all the user’s stats.",
  moveType = Bug,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  signalBeam :: Move
  signalBeam = Move {
  moveName = "signalBeam",
  moveDescription = "The user attacks with a sinister beam of light. This may also confuse the target.",
  moveType = Bug,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  shadowPunch :: Move
  shadowPunch = Move {
  moveName = "shadowPunch",
  moveDescription = "The user throws a punch from the shadows. This attack never misses.",
  moveType = Ghost,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  extrasensory :: Move
  extrasensory = Move {
  moveName = "extrasensory",
  moveDescription = "The user attacks with an odd, unseeable power. This may also make the target flinch.",
  moveType = Psychic,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  skyUppercut :: Move
  skyUppercut = Move {
  moveName = "skyUppercut",
  moveDescription = "The user attacks the target with an uppercut thrown skyward with force.",
  moveType = Fighting,
  power = 85,
  accuracy = 0.9,
  effect = [],
  pp = 15
  }
  

  sandTomb :: Move
  sandTomb = Move {
  moveName = "sandTomb",
  moveDescription = "The user traps the target inside a harshly raging sandstorm for four to five turns.",
  moveType = Ground,
  power = 35,
  accuracy = 0.85,
  effect = [],
  pp = 15
  }
  

  muddyWater :: Move
  muddyWater = Move {
  moveName = "muddyWater",
  moveDescription = "The user attacks by shooting muddy water at the opposing Pokémon. This may also lower their accuracy.",
  moveType = Water,
  power = 90,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  bulletSeed :: Move
  bulletSeed = Move {
  moveName = "bulletSeed",
  moveDescription = "The user forcefully shoots seeds at the target two to five times in a row.",
  moveType = Grass,
  power = 25,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  aerialAce :: Move
  aerialAce = Move {
  moveName = "aerialAce",
  moveDescription = "The user confounds the target with speed, then slashes. This attack never misses.",
  moveType = Flying,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  icicleSpear :: Move
  icicleSpear = Move {
  moveName = "icicleSpear",
  moveDescription = "The user launches sharp icicles at the target two to five times in a row.",
  moveType = Ice,
  power = 25,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  dragonClaw :: Move
  dragonClaw = Move {
  moveName = "dragonClaw",
  moveDescription = "The user slashes the target with huge sharp claws.",
  moveType = Dragon,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  frenzyPlant :: Move
  frenzyPlant = Move {
  moveName = "frenzyPlant",
  moveDescription = "The user slams the target with an enormous tree. The user can’t move on the next turn.",
  moveType = Grass,
  power = 150,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  bounce :: Move
  bounce = Move {
  moveName = "bounce",
  moveDescription = "The user bounces up high, then drops on the target on the second turn. This may also leave the target with paralysis.",
  moveType = Flying,
  power = 85,
  accuracy = 0.85,
  effect = [],
  pp = 5
  }
  

  mudShot :: Move
  mudShot = Move {
  moveName = "mudShot",
  moveDescription = "The user attacks by hurling a blob of mud at the target. This also lowers the target’s Speed stat.",
  moveType = Ground,
  power = 55,
  accuracy = 0.95,
  effect = [],
  pp = 15
  }
  

  poisonTail :: Move
  poisonTail = Move {
  moveName = "poisonTail",
  moveDescription = "The user hits the target with its tail. This may also poison the target. Critical hits land more easily.",
  moveType = Poison,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  covet :: Move
  covet = Move {
  moveName = "covet",
  moveDescription = "The user endearingly approaches the target, then steals the target’s held item.",
  moveType = Normal,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  voltTackle :: Move
  voltTackle = Move {
  moveName = "voltTackle",
  moveDescription = "The user electrifies itself and charges the target. This also damages the user quite a lot. This attack may leave the target with paralysis.",
  moveType = Electric,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  magicalLeaf :: Move
  magicalLeaf = Move {
  moveName = "magicalLeaf",
  moveDescription = "The user scatters curious leaves that chase the target. This attack never misses.",
  moveType = Grass,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  leafBlade :: Move
  leafBlade = Move {
  moveName = "leafBlade",
  moveDescription = "The user handles a sharp leaf like a sword and attacks by cutting its target. Critical hits land more easily.",
  moveType = Grass,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  rockBlast :: Move
  rockBlast = Move {
  moveName = "rockBlast",
  moveDescription = "The user hurls hard rocks at the target. Two to five rocks are launched in a row.",
  moveType = Rock,
  power = 25,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  shockWave :: Move
  shockWave = Move {
  moveName = "shockWave",
  moveDescription = "The user strikes the target with a quick jolt of electricity. This attack never misses.",
  moveType = Electric,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  waterPulse :: Move
  waterPulse = Move {
  moveName = "waterPulse",
  moveDescription = "The user attacks the target with a pulsing blast of water. This may also confuse the target.",
  moveType = Water,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  doomDesire :: Move
  doomDesire = Move {
  moveName = "doomDesire",
  moveDescription = "Two turns after this move is used, a concentrated bundle of light blasts the target.",
  moveType = Steel,
  power = 140,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  psychoBoost :: Move
  psychoBoost = Move {
  moveName = "psychoBoost",
  moveDescription = "The user attacks the target at full power. The attack’s recoil harshly lowers the user’s Sp. Atk stat.",
  moveType = Psychic,
  power = 140,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  wakeUpSlap :: Move
  wakeUpSlap = Move {
  moveName = "wakeUpSlap",
  moveDescription = "This attack inflicts big damage on a sleeping target. This also wakes the target up, however.",
  moveType = Fighting,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  hammerArm :: Move
  hammerArm = Move {
  moveName = "hammerArm",
  moveDescription = "The user swings and hits with its strong, heavy fist. It lowers the user’s Speed, however.",
  moveType = Fighting,
  power = 100,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  brine :: Move
  brine = Move {
  moveName = "brine",
  moveDescription = "If the target’s HP is half or less, this attack will hit with double the power.",
  moveType = Water,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  feint :: Move
  feint = Move {
  moveName = "feint",
  moveDescription = "This attack hits a target using a move such as Protect or Detect. This also lifts the effects of those moves.",
  moveType = Normal,
  power = 30,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  pluck :: Move
  pluck = Move {
  moveName = "pluck",
  moveDescription = "The user pecks the target. If the target is holding a Berry, the user eats it and gains its effect.",
  moveType = Flying,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  uturn :: Move
  uturn = Move {
  moveName = "uturn",
  moveDescription = "After making its attack, the user rushes back to switch places with a party Pokémon in waiting.",
  moveType = Bug,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  closeCombat :: Move
  closeCombat = Move {
  moveName = "closeCombat",
  moveDescription = "The user fights the target up close without guarding itself. This also lowers the user’s Defense and Sp. Def stats.",
  moveType = Fighting,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  payback :: Move
  payback = Move {
  moveName = "payback",
  moveDescription = "The user stores power, then attacks. If the user moves after the target, this attack’s power will be doubled.",
  moveType = Dark,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  assurance :: Move
  assurance = Move {
  moveName = "assurance",
  moveDescription = "If the target has already taken some damage in the same turn, this attack’s power is doubled.",
  moveType = Dark,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  lastResort :: Move
  lastResort = Move {
  moveName = "lastResort",
  moveDescription = "This move can be used only after the user has used all the other moves it knows in the battle.",
  moveType = Normal,
  power = 140,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  suckerPunch :: Move
  suckerPunch = Move {
  moveName = "suckerPunch",
  moveDescription = "This move enables the user to attack first. This move fails if the target is not readying an attack.",
  moveType = Dark,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  flareBlitz :: Move
  flareBlitz = Move {
  moveName = "flareBlitz",
  moveDescription = "The user cloaks itself in fire and charges the target. This also damages the user quite a lot. This attack may leave the target with a burn.",
  moveType = Fire,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  forcePalm :: Move
  forcePalm = Move {
  moveName = "forcePalm",
  moveDescription = "The target is attacked with a shock wave. This may also leave the target with paralysis.",
  moveType = Fighting,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  auraSphere :: Move
  auraSphere = Move {
  moveName = "auraSphere",
  moveDescription = "The user lets loose a blast of aura power from deep within its body at the target. This attack never misses.",
  moveType = Fighting,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  poisonJab :: Move
  poisonJab = Move {
  moveName = "poisonJab",
  moveDescription = "The target is stabbed with a tentacle or arm steeped in poison. This may also poison the target.",
  moveType = Poison,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  darkPulse :: Move
  darkPulse = Move {
  moveName = "darkPulse",
  moveDescription = "The user releases a horrible aura imbued with dark thoughts. This may also make the target flinch.",
  moveType = Dark,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  nightSlash :: Move
  nightSlash = Move {
  moveName = "nightSlash",
  moveDescription = "The user slashes the target the instant an opportunity arises. Critical hits land more easily.",
  moveType = Dark,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  aquaTail :: Move
  aquaTail = Move {
  moveName = "aquaTail",
  moveDescription = "The user attacks by swinging its tail as if it were a vicious wave in a raging storm.",
  moveType = Water,
  power = 90,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  seedBomb :: Move
  seedBomb = Move {
  moveName = "seedBomb",
  moveDescription = "The user slams a barrage of hard-shelled seeds down on the target from above.",
  moveType = Grass,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  airSlash :: Move
  airSlash = Move {
  moveName = "airSlash",
  moveDescription = "The user attacks with a blade of air that slices even the sky. This may also make the target flinch.",
  moveType = Flying,
  power = 75,
  accuracy = 0.95,
  effect = [],
  pp = 15
  }
  

  xScissor :: Move
  xScissor = Move {
  moveName = "xScissor",
  moveDescription = "The user slashes at the target by crossing its scythes or claws as if they were a pair of scissors.",
  moveType = Bug,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  bugBuzz :: Move
  bugBuzz = Move {
  moveName = "bugBuzz",
  moveDescription = "The user generates a damaging sound wave by vibration. This may also lower the target’s Sp. Def stat.",
  moveType = Bug,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  dragonPulse :: Move
  dragonPulse = Move {
  moveName = "dragonPulse",
  moveDescription = "The target is attacked with a shock wave generated by the user’s gaping mouth.",
  moveType = Dragon,
  power = 85,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  dragonRush :: Move
  dragonRush = Move {
  moveName = "dragonRush",
  moveDescription = "The user tackles the target while exhibiting overwhelming menace. This may also make the target flinch.",
  moveType = Dragon,
  power = 100,
  accuracy = 0.75,
  effect = [],
  pp = 10
  }
  

  powerGem :: Move
  powerGem = Move {
  moveName = "powerGem",
  moveDescription = "The user attacks with a ray of light that sparkles as if it were made of gemstones.",
  moveType = Rock,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  drainPunch :: Move
  drainPunch = Move {
  moveName = "drainPunch",
  moveDescription = "An energy-draining punch. The user’s HP is restored by half the damage taken by the target.",
  moveType = Fighting,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  vacuumWave :: Move
  vacuumWave = Move {
  moveName = "vacuumWave",
  moveDescription = "The user whirls its fists to send a wave of pure vacuum at the target. This move always goes first.",
  moveType = Fighting,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  focusBlast :: Move
  focusBlast = Move {
  moveName = "focusBlast",
  moveDescription = "The user heightens its mental focus and unleashes its power. This may also lower the target’s Sp. Def stat.",
  moveType = Fighting,
  power = 120,
  accuracy = 0.7,
  effect = [],
  pp = 5
  }
  

  energyBall :: Move
  energyBall = Move {
  moveName = "energyBall",
  moveDescription = "The user draws power from nature and fires it at the target. This may also lower the target’s Sp. Def stat.",
  moveType = Grass,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  braveBird :: Move
  braveBird = Move {
  moveName = "braveBird",
  moveDescription = "The user tucks in its wings and charges from a low altitude. This also damages the user quite a lot.",
  moveType = Flying,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  earthPower :: Move
  earthPower = Move {
  moveName = "earthPower",
  moveDescription = "The user makes the ground under the target erupt with power. This may also lower the target’s Sp. Def stat.",
  moveType = Ground,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  gigaImpact :: Move
  gigaImpact = Move {
  moveName = "gigaImpact",
  moveDescription = "The user charges at the target using every bit of its power. The user can’t move on the next turn.",
  moveType = Normal,
  power = 150,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  bulletPunch :: Move
  bulletPunch = Move {
  moveName = "bulletPunch",
  moveDescription = "The user strikes the target with tough punches as fast as bullets. This move always goes first.",
  moveType = Steel,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  avalanche :: Move
  avalanche = Move {
  moveName = "avalanche",
  moveDescription = "The power of this attack move is doubled if the user has been hurt by the target in the same turn.",
  moveType = Ice,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  iceShard :: Move
  iceShard = Move {
  moveName = "iceShard",
  moveDescription = "The user flash-freezes chunks of ice and hurls them at the target. This move always goes first.",
  moveType = Ice,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  shadowClaw :: Move
  shadowClaw = Move {
  moveName = "shadowClaw",
  moveDescription = "The user slashes with a sharp claw made from shadows. Critical hits land more easily.",
  moveType = Ghost,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  thunderFang :: Move
  thunderFang = Move {
  moveName = "thunderFang",
  moveDescription = "The user bites with electrified fangs. This may also make the target flinch or leave it with paralysis.",
  moveType = Electric,
  power = 65,
  accuracy = 0.95,
  effect = [],
  pp = 15
  }
  

  iceFang :: Move
  iceFang = Move {
  moveName = "iceFang",
  moveDescription = "The user bites with cold-infused fangs. This may also make the target flinch or leave it frozen.",
  moveType = Ice,
  power = 65,
  accuracy = 0.95,
  effect = [],
  pp = 15
  }
  

  fireFang :: Move
  fireFang = Move {
  moveName = "fireFang",
  moveDescription = "The user bites with flame-cloaked fangs. This may also make the target flinch or leave it with a burn.",
  moveType = Fire,
  power = 65,
  accuracy = 0.95,
  effect = [],
  pp = 15
  }
  

  shadowSneak :: Move
  shadowSneak = Move {
  moveName = "shadowSneak",
  moveDescription = "The user extends its shadow and attacks the target from behind. This move always goes first.",
  moveType = Ghost,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  mudBomb :: Move
  mudBomb = Move {
  moveName = "mudBomb",
  moveDescription = "The user launches a hard-packed mud ball to attack. This may also lower the target’s accuracy.",
  moveType = Ground,
  power = 65,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  psychoCut :: Move
  psychoCut = Move {
  moveName = "psychoCut",
  moveDescription = "The user tears at the target with blades formed by psychic power. Critical hits land more easily.",
  moveType = Psychic,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  zenHeadbutt :: Move
  zenHeadbutt = Move {
  moveName = "zenHeadbutt",
  moveDescription = "The user focuses its willpower to its head and attacks the target. This may also make the target flinch.",
  moveType = Psychic,
  power = 80,
  accuracy = 0.9,
  effect = [],
  pp = 15
  }
  

  mirrorShot :: Move
  mirrorShot = Move {
  moveName = "mirrorShot",
  moveDescription = "The user lets loose a flash of energy at the target from its polished body. This may also lower the target’s accuracy.",
  moveType = Steel,
  power = 65,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  flashCannon :: Move
  flashCannon = Move {
  moveName = "flashCannon",
  moveDescription = "The user gathers all its light energy and releases it all at once. This may also lower the target’s Sp. Def stat.",
  moveType = Steel,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  rockClimb :: Move
  rockClimb = Move {
  moveName = "rockClimb",
  moveDescription = "The user attacks the target by smashing into it with incredible force. This may also confuse the target.",
  moveType = Normal,
  power = 90,
  accuracy = 0.85,
  effect = [],
  pp = 20
  }
  

  dracoMeteor :: Move
  dracoMeteor = Move {
  moveName = "dracoMeteor",
  moveDescription = "Comets are summoned down from the sky onto the target. The attack’s recoil harshly lowers the user’s Sp. Atk stat.",
  moveType = Dragon,
  power = 130,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  discharge :: Move
  discharge = Move {
  moveName = "discharge",
  moveDescription = "The user strikes everything around it by letting loose a flare of electricity. This may also cause paralysis.",
  moveType = Electric,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  lavaPlume :: Move
  lavaPlume = Move {
  moveName = "lavaPlume",
  moveDescription = "The user torches everything around it in an inferno of scarlet flames. This may also leave those it hits with a burn.",
  moveType = Fire,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  leafStorm :: Move
  leafStorm = Move {
  moveName = "leafStorm",
  moveDescription = "The user whips up a storm of leaves around the target. The attack’s recoil harshly lowers the user’s Sp. Atk stat.",
  moveType = Grass,
  power = 130,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  powerWhip :: Move
  powerWhip = Move {
  moveName = "powerWhip",
  moveDescription = "The user violently whirls its vines, tentacles, or the like to harshly lash the target.",
  moveType = Grass,
  power = 120,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  rockWrecker :: Move
  rockWrecker = Move {
  moveName = "rockWrecker",
  moveDescription = "The user launches a huge boulder at the target to attack. The user can’t move on the next turn.",
  moveType = Rock,
  power = 150,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  crossPoison :: Move
  crossPoison = Move {
  moveName = "crossPoison",
  moveDescription = "A slashing attack with a poisonous blade that may also poison the target. Critical hits land more easily.",
  moveType = Poison,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  gunkShot :: Move
  gunkShot = Move {
  moveName = "gunkShot",
  moveDescription = "The user shoots filthy garbage at the target to attack. This may also poison the target.",
  moveType = Poison,
  power = 120,
  accuracy = 0.8,
  effect = [],
  pp = 5
  }
  

  ironHead :: Move
  ironHead = Move {
  moveName = "ironHead",
  moveDescription = "The user slams the target with its steel-hard head. This may also make the target flinch.",
  moveType = Steel,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  magnetBomb :: Move
  magnetBomb = Move {
  moveName = "magnetBomb",
  moveDescription = "The user launches steel bombs that stick to the target. This attack never misses.",
  moveType = Steel,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  stoneEdge :: Move
  stoneEdge = Move {
  moveName = "stoneEdge",
  moveDescription = "The user stabs the target from below with sharpened stones. Critical hits land more easily.",
  moveType = Rock,
  power = 100,
  accuracy = 0.8,
  effect = [],
  pp = 5
  }
  

  chatter :: Move
  chatter = Move {
  moveName = "chatter",
  moveDescription = "The user attacks the target with sound waves of deafening chatter. This confuses the target.",
  moveType = Flying,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  judgment :: Move
  judgment = Move {
  moveName = "judgment",
  moveDescription = "The user releases countless shots of light at the target. This move’s type varies depending on the kind of Plate the user is holding.",
  moveType = Normal,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  bugBite :: Move
  bugBite = Move {
  moveName = "bugBite",
  moveDescription = "The user bites the target. If the target is holding a Berry, the user eats it and gains its effect.",
  moveType = Bug,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  chargeBeam :: Move
  chargeBeam = Move {
  moveName = "chargeBeam",
  moveDescription = "The user attacks with an electric charge. The user may use any remaining electricity to raise its Sp. Atk stat.",
  moveType = Electric,
  power = 50,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  woodHammer :: Move
  woodHammer = Move {
  moveName = "woodHammer",
  moveDescription = "The user slams its rugged body into the target to attack. This also damages the user quite a lot.",
  moveType = Grass,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  aquaJet :: Move
  aquaJet = Move {
  moveName = "aquaJet",
  moveDescription = "The user lunges at the target at a speed that makes it almost invisible. This move always goes first.",
  moveType = Water,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  attackOrder :: Move
  attackOrder = Move {
  moveName = "attackOrder",
  moveDescription = "The user calls out its underlings to pummel the target. Critical hits land more easily.",
  moveType = Bug,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  headSmash :: Move
  headSmash = Move {
  moveName = "headSmash",
  moveDescription = "The user attacks the target with a hazardous, full-power headbutt. This also damages the user terribly.",
  moveType = Rock,
  power = 150,
  accuracy = 0.8,
  effect = [],
  pp = 5
  }
  

  doubleHit :: Move
  doubleHit = Move {
  moveName = "doubleHit",
  moveDescription = "The user slams the target with a long tail, vines, or a tentacle. The target is hit twice in a row.",
  moveType = Normal,
  power = 35,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  roarofTime :: Move
  roarofTime = Move {
  moveName = "roarofTime",
  moveDescription = "The user blasts the target with power that distorts even time. The user can’t move on the next turn.",
  moveType = Dragon,
  power = 150,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  spacialRend :: Move
  spacialRend = Move {
  moveName = "spacialRend",
  moveDescription = "The user tears the target along with the space around it. Critical hits land more easily.",
  moveType = Dragon,
  power = 100,
  accuracy = 0.95,
  effect = [],
  pp = 5
  }
  

  magmaStorm :: Move
  magmaStorm = Move {
  moveName = "magmaStorm",
  moveDescription = "The target becomes trapped within a maelstrom of fire that rages for four to five turns.",
  moveType = Fire,
  power = 100,
  accuracy = 0.75,
  effect = [],
  pp = 5
  }
  

  seedFlare :: Move
  seedFlare = Move {
  moveName = "seedFlare",
  moveDescription = "The user emits a shock wave from its body to attack its target. This may also harshly lower the target’s Sp. Def stat.",
  moveType = Grass,
  power = 120,
  accuracy = 0.85,
  effect = [],
  pp = 5
  }
  

  ominousWind :: Move
  ominousWind = Move {
  moveName = "ominousWind",
  moveDescription = "The user blasts the target with a gust of repulsive wind. This may also raise all the user’s stats at once.",
  moveType = Ghost,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  shadowForce :: Move
  shadowForce = Move {
  moveName = "shadowForce",
  moveDescription = "The user disappears, then strikes the target on the next turn. This move hits even if the target protects itself.",
  moveType = Ghost,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  psyshock :: Move
  psyshock = Move {
  moveName = "psyshock",
  moveDescription = "The user materializes an odd psychic wave to attack the target. This attack does physical damage.",
  moveType = Psychic,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  venoshock :: Move
  venoshock = Move {
  moveName = "venoshock",
  moveDescription = "The user drenches the target in a special poisonous liquid. This move’s power is doubled if the target is poisoned.",
  moveType = Poison,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  smackDown :: Move
  smackDown = Move {
  moveName = "smackDown",
  moveDescription = "The user throws a stone or similar projectile to attack an opponent. A flying Pokémon will fall to the ground when it’s hit.",
  moveType = Rock,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  stormThrow :: Move
  stormThrow = Move {
  moveName = "stormThrow",
  moveDescription = "The user strikes the target with a fierce blow. This attack always results in a critical hit.",
  moveType = Fighting,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  flameBurst :: Move
  flameBurst = Move {
  moveName = "flameBurst",
  moveDescription = "The user attacks the target with a bursting flame. The bursting flame damages Pokémon next to the target as well.",
  moveType = Fire,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  sludgeWave :: Move
  sludgeWave = Move {
  moveName = "sludgeWave",
  moveDescription = "The user strikes everything around it by swamping the area with a giant sludge wave. This may also poison those hit.",
  moveType = Poison,
  power = 95,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  synchronoise :: Move
  synchronoise = Move {
  moveName = "synchronoise",
  moveDescription = "Using an odd shock wave, the user inflicts damage on any Pokémon of the same type in the area around it.",
  moveType = Psychic,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  flameCharge :: Move
  flameCharge = Move {
  moveName = "flameCharge",
  moveDescription = "Cloaking itself in flame, the user attacks. Then, building up more power, the user raises its Speed stat.",
  moveType = Fire,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  lowSweep :: Move
  lowSweep = Move {
  moveName = "lowSweep",
  moveDescription = "The user makes a swift attack on the target’s legs, which lowers the target’s Speed stat.",
  moveType = Fighting,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  acidSpray :: Move
  acidSpray = Move {
  moveName = "acidSpray",
  moveDescription = "The user spits fluid that works to melt the target. This harshly lowers the target’s Sp. Def stat.",
  moveType = Poison,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  foulPlay :: Move
  foulPlay = Move {
  moveName = "foulPlay",
  moveDescription = "The user turns the target’s power against it. The higher the target’s Attack stat, the greater the move’s power.",
  moveType = Dark,
  power = 95,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  roundMove :: Move
  roundMove = Move {
  moveName = "roundMove",
  moveDescription = "The user attacks the target with a song. Others can join in the Round to increase the power of the attack.",
  moveType = Normal,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  echoedVoice :: Move
  echoedVoice = Move {
  moveName = "echoedVoice",
  moveDescription = "The user attacks the target with an echoing voice. If this move is used every turn, its power is increased.",
  moveType = Normal,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  chipAway :: Move
  chipAway = Move {
  moveName = "chipAway",
  moveDescription = "Looking for an opening, the user strikes consistently. The target’s stat changes don’t affect this attack’s damage.",
  moveType = Normal,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  clearSmog :: Move
  clearSmog = Move {
  moveName = "clearSmog",
  moveDescription = "The user attacks by throwing a clump of special mud. All stat changes are returned to normal.",
  moveType = Poison,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  storedPower :: Move
  storedPower = Move {
  moveName = "storedPower",
  moveDescription = "The user attacks the target with stored power. The more the user’s stats are raised, the greater the move’s power.",
  moveType = Psychic,
  power = 20,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  scald :: Move
  scald = Move {
  moveName = "scald",
  moveDescription = "The user shoots boiling hot water at its target. This may also leave the target with a burn.",
  moveType = Water,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  hex :: Move
  hex = Move {
  moveName = "hex",
  moveDescription = "This relentless attack does massive damage to a target affected by status conditions.",
  moveType = Ghost,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  skyDrop :: Move
  skyDrop = Move {
  moveName = "skyDrop",
  moveDescription = "The user takes the target into the sky, then drops it during the next turn. The target cannot attack while in the sky.",
  moveType = Flying,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  circleThrow :: Move
  circleThrow = Move {
  moveName = "circleThrow",
  moveDescription = "The target is thrown, and a different Pokémon is dragged out. In the wild, this ends a battle against a single Pokémon.",
  moveType = Fighting,
  power = 60,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  incinerate :: Move
  incinerate = Move {
  moveName = "incinerate",
  moveDescription = "The user attacks opposing Pokémon with fire. If a Pokémon is holding a certain item, such as a Berry, the item becomes burned up and unusable.",
  moveType = Fire,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  acrobatics :: Move
  acrobatics = Move {
  moveName = "acrobatics",
  moveDescription = "The user nimbly strikes the target. If the user is not holding an item, this attack inflicts massive damage.",
  moveType = Flying,
  power = 55,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  retaliate :: Move
  retaliate = Move {
  moveName = "retaliate",
  moveDescription = "The user gets revenge for a fainted ally. If an ally fainted in the previous turn, this move’s power is increased.",
  moveType = Normal,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  inferno :: Move
  inferno = Move {
  moveName = "inferno",
  moveDescription = "The user attacks by engulfing the target in an intense fire. This leaves the target with a burn.",
  moveType = Fire,
  power = 100,
  accuracy = 0.5,
  effect = [],
  pp = 5
  }
  

  waterPledge :: Move
  waterPledge = Move {
  moveName = "waterPledge",
  moveDescription = "A column of water strikes the target. When combined with its fire equivalent, its power increases and a rainbow appears.",
  moveType = Water,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  firePledge :: Move
  firePledge = Move {
  moveName = "firePledge",
  moveDescription = "A column of fire hits the target. When used with its grass equivalent, its power increases and a vast sea of fire appears.",
  moveType = Fire,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  grassPledge :: Move
  grassPledge = Move {
  moveName = "grassPledge",
  moveDescription = "A column of grass hits the target. When used with its water equivalent, its power increases and a vast swamp appears.",
  moveType = Grass,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  voltSwitch :: Move
  voltSwitch = Move {
  moveName = "voltSwitch",
  moveDescription = "After making its attack, the user rushes back to switch places with a party Pokémon in waiting.",
  moveType = Electric,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  struggleBug :: Move
  struggleBug = Move {
  moveName = "struggleBug",
  moveDescription = "While resisting, the user attacks the opposing Pokémon. This lowers the Sp. Atk stat of those hit.",
  moveType = Bug,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  bulldoze :: Move
  bulldoze = Move {
  moveName = "bulldoze",
  moveDescription = "The user strikes everything around it by stomping down on the ground. This lowers the Speed stat of those hit.",
  moveType = Ground,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  frostBreath :: Move
  frostBreath = Move {
  moveName = "frostBreath",
  moveDescription = "The user blows its cold breath on the target. This attack always results in a critical hit.",
  moveType = Ice,
  power = 60,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  dragonTail :: Move
  dragonTail = Move {
  moveName = "dragonTail",
  moveDescription = "The target is knocked away, and a different Pokémon is dragged out. In the wild, this ends a battle against a single Pokémon.",
  moveType = Dragon,
  power = 60,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  electroweb :: Move
  electroweb = Move {
  moveName = "electroweb",
  moveDescription = "The user attacks and captures opposing Pokémon using an electric net. This lowers their Speed stat.",
  moveType = Electric,
  power = 55,
  accuracy = 0.95,
  effect = [],
  pp = 15
  }
  

  wildCharge :: Move
  wildCharge = Move {
  moveName = "wildCharge",
  moveDescription = "The user shrouds itself in electricity and smashes into its target. This also damages the user a little.",
  moveType = Electric,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  drillRun :: Move
  drillRun = Move {
  moveName = "drillRun",
  moveDescription = "The user crashes into its target while rotating its body like a drill. Critical hits land more easily.",
  moveType = Ground,
  power = 80,
  accuracy = 0.95,
  effect = [],
  pp = 10
  }
  

  dualChop :: Move
  dualChop = Move {
  moveName = "dualChop",
  moveDescription = "The user attacks its target by hitting it with brutal strikes. The target is hit twice in a row.",
  moveType = Dragon,
  power = 40,
  accuracy = 0.9,
  effect = [],
  pp = 15
  }
  

  heartStamp :: Move
  heartStamp = Move {
  moveName = "heartStamp",
  moveDescription = "The user unleashes a vicious blow after its cute act makes the target less wary. This may also make the target flinch.",
  moveType = Psychic,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  hornLeech :: Move
  hornLeech = Move {
  moveName = "hornLeech",
  moveDescription = "The user drains the target’s energy with its horns. The user’s HP is restored by half the damage taken by the target.",
  moveType = Grass,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  sacredSword :: Move
  sacredSword = Move {
  moveName = "sacredSword",
  moveDescription = "The user attacks by slicing with a long horn. The target’s stat changes don’t affect this attack’s damage.",
  moveType = Fighting,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  razorShell :: Move
  razorShell = Move {
  moveName = "razorShell",
  moveDescription = "The user cuts its target with sharp shells. This may also lower the target’s Defense stat.",
  moveType = Water,
  power = 75,
  accuracy = 0.95,
  effect = [],
  pp = 10
  }
  

  leafTornado :: Move
  leafTornado = Move {
  moveName = "leafTornado",
  moveDescription = "The user attacks its target by encircling it in sharp leaves. This attack may also lower the target’s accuracy.",
  moveType = Grass,
  power = 65,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  steamroller :: Move
  steamroller = Move {
  moveName = "steamroller",
  moveDescription = "The user crushes its target by rolling over the target with its rolled-up body. This may also make the target flinch.",
  moveType = Bug,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  nightDaze :: Move
  nightDaze = Move {
  moveName = "nightDaze",
  moveDescription = "The user lets loose a pitch-black shock wave at its target. This may also lower the target’s accuracy.",
  moveType = Dark,
  power = 85,
  accuracy = 0.95,
  effect = [],
  pp = 10
  }
  

  psystrike :: Move
  psystrike = Move {
  moveName = "psystrike",
  moveDescription = "The user materializes an odd psychic wave to attack the target. This attack does physical damage.",
  moveType = Psychic,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  tailSlap :: Move
  tailSlap = Move {
  moveName = "tailSlap",
  moveDescription = "The user attacks by striking the target with its hard tail. It hits the target two to five times in a row.",
  moveType = Normal,
  power = 25,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  hurricane :: Move
  hurricane = Move {
  moveName = "hurricane",
  moveDescription = "The user attacks by wrapping its opponent in a fierce wind that flies up into the sky. This may also confuse the target.",
  moveType = Flying,
  power = 110,
  accuracy = 0.7,
  effect = [],
  pp = 10
  }
  

  headCharge :: Move
  headCharge = Move {
  moveName = "headCharge",
  moveDescription = "The user charges its head into its target, using its powerful guard hair. This also damages the user a little.",
  moveType = Normal,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  gearGrind :: Move
  gearGrind = Move {
  moveName = "gearGrind",
  moveDescription = "The user attacks by throwing steel gears at its target twice.",
  moveType = Steel,
  power = 50,
  accuracy = 0.85,
  effect = [],
  pp = 15
  }
  

  searingShot :: Move
  searingShot = Move {
  moveName = "searingShot",
  moveDescription = "The user torches everything around it in an inferno of scarlet flames. This may also leave those it hits with a burn.",
  moveType = Fire,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  technoBlast :: Move
  technoBlast = Move {
  moveName = "technoBlast",
  moveDescription = "The user fires a beam of light at its target. The move’s type changes depending on the Drive the user holds.",
  moveType = Normal,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  relicSong :: Move
  relicSong = Move {
  moveName = "relicSong",
  moveDescription = "The user sings an ancient song and attacks by appealing to the hearts of the listening opposing Pokémon. This may also induce sleep.",
  moveType = Normal,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  secretSword :: Move
  secretSword = Move {
  moveName = "secretSword",
  moveDescription = "The user cuts with its long horn. The odd power contained in the horn does physical damage to the target.",
  moveType = Fighting,
  power = 85,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  glaciate :: Move
  glaciate = Move {
  moveName = "glaciate",
  moveDescription = "The user attacks by blowing freezing cold air at opposing Pokémon. This lowers their Speed stat.",
  moveType = Ice,
  power = 65,
  accuracy = 0.95,
  effect = [],
  pp = 10
  }
  

  boltStrike :: Move
  boltStrike = Move {
  moveName = "boltStrike",
  moveDescription = "The user surrounds itself with a great amount of electricity and charges its target. This may also leave the target with paralysis.",
  moveType = Electric,
  power = 130,
  accuracy = 0.85,
  effect = [],
  pp = 5
  }
  

  blueFlare :: Move
  blueFlare = Move {
  moveName = "blueFlare",
  moveDescription = "The user attacks by engulfing the target in an intense, yet beautiful, blue flame. This may also leave the target with a burn.",
  moveType = Fire,
  power = 130,
  accuracy = 0.85,
  effect = [],
  pp = 5
  }
  

  fieryDance :: Move
  fieryDance = Move {
  moveName = "fieryDance",
  moveDescription = "Cloaked in flames, the user dances and flaps its wings. This may also raise the user’s Sp. Atk stat.",
  moveType = Fire,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  freezeShock :: Move
  freezeShock = Move {
  moveName = "freezeShock",
  moveDescription = "On the second turn, the user hits the target with electrically charged ice. This may also leave the target with paralysis.",
  moveType = Ice,
  power = 140,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  iceBurn :: Move
  iceBurn = Move {
  moveName = "iceBurn",
  moveDescription = "On the second turn, an ultracold, freezing wind surrounds the target. This may leave the target with a burn.",
  moveType = Ice,
  power = 140,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  snarl :: Move
  snarl = Move {
  moveName = "snarl",
  moveDescription = "The user yells as if it’s ranting about something, which lowers the Sp. Atk stat of opposing Pokémon.",
  moveType = Dark,
  power = 55,
  accuracy = 0.95,
  effect = [],
  pp = 15
  }
  

  icicleCrash :: Move
  icicleCrash = Move {
  moveName = "icicleCrash",
  moveDescription = "The user attacks by harshly dropping large icicles onto the target. This may also make the target flinch.",
  moveType = Ice,
  power = 85,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  vcreate :: Move
  vcreate = Move {
  moveName = "vcreate",
  moveDescription = "With a hot flame on its forehead, the user hurls itself at its target. This lowers the user’s Defense, Sp. Def, and Speed stats.",
  moveType = Fire,
  power = 180,
  accuracy = 0.95,
  effect = [],
  pp = 5
  }
  

  fusionFlare :: Move
  fusionFlare = Move {
  moveName = "fusionFlare",
  moveDescription = "The user brings down a giant flame. This move’s power is increased when influenced by an enormous lightning bolt.",
  moveType = Fire,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  fusionBolt :: Move
  fusionBolt = Move {
  moveName = "fusionBolt",
  moveDescription = "The user throws down a giant lightning bolt. This move’s power is increased when influenced by an enormous flame.",
  moveType = Electric,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  flyingPress :: Move
  flyingPress = Move {
  moveName = "flyingPress",
  moveDescription = "The user dives down onto the target from the sky. This move is Fighting and Flying type simultaneously.",
  moveType = Fighting,
  power = 100,
  accuracy = 0.95,
  effect = [],
  pp = 10
  }
  

  belch :: Move
  belch = Move {
  moveName = "belch",
  moveDescription = "The user lets out a damaging belch at the target. The user must eat a held Berry to use this move.",
  moveType = Poison,
  power = 120,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  fellStinger :: Move
  fellStinger = Move {
  moveName = "fellStinger",
  moveDescription = "When the user knocks out a target with this move, the user’s Attack stat rises drastically.",
  moveType = Bug,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 25
  }
  

  phantomForce :: Move
  phantomForce = Move {
  moveName = "phantomForce",
  moveDescription = "The user vanishes somewhere, then strikes the target on the next turn. This move hits even if the target protects itself.",
  moveType = Ghost,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  parabolicCharge :: Move
  parabolicCharge = Move {
  moveName = "parabolicCharge",
  moveDescription = "The user attacks everything around it. The user’s HP is restored by half the damage taken by those hit.",
  moveType = Electric,
  power = 65,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  petalBlizzard :: Move
  petalBlizzard = Move {
  moveName = "petalBlizzard",
  moveDescription = "The user stirs up a violent petal blizzard and attacks everything around it.",
  moveType = Grass,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  freezeDry :: Move
  freezeDry = Move {
  moveName = "freezeDry",
  moveDescription = "The user rapidly cools the target. This may also leave the target frozen. This move is super effective on Water types.",
  moveType = Ice,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  disarmingVoice :: Move
  disarmingVoice = Move {
  moveName = "disarmingVoice",
  moveDescription = "Letting out a charming cry, the user does emotional damage to opposing Pokémon. This attack never misses.",
  moveType = Fairy,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  drainingKiss :: Move
  drainingKiss = Move {
  moveName = "drainingKiss",
  moveDescription = "The user steals the target’s HP with a kiss. The user’s HP is restored by over half of the damage taken by the target.",
  moveType = Fairy,
  power = 50,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  playRough :: Move
  playRough = Move {
  moveName = "playRough",
  moveDescription = "The user plays rough with the target and attacks it. This may also lower the target’s Attack stat.",
  moveType = Fairy,
  power = 90,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  fairyWind :: Move
  fairyWind = Move {
  moveName = "fairyWind",
  moveDescription = "The user stirs up a fairy wind and strikes the target with it.",
  moveType = Fairy,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 30
  }
  

  moonblast :: Move
  moonblast = Move {
  moveName = "moonblast",
  moveDescription = "Borrowing the power of the moon, the user attacks the target. This may also lower the target’s Sp. Atk stat.",
  moveType = Fairy,
  power = 95,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  boomburst :: Move
  boomburst = Move {
  moveName = "boomburst",
  moveDescription = "The user attacks everything around it with the destructive power of a terrible, explosive sound.",
  moveType = Normal,
  power = 140,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  diamondStorm :: Move
  diamondStorm = Move {
  moveName = "diamondStorm",
  moveDescription = "The user whips up a storm of diamonds to damage opposing Pokémon. This may also sharply raise the user’s Defense stat.",
  moveType = Rock,
  power = 100,
  accuracy = 0.95,
  effect = [],
  pp = 5
  }
  

  steamEruption :: Move
  steamEruption = Move {
  moveName = "steamEruption",
  moveDescription = "The user immerses the target in superheated steam. This may also leave the target with a burn.",
  moveType = Water,
  power = 110,
  accuracy = 0.95,
  effect = [],
  pp = 5
  }
  

  hyperspaceHole :: Move
  hyperspaceHole = Move {
  moveName = "hyperspaceHole",
  moveDescription = "Using a hyperspace hole, the user appears right next to the target and strikes. This also hits a target using a move such as Protect or Detect.",
  moveType = Psychic,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  waterShuriken :: Move
  waterShuriken = Move {
  moveName = "waterShuriken",
  moveDescription = "The user hits the target with throwing stars two to five times in a row. This move always goes first.",
  moveType = Water,
  power = 15,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  mysticalFire :: Move
  mysticalFire = Move {
  moveName = "mysticalFire",
  moveDescription = "The user attacks by breathing a special, hot fire. This also lowers the target’s Sp. Atk stat.",
  moveType = Fire,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  dazzlingGleam :: Move
  dazzlingGleam = Move {
  moveName = "dazzlingGleam",
  moveDescription = "The user damages opposing Pokémon by emitting a powerful flash.",
  moveType = Fairy,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  nuzzle :: Move
  nuzzle = Move {
  moveName = "nuzzle",
  moveDescription = "The user attacks by nuzzling its electrified cheeks against the target. This also leaves the target with paralysis.",
  moveType = Electric,
  power = 20,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  holdBack :: Move
  holdBack = Move {
  moveName = "holdBack",
  moveDescription = "The user holds back when it attacks, and the target is left with at least 1 HP.",
  moveType = Normal,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 40
  }
  

  infestation :: Move
  infestation = Move {
  moveName = "infestation",
  moveDescription = "The target is infested and attacked for four to five turns. The target can’t flee during this time.",
  moveType = Bug,
  power = 20,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  powerUpPunch :: Move
  powerUpPunch = Move {
  moveName = "powerUpPunch",
  moveDescription = "Striking opponents over and over makes the user’s fists harder. Hitting a target raises the Attack stat.",
  moveType = Fighting,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  oblivionWing :: Move
  oblivionWing = Move {
  moveName = "oblivionWing",
  moveDescription = "The user absorbs its target’s HP. The user’s HP is restored by over half of the damage taken by the target.",
  moveType = Flying,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  thousandArrows :: Move
  thousandArrows = Move {
  moveName = "thousandArrows",
  moveDescription = "This move also hits opposing Pokémon that are in the air. Those Pokémon are knocked down to the ground.",
  moveType = Ground,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  thousandWaves :: Move
  thousandWaves = Move {
  moveName = "thousandWaves",
  moveDescription = "The user attacks with a wave that crawls along the ground. Those hit can’t flee from battle.",
  moveType = Ground,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  land :: Move
  land = Move {
  moveName = "land",
  moveDescription = "The user gathers the energy of the land and focuses that power on opposing Pokémon to damage them.",
  moveType = Ground,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  lightofRuin :: Move
  lightofRuin = Move {
  moveName = "lightofRuin",
  moveDescription = "Drawing power from the Eternal Flower, the user fires a powerful beam of light. This also damages the user quite a lot.",
  moveType = Fairy,
  power = 140,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  originPulse :: Move
  originPulse = Move {
  moveName = "originPulse",
  moveDescription = "The user attacks opposing Pokémon with countless beams of light that glow a deep and brilliant blue.",
  moveType = Water,
  power = 110,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  precipiceBlades :: Move
  precipiceBlades = Move {
  moveName = "precipiceBlades",
  moveDescription = "The user attacks opposing Pokémon by manifesting the power of the land in fearsome blades of stone.",
  moveType = Ground,
  power = 120,
  accuracy = 0.85,
  effect = [],
  pp = 10
  }
  

  dragonAscent :: Move
  dragonAscent = Move {
  moveName = "dragonAscent",
  moveDescription = "After soaring upward, the user attacks its target by dropping out of the sky at high speeds. But it lowers its own Defense and Sp. Def stats in the process.",
  moveType = Flying,
  power = 120,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  hyperspaceFury :: Move
  hyperspaceFury = Move {
  moveName = "hyperspaceFury",
  moveDescription = "Using its many arms, the user unleashes a barrage of attacks that ignore the effects of moves like Protect and Detect. But the user’s Defense stat falls.",
  moveType = Dark,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  catastropika :: Move
  catastropika = Move {
  moveName = "catastropika",
  moveDescription = "The user, Pikachu, surrounds itself with the maximum amount of electricity using its Z-Power and pounces on its target with full force.",
  moveType = Electric,
  power = 210,
  accuracy = 1.0,
  effect = [],
  pp = 1
  }
  

  firstImpression :: Move
  firstImpression = Move {
  moveName = "firstImpression",
  moveDescription = "Although this move has great power, it only works the first turn the user is in battle.",
  moveType = Bug,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  spiritShackle :: Move
  spiritShackle = Move {
  moveName = "spiritShackle",
  moveDescription = "The user attacks while simultaneously stitching the target’s shadow to the ground to prevent the target from escaping.",
  moveType = Ghost,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  darkestLariat :: Move
  darkestLariat = Move {
  moveName = "darkestLariat",
  moveDescription = "The user swings both arms and hits the target. The target’s stat changes don’t affect this attack’s damage.",
  moveType = Dark,
  power = 85,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  sparklingAria :: Move
  sparklingAria = Move {
  moveName = "sparklingAria",
  moveDescription = "The user bursts into song, emitting many bubbles. Any Pokémon suffering from a burn will be healed by the touch of these bubbles.",
  moveType = Water,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  iceHammer :: Move
  iceHammer = Move {
  moveName = "iceHammer",
  moveDescription = "The user swings and hits with its strong, heavy fist. It lowers the user’s Speed, however.",
  moveType = Ice,
  power = 100,
  accuracy = 0.9,
  effect = [],
  pp = 10
  }
  

  highHorsepower :: Move
  highHorsepower = Move {
  moveName = "highHorsepower",
  moveDescription = "The user fiercely attacks the target using its entire body.",
  moveType = Ground,
  power = 95,
  accuracy = 0.95,
  effect = [],
  pp = 10
  }
  

  solarBlade :: Move
  solarBlade = Move {
  moveName = "solarBlade",
  moveDescription = "In this two-turn attack, the user gathers light and fills a blade with the light’s energy, attacking the target on the next turn.",
  moveType = Grass,
  power = 125,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  leafage :: Move
  leafage = Move {
  moveName = "leafage",
  moveDescription = "The user attacks by pelting the target with leaves.",
  moveType = Grass,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 40
  }
  

  throatChop :: Move
  throatChop = Move {
  moveName = "throatChop",
  moveDescription = "The user attacks the target’s throat, and the resultant suffering prevents the target from using moves that emit sound for two turns.",
  moveType = Dark,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  pollenPuff :: Move
  pollenPuff = Move {
  moveName = "pollenPuff",
  moveDescription = "The user attacks the enemy with a pollen puff that explodes. If the target is an ally, it gives the ally a pollen puff that restores its HP instead.",
  moveType = Bug,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  anchorShot :: Move
  anchorShot = Move {
  moveName = "anchorShot",
  moveDescription = "The user entangles the target with its anchor chain while attacking. The target becomes unable to flee.",
  moveType = Steel,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  lunge :: Move
  lunge = Move {
  moveName = "lunge",
  moveDescription = "The user makes a lunge at the target, attacking with full force. This also lowers the target’s Attack stat.",
  moveType = Bug,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  fireLash :: Move
  fireLash = Move {
  moveName = "fireLash",
  moveDescription = "The user strikes the target with a burning lash. This also lowers the target’s Defense stat.",
  moveType = Fire,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  powerTrip :: Move
  powerTrip = Move {
  moveName = "powerTrip",
  moveDescription = "The user boasts its strength and attacks the target. The more the user’s stats are raised, the greater the move’s power.",
  moveType = Dark,
  power = 20,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  burnUp :: Move
  burnUp = Move {
  moveName = "burnUp",
  moveDescription = "To inflict massive damage, the user burns itself out. After using this move, the user will no longer be Fire type.",
  moveType = Fire,
  power = 130,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  smartStrike :: Move
  smartStrike = Move {
  moveName = "smartStrike",
  moveDescription = "The user stabs the target with a sharp horn. This attack never misses.",
  moveType = Steel,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  revelationDance :: Move
  revelationDance = Move {
  moveName = "revelationDance",
  moveDescription = "The user attacks the target by dancing very hard. The user’s type determines the type of this move.",
  moveType = Normal,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  coreEnforcer :: Move
  coreEnforcer = Move {
  moveName = "coreEnforcer",
  moveDescription = "If the Pokémon the user has inflicted damage on have already used their moves, this move eliminates the effect of the target’s Ability.",
  moveType = Dragon,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  tropKick :: Move
  tropKick = Move {
  moveName = "tropKick",
  moveDescription = "The user lands an intense kick of tropical origins on the target. This also lowers the target’s Attack stat.",
  moveType = Grass,
  power = 70,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  beakBlast :: Move
  beakBlast = Move {
  moveName = "beakBlast",
  moveDescription = "The user first heats up its beak, and then it attacks the target. Making direct contact with the Pokémon while it’s heating up its beak results in a burn.",
  moveType = Flying,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  clangingScales :: Move
  clangingScales = Move {
  moveName = "clangingScales",
  moveDescription = "The user rubs the scales on its entire body and makes a huge noise to attack the opposing Pokémon. The user’s Defense stat goes down after the attack.",
  moveType = Dragon,
  power = 110,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  dragonHammer :: Move
  dragonHammer = Move {
  moveName = "dragonHammer",
  moveDescription = "The user uses its body like a hammer to attack the target and inflict damage.",
  moveType = Dragon,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 15
  }
  

  brutalSwing :: Move
  brutalSwing = Move {
  moveName = "brutalSwing",
  moveDescription = "The user swings its body around violently to inflict damage on everything in its vicinity.",
  moveType = Dark,
  power = 60,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  sinisterArrowRaid :: Move
  sinisterArrowRaid = Move {
  moveName = "sinisterArrowRaid",
  moveDescription = "The user, Decidueye, creates countless arrows using its Z-Power and shoots the target with full force.",
  moveType = Ghost,
  power = 180,
  accuracy = 1.0,
  effect = [],
  pp = 1
  }
  

  maliciousMoonsault :: Move
  maliciousMoonsault = Move {
  moveName = "maliciousMoonsault",
  moveDescription = "The user, Incineroar, strengthens its body using its Z-Power and crashes into the target with full force.",
  moveType = Dark,
  power = 180,
  accuracy = 1.0,
  effect = [],
  pp = 1
  }
  

  oceanicOperetta :: Move
  oceanicOperetta = Move {
  moveName = "oceanicOperetta",
  moveDescription = "The user, Primarina, summons a massive amount of water using its Z-Power and attacks the target with full force.",
  moveType = Water,
  power = 195,
  accuracy = 1.0,
  effect = [],
  pp = 1
  }
  

  soulStealing7StarStrike :: Move
  soulStealing7StarStrike = Move {
  moveName = "soulStealing7StarStrike",
  moveDescription = "After obtaining Z-Power, the user, Marshadow, punches and kicks the target consecutively with full force.",
  moveType = Ghost,
  power = 195,
  accuracy = 1.0,
  effect = [],
  pp = 1
  }
  

  stokedSparksurfer :: Move
  stokedSparksurfer = Move {
  moveName = "stokedSparksurfer",
  moveDescription = "After obtaining Z-Power, the user, Alolan Raichu, attacks the target with full force. This move leaves the target with paralysis.",
  moveType = Electric,
  power = 175,
  accuracy = 1.0,
  effect = [],
  pp = 1
  }
  

  pulverizingPancake :: Move
  pulverizingPancake = Move {
  moveName = "pulverizingPancake",
  moveDescription = "Z-Power brings out the true capabilities of the user, Snorlax. The Pokémon moves its enormous body energetically and attacks the target with full force.",
  moveType = Normal,
  power = 210,
  accuracy = 1.0,
  effect = [],
  pp = 1
  }
  

  genesisSupernova :: Move
  genesisSupernova = Move {
  moveName = "genesisSupernova",
  moveDescription = "After obtaining Z-Power, the user, Mew, attacks the target with full force. The terrain will be charged with psychic energy.",
  moveType = Psychic,
  power = 185,
  accuracy = 1.0,
  effect = [],
  pp = 1
  }
  

  shellTrap :: Move
  shellTrap = Move {
  moveName = "shellTrap",
  moveDescription = "The user sets a shell trap. If the user is hit by a physical move, the trap will explode and inflict damage on the opposing Pokémon.",
  moveType = Fire,
  power = 150,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  fleurCannon :: Move
  fleurCannon = Move {
  moveName = "fleurCannon",
  moveDescription = "The user unleashes a strong beam. The attack’s recoil harshly lowers the user’s Sp. Atk stat.",
  moveType = Fairy,
  power = 130,
  accuracy = 0.9,
  effect = [],
  pp = 5
  }
  

  psychicFangs :: Move
  psychicFangs = Move {
  moveName = "psychicFangs",
  moveDescription = "The user bites the target with its psychic capabilities. This can also destroy Light Screen and Reflect.",
  moveType = Psychic,
  power = 85,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  stompingTantrum :: Move
  stompingTantrum = Move {
  moveName = "stompingTantrum",
  moveDescription = "Driven by frustration, the user attacks the target. If the user’s previous move has failed, the power of this move doubles.",
  moveType = Ground,
  power = 75,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  shadowBone :: Move
  shadowBone = Move {
  moveName = "shadowBone",
  moveDescription = "The user attacks by beating the target with a bone that contains a spirit. This may also lower the target’s Defense stat.",
  moveType = Ghost,
  power = 85,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  accelerock :: Move
  accelerock = Move {
  moveName = "accelerock",
  moveDescription = "The user smashes into the target at high speed. This move always goes first.",
  moveType = Rock,
  power = 40,
  accuracy = 1.0,
  effect = [],
  pp = 20
  }
  

  liquidation :: Move
  liquidation = Move {
  moveName = "liquidation",
  moveDescription = "The user slams into the target using a full-force blast of water. This may also lower the target’s Defense stat.",
  moveType = Water,
  power = 85,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  prismaticLaser :: Move
  prismaticLaser = Move {
  moveName = "prismaticLaser",
  moveDescription = "The user shoots powerful lasers using the power of a prism. The user can’t move on the next turn.",
  moveType = Psychic,
  power = 160,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  spectralThief :: Move
  spectralThief = Move {
  moveName = "spectralThief",
  moveDescription = "The user hides in the target’s shadow, steals the target’s stat boosts, and then attacks.",
  moveType = Ghost,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  sunsteelStrike :: Move
  sunsteelStrike = Move {
  moveName = "sunsteelStrike",
  moveDescription = "The user slams into the target with the force of a meteor. This move can be used on the target regardless of its Abilities.",
  moveType = Steel,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  moongeistBeam :: Move
  moongeistBeam = Move {
  moveName = "moongeistBeam",
  moveDescription = "The user emits a sinister ray to attack the target. This move can be used on the target regardless of its Abilities.",
  moveType = Ghost,
  power = 100,
  accuracy = 1.0,
  effect = [],
  pp = 5
  }
  

  zingZap :: Move
  zingZap = Move {
  moveName = "zingZap",
  moveDescription = "A strong electric blast crashes down on the target, giving it an electric shock. This may also make the target flinch.",
  moveType = Electric,
  power = 80,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  

  multiAttack :: Move
  multiAttack = Move {
  moveName = "multiAttack",
  moveDescription = "Cloaking itself in high energy, the user slams into the target. The memory held determines the move’s type.",
  moveType = Normal,
  power = 90,
  accuracy = 1.0,
  effect = [],
  pp = 10
  }
  