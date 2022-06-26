module Main where

tamanho :: Num p => [a] -> p
tamanho [] = 0
tamanho (_ : xs) = 1 + tamanho xs

-- Exercício 1, 2 e 3
raizes2grau :: (Ord a, Floating a) => a -> a -> a -> (a, a)
raizes2grau a b c =
  if delta >= 0
    then (x1, x2)
    else (0, 0)
  where
    x1 = ((- b) + sqDelta) / (2 * a)
    x2 = ((- b) - sqDelta) / (2 * a)
    delta = b ^ 2 - 4 * a * c
    sqDelta = sqrt delta

-- Exercício 4
raizes2grau2 :: (Ord a, Floating a) => a -> a -> a -> (a, a)
raizes2grau2 a b c
  | delta >= 0 = (x1, x2)
  | otherwise = error "Delta negativo."
  where
    x1 = ((- b) + sqDelta) / (2 * a)
    x2 = ((- b) - sqDelta) / (2 * a)
    delta = b ^ 2 - 4 * a * c
    sqDelta = sqrt delta

main :: IO ()
main = do
  let x = 2
  putStrLn "hello world"
