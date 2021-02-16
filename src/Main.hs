import Pokemons
main :: IO ()
main = do
  print("Pick a pokemon")
  ans<-getLine
  print(getMove ans)
  print("Pick your move")
  print(getBaseDamage (getMove ans))

