import PGF
import System.Random
import System.IO
import Twitter
import Network.HTTP.Client
import Data.ByteString.Lazy.Char8 hiding (putStrLn, length, head)
    
selectRandom :: RandomGen g => [a] -> g -> (a, g)
selectRandom list rnd =
  let
    (rndNum,newRnd) = randomR (0,(length list - 1)) rnd
    elem = list!!rndNum
  in
    (elem, newRnd)

generate :: RandomGen g => PGF -> g -> (String,g)
generate pgf rnd =
  let
    gen = generateRandomDepth rnd pgf (startCat pgf) (Just 4)
    (lang,newRnd) = (selectRandom (languages pgf) rnd)
    s = linearize pgf lang (head gen)
    bind [] = []
    bind (' ':'&':'+':' ':rest) = bind rest
    bind (c:rest) = c:(bind rest)
  in
    (bind s,newRnd)

main =
  do
    pgf <- readPGF "gf/Tautology.pgf"
    conf <- configFromFile "config.json"
    rnd <- getStdGen
    let (s,newRnd) = generate pgf rnd

    putStrLn s
    either putStrLn (\c -> tweet c s >>= putStrLn . unpack . responseBody >> return () ) conf
