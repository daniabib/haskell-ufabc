module Main where

tamanho :: Num p => [a] -> p
tamanho [] = 0
tamanho (_ : xs) = 1 + tamanho xs

-- Exercício 1
raizes2grau :: Floating a => a -> a -> a -> (a, a)
raizes2grau a b c =
  (x1, x2)
  where
    x1 = (- b) + sqDelta / (2 * a)
    x2 = (- b) + sqDelta / (2 * a)
    sqDelta = sqrt (b ^ 2 - 4 * a * c)

main :: IO ()
main = do
  let x = 2
  putStrLn "hello world"
