{-----------------------------------------------------------------------------
Haskell Pokemon
------------------------------------------------------------------------------}
{-# LANGUAGE RecursiveDo #-}
import Prelude hiding (lookup)
import Control.Monad  (void)
import Data.List      (isPrefixOf)
import Data.Maybe
import Data.Monoid
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Graphics.UI.Threepenny as UI
import Control.Monad
import Data.IORef
import qualified Graphics.UI.Threepenny as UI
import Graphics.UI.Threepenny.Core
import System.FilePath
import Control.Concurrent
import Foreign.PokemonGame.Pokemon
import Foreign.PokemonGame.InitState
import Foreign.PokemonGame.GameUtils
import Foreign.PokemonGame.State
import Text.Read
import Foreign.PokemonGame.MainOne
import Foreign.PokemonGame.Move
import Foreign.PokemonGame.UserGetMove 
import Foreign.PokemonGame.CalculateDamage
import Foreign.PokemonGame.Ai
{-----------------------------------------------------------------------------
    Main
------------------------------------------------------------------------------}
main :: IO ()
main = startGUI defaultConfig setup

setup :: Window -> UI ()
setup window = void $ mdo
    return window # set title "Pokemon Game"
    -- GUI elements
    createBtn   <- UI.button #+ [string "Create"]
    loadBtn   <- UI.button #+ [string "Load"]
    startBtn   <- UI.button #+ [string "Start Game"]
    deleteBtn   <- UI.button #+ [string "Delete"]
    dummyBtn   <- UI.button #+ [string "Dummy"]
    listBox     <- UI.listBox  bListBoxItems bSelection bDisplayDataItem
    listBoxPokemon  <- UI.listBox  bListBoxItemsPokemon bSelectionPokemon bDisplayDataItemPokemon
    filterEntry <- UI.entry    bFilterString
    ((info, name), tDataItem)
                <- dataItem    bSelectionDataItem
    ((infoPokemon, namePokemon), tDataItemPokemon)
                <- dataItemPokemon    bSelectionDataItemPokemon

    canvas <- UI.canvas
        # set UI.height 720
        # set UI.width 1080
        # set style [("border", "solid black 1px"), ("background", "#eee")]

    let playGame pokemona pokemonb aiDiff = initState pokemona pokemonb aiDiff
  

    -- saves user choice here
    inputs   <- liftIO $ newIORef []

    -- GUI layout
    element listBox # set (attr "size") "10" # set style [("width","200px")]
    element listBoxPokemon # set (attr "size") "10" # set style [("width", "600px")]

    let uiDataItem = grid [[string "Comment:", element info],
                           [string "Pokemon:", element name]]
    let glue = string " "
    getBody window #+ [grid
        [
         [element canvas]
        ,[element startBtn]
        ,[row [string "Filter Pokemon Name:", element filterEntry], glue]
        ,[element listBoxPokemon]
        ,[uiDataItem]
        ,[element listBox]
        ,[row [element createBtn, element deleteBtn, element startBtn], glue]
        ]
      ]

    -- events and behaviors
    bFilterString <- stepper "" . rumors $ UI.userText filterEntry
    let tFilter = isPrefixOf <$> UI.userText filterEntry
        bFilter = facts  tFilter
        eFilter = rumors tFilter

    let eSelection  = rumors $ UI.userSelection listBox
        eDataItemIn = rumors $ tDataItem
        eCreate     = UI.click createBtn
        eDummy      = UI.click dummyBtn
        eDelete     = UI.click deleteBtn
        eLoad       = UI.click loadBtn
        eStart      = UI.click startBtn


    -- database
    let update' mkey x = flip update x <$> mkey
    
    bDatabase <- accumB emptydb $ concatenate <$> unions
        [ create ("comments...","pokemon name...") <$ eCreate
        , filterJust $ update' <$> bSelection <@> eDataItemIn
        , deletex <$> filterJust (bSelection <@ eDelete)
        ]
    

    let updatePokemon' mkey x = flip update x <$> mkey


    bDatabasePokemon <- accumB pokemondb $ concatenate <$> unions []

    -- selection
    -- bSelection :: Behavior (Maybe DatabaseKey)
    bSelection <- stepper Nothing $ head <$> unions
        [ eSelection
        , Nothing <$ eDelete
        , Just . nextKey <$> bDatabase <@ eCreate
        , (\b s p -> b >>= \a -> if p (s a) then Just a else Nothing)
            <$> bSelection <*> bShowDataItem <@> eFilter
        ]

    bSelectionPokemon <- stepper Nothing $ head <$> unions
        [ eSelection
        , Nothing <$ eDelete
        , Just . nextKey <$> bDatabasePokemon  <@ eDummy
        , (\b s p -> b >>= \a -> if p (s a) then Just a else Nothing)
            <$> bSelection <*> bShowDataItemPokemon <@> eFilter
        ]

    let bLookup :: Behavior (DatabaseKey -> Maybe DataItem)
        bLookup = flip lookup <$> bDatabase
                
        bShowDataItem :: Behavior (DatabaseKey -> String)
        bShowDataItem = (maybe "" showDataItem .) <$> bLookup

        bDisplayDataItem = (UI.string .) <$> bShowDataItem
                
        bListBoxItems :: Behavior [DatabaseKey]
        bListBoxItems = (\p show -> filter (p. show) . keys)
                    <$> bFilter <*> bShowDataItem <*> bDatabase

        bSelectionDataItem :: Behavior (Maybe DataItem)
        bSelectionDataItem = (=<<) <$> bLookup <*> bSelection

    let bLookupPokemon :: Behavior (DatabaseKey -> Maybe DataItem)
        bLookupPokemon = flip lookup <$> bDatabasePokemon
                
        bShowDataItemPokemon :: Behavior (DatabaseKey -> String)
        bShowDataItemPokemon = (maybe "" showDataItem .) <$> bLookupPokemon

        bDisplayDataItemPokemon = (UI.string .) <$> bShowDataItemPokemon
                
        bListBoxItemsPokemon :: Behavior [DatabaseKey]
        bListBoxItemsPokemon = (\p show -> filter (p . show) . keys)
                    <$> bFilter <*> bShowDataItemPokemon <*> bDatabasePokemon

        bSelectionDataItemPokemon :: Behavior (Maybe DataItem)
        bSelectionDataItemPokemon = (=<<) <$> bLookupPokemon <*> bSelectionPokemon

    -- automatically enable / disable editing
    let
        bDisplayItem :: Behavior Bool
        bDisplayItem = maybe False (const True) <$> bSelection
    
    element deleteBtn # sink UI.enabled bDisplayItem
    element info # sink UI.enabled bDisplayItem
    element name  # sink UI.enabled bDisplayItem
    
    let create x (Database newkey db) = do Database (newkey + 1) $ Map.insert newkey x db

    let update key x (Database newkey db) = Database newkey $ Map.insert key x db

    let deletex key (Database newkey db) = Database newkey $ Map.delete key db

    let lookup key (Database _ db) = Map.lookup key db

    

    --gives user the option to choose a pokemon and its moves 
--and an enemy pokemon will also be given out
--returns a new fresh state with the two chosen pokemon for the new battle
    
   {--letState = do --}
    let recursiveAICheckValid = do
        liftIO $ putStrLn ("Choose your difficulty: dumb or medium ?")
        chosenDiff <- liftIO getLine
        let isValid = elem chosenDiff ["dumb", "medium"]
        if isValid
          then do
            if chosenDiff == "dumb"
              then do
                return dumbAi
              else do
                return medAi
            else do 
              liftIO $ putStrLn "Invalid input!"
              recursiveAICheckValid 

    let recursiveCheckValid side = do
        liftIO $ putStrLn ("Type one of the following pokemon's index to choose for" ++ side)
        chosenIndex <- liftIO getLine
        isValid <- checkValidPokemon chosenIndex allPokemonos
        if isValid
          then do
            return chosenIndex
            else do 
              liftIO $ putStrLn "Invalid input!"
              recursiveCheckValid side
           
   

    on UI.click startBtn $ \_ -> do
      element startBtn # set text "......Playing Game......"
      chosenIndex <- recursiveCheckValid " player"
      chosenIndexAI <- recursiveCheckValid " AI"
      chosenAIDiff <- recursiveAICheckValid
      url1 <- UI.loadFile "image/jpg" ("static/" ++ chosenIndex++ ".jpg")
      url2 <- UI.loadFile "image/jpg" ("static/" ++ chosenIndexAI++ ".jpg")
      background_url <- UI.loadFile "image/png" "static/background_battle.png"
      -- load pokemon images asynchroneously
      img1 <- UI.img # set UI.src url1
      img2 <- UI.img # set UI.src url2
      background_img <- UI.img # set UI.src background_url
      liftIO (threadDelay 2000000)

      canvas # UI.drawImage background_img (0, 0)
      canvas # UI.drawImage img1 (130, 720 -310)
      canvas # UI.drawImage img2 (1080 -280, 35)
      
        -- starts game1
      liftIO (playGame chosenIndex chosenIndexAI chosenAIDiff)
      element startBtn # set text "Start New Game"
      canvas # UI.drawImage background_img (0, 0)




{-----------------------------------------------------------------------------
    Database Model
------------------------------------------------------------------------------}
type DatabaseKey = Int
data Database a  = Database { nextKey :: !Int, db :: Map.Map DatabaseKey a }
emptydbpokemon = emptydb 
pokemondb = Database 1000 (populatePokemonDB 1 allPokemonos)
emptydb = Database 0 (Map.fromList [])
keys    = Map.keys . db

populatePokemonDB _ [] = Map.fromList []
populatePokemonDB curKey (h:t)= 
    (Map.insert curKey (showPokemonInfo h, pokemonName h) nextDB)
    where nextDB = populatePokemonDB (curKey+1) t

showPokemonInfo p = " index " ++ show (pokemonIndex p) ++ " ; type1 " ++ show (pokemonType1 p) ++ " ; type2 " ++ show (pokemonType2 p) ++ " ; atk "
    ++ show (attack p) ++ " ; def " ++ show (defence p) ++ " ; HP " ++ show (pokemonHP p)
    
{-----------------------------------------------------------------------------
    Data items that are stored in the data base
------------------------------------------------------------------------------}
type DataItem = (String, String)
showDataItem (info, name) = name ++ ", " ++ info

-- | Data item widget, consisting of two text entries
dataItem
    :: Behavior (Maybe DataItem)
    -> UI ((Element, Element), Tidings DataItem)
dataItem bItem = do
    entry1 <- UI.entry $ fst . maybe ("","") id <$> bItem
    entry2 <- UI.entry $ snd . maybe ("","") id <$> bItem
    
    return ( (getElement entry1, getElement entry2)
           , (,) <$> UI.userText entry1 <*> UI.userText entry2
           )

dataItemPokemon ::
  Behavior (Maybe DataItem) ->
  UI ((Element, Element), Tidings DataItem)
dataItemPokemon bItem = do
  entry1 <- UI.entry $ fst . maybe ("", "") id <$> bItem
  entry2 <- UI.entry $ snd . maybe ("", "") id <$> bItem

  return
    ( (getElement entry1, getElement entry2),
      (,) <$> UI.userText entry1 <*> UI.userText entry2
    )

-- allPokemons = [bulbasaur, ivysaur]
allPokemonos = [bulbasaur, ivysaur, venusaur, charmander, charmeleon, charizard, squirtle, wartortle, blastoise, caterpie, metapod, butterfree, weedle, kakuna, beedrill, pidgey, pidgeotto, pidgeot, rattata, raticate, spearow, fearow, ekans, arbok, pikachu, raichu, sandshrew, sandslash, nidoran, nidorina, nidoqueen, nidorino, nidoking, clefairy, clefable, vulpix, ninetales, jigglypuff, wigglytuff, zubat, golbat, oddish, gloom, vileplume, paras, parasect, venonat, venomoth, diglett, dugtrio, meowth, persian, psyduck, golduck, mankey, primeape, growlithe, arcanine, poliwag, poliwhirl, poliwrath, abra, kadabra, alakazam, machop, machoke, machamp, bellsprout, weepinbell, victreebel, tentacool, tentacruel, geodude, graveler, golem, ponyta, rapidash, slowpoke, slowbro, magnemite, magneton, farfetch, doduo, dodrio, seel, dewgong, grimer, muk, shellder, cloyster, gastly, haunter, gengar, onix, drowzee, hypno, krabby, kingler, voltorb, electrode, exeggcute, exeggutor, cubone, marowak, hitmonlee, hitmonchan, lickitung, koffing, weezing, rhyhorn, rhydon, chansey, tangela, kangaskhan, horsea, seadra, goldeen, seaking, staryu, starmie, mr, scyther, jynx, electabuzz, magmar, pinsir, tauros, magikarp, gyarados, lapras, ditto, eevee, vaporeon, jolteon, flareon, porygon, omanyte, omastar, kabuto, kabutops, aerodactyl, snorlax, articuno, zapdos, moltres, dratini, dragonair, dragonite, mewtwo, mew, chikorita, bayleef, meganium, cyndaquil, quilava, typhlosion, totodile, croconaw, feraligatr, sentret, furret, hoothoot, noctowl, ledyba, ledian, spinarak, crobat, chinchou, lanturn, pichu, cleffa, igglybuff, togepi, togetic, natu, xatu, mareep, flaaffy, ampharos, bellossom, marill, azumarill, sudowoodo, politoed, hoppip, skiploom, jumpluff, aipom, sunkern, sunflora, yanma, wooper, quagsire, espeon, umbreon, murkrow, slowking, misdreavus, unown, wobbuffet, girafarig, pineco, forretress, dunsparce, gligar, steelix, snubbull, granbull, qwilfish, scizor, shuckle, heracross, sneasel, teddiursa, ursaring, slugma, magcargo, swinub, piloswine, corsola, remoraid, octillery, delibird, mantine, skarmory, houndour, houndoom, kingdra, phanpy, donphan, porygon2, stantler, smeargle, tyrogue, hitmontop, smoochum, elekid, magby, miltank, raikou, entei, suicune, larvitar, pupitar, tyranitar, lugia, ho, celebi, treecko, grovyle, sceptile, torchic, combusken, blaziken, mudkip, marshtomp, swampert, poochyena, mightyena, zigzagoon, linoone, wurmple, silcoon, beautifly, cascoon, dustox, lotad, lombre, ludicolo, seedot, nuzleaf, shiftry, taillow, swellow, wingull, ralts, kirlia, gardevoir, surskit, masquerain, shroomish, breloom, slakoth, vigoroth, slaking, nincada, ninjask, shedinja, whismur, loudred, exploud, makuhita, hariyama, azurill, nosepass, skitty, delcatty, sableye, mawile, aron, lairon, aggron, meditite, medicham, electrike, manectric, plusle, minun, volbeat, illumise, roselia, gulpin, swalot, carvanha, sharpedo, wailmer, wailord, numel, camerupt, torkoal, spoink, grumpig, spinda, trapinch, vibrava, flygon, cacnea, cacturne, swablu, altaria, zangoose, seviper, lunatone, solrock, barboach, whiscash, corphish, crawdaunt, baltoy, claydol, lileep, cradily, anorith, armaldo, feebas, milotic, castform, kecleon, shuppet, banette, duskull, dusclops, tropius, chimecho, absol, wynaut, snorunt, glalie, spheal, sealeo, walrein, clamperl, huntail, gorebyss, relicanth, luvdisc, bagon, shelgon, salamence, beldum, metang, metagross, regirock, regice, registeel, latias, latios, kyogre, groudon, rayquaza, jirachi, deoxys, turtwig, grotle, torterra, chimchar, monferno, infernape, piplup, prinplup, empoleon, starly, staravia, staraptor, bidoof, bibarel, kricketot, kricketune, shinx, luxio, luxray, budew, roserade, cranidos, rampardos, shieldon, bastiodon, burmy, wormadam, mothim, combee, vespiquen, pachirisu, buizel, floatzel, cherubi, cherrim, gastrodon, ambipom, drifloon, drifblim, buneary, lopunny, mismagius, honchkrow, glameow, purugly, chingling, stunky, skuntank, bronzor, bronzong, bonsly, mime, happiny, chatot, spiritomb, gible, gabite, garchomp, munchlax, riolu, lucario, hippopotas, hippowdon, skorupi, drapion, croagunk, toxicroak, carnivine, finneon, lumineon, mantyke, snover, abomasnow, weavile, magnezone, lickilicky, rhyperior, tangrowth, electivire, magmortar, togekiss, yanmega, leafeon, glaceon, gliscor, mamoswine, gallade, probopass, dusknoir, froslass, rotom, uxie, mesprit, azelf, dialga, palkia, heatran, regigigas, giratina, cresselia, phione, manaphy, darkrai, shaymin, arceus, victini, snivy, servine, serperior, tepig, pignite, emboar, oshawott, dewott, samurott, patrat, watchog, lillipup, herdier, stoutland, purrloin, liepard, pansage, simisage, pansear, simisear, panpour, simipour, munna, musharna, pidove, tranquill, unfezant, blitzle, zebstrika, roggenrola, boldore, gigalith, woobat, swoobat, drilbur, excadrill, audino, timburr, gurdurr, conkeldurr, tympole, palpitoad, seismitoad, throh, sawk, sewaddle, swadloon, leavanny, venipede, whirlipede, scolipede, cottonee, whimsicott, petilil, lilligant, basculin, sandile, krokorok, krookodile, darumaka, darmanitan, maractus, dwebble, crustle, scraggy, scrafty, sigilyph, yamask, cofagrigus, tirtouga, carracosta, archen, archeops, trubbish, garbodor, zorua, zoroark, minccino, cinccino, gothita, gothorita, gothitelle, solosis, duosion, reuniclus, ducklett, swanna, vanillite, vanillish, vanilluxe, deerling, sawsbuck, emolga, karrablast, escavalier, foongus, amoonguss, frillish, jellicent, alomomola, joltik, galvantula, ferroseed, ferrothorn, klink, klang, klinklang, tynamo, eelektrik, eelektross, elgyem, beheeyem, litwick, lampent, chandelure, axew, fraxure, haxorus, cubchoo, beartic, cryogonal, shelmet, accelgor, stunfisk, mienfoo, mienshao, druddigon, golett, golurk, pawniard, bisharp, bouffalant, rufflet, braviary, vullaby, mandibuzz, heatmor, durant, deino, zweilous, hydreigon, larvesta, volcarona, cobalion, terrakion, virizion, tornadus, thundurus, reshiram, zekrom, landorus, kyurem, keldeo, meloetta, genesect, chespin, quilladin, chesnaught, fennekin, braixen, delphox, froakie, frogadier, greninja, bunnelby, diggersby, fletchling, fletchinder, talonflame, scatterbug, spewpa, vivillon, litleo, pyroar, flab, floette, florges, skiddo, gogoat, pancham, pangoro, furfrou, espurr, meowstic, honedge, doublade, aegislash, spritzee, aromatisse, swirlix, slurpuff, inkay, malamar, binacle, barbaracle, skrelp, dragalge, clauncher, clawitzer, helioptile, heliolisk, tyrunt, tyrantrum, amaura, aurorus, sylveon, hawlucha]
allPokemonoNames = foldr (\x y -> pokemonName x : y) [] allPokemonos
-- create x (Database newkey db) = Database (newkey + 1) $ Map.insert newkey (show (pokemonIndex bulbasaur), (pokemonName bulbasaur)) db


getStaticDir :: IO FilePath
getStaticDir = return "static"

-- | Base URL for the example source code.
samplesURL :: String
samplesURL = "https://github.com/HeinrichApfelmus/threepenny-gui/blob/master/samples/"

{-----------------------------------------------------------------------------
    Main
------------------------------------------------------------------------------}
startGameMain :: IO ()
startGameMain = do
    
  static <- getStaticDir
  startGUI defaultConfig setup

canvasSize = 1000

canvasSizeWidth = 1080

canvasSizeHeight = 720
