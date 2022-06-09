raiz2Grau :: Floating a => a -> a -> a -> (a, a)
raiz2Grau a b c = (x1, x2)
  where
    x1 = e + sqrt d / (2 * a)
    x2 = e - sqrt d / (2 * a)
    d = b * b - 4 * a * c
    e = - b / (2 * a)

abs :: (Ord a, Num a) => a -> a
abs n = if n >= 0 then n else (- n)

signum :: (Ord a, Num a) => a -> a
signum n
  | n == 0 = 0
  | n > 0 = 1
  | otherwise = -1

-- Quando temos comparações de igualdade nos guardas, podemos definir as expressões substituindo diretamente os argumentos.
not :: Bool -> Bool
not True = False
not False = True

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

head' :: [a] -> a
head' [] = error "Can't call head on an empty list."
head' (x : _) = x

-- patterns @
capital :: String -> String
capital "" = "Empty string!"
capital all@(x : xs) = "The first letter of " ++ all ++ " is " ++ [x]

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where
    bmi weight height = weight / height ^ 2

-- let bindings

cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
   in sideArea + 2 * topArea

calcBmis' :: (RealFloat a) => [(a, a)] -> [a]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

-- lambda expressin example
odds :: Int -> [Int]
odds n = map (\x -> x*2 + 1) [0..n-1]

