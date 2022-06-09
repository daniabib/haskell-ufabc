import Unsafe.Coerce

-- Operador de ponto fixo
y :: (a -> a) -> a
y f = f (y f)

-- Segunda maneira: Forçar o sistema a aceitar tipos infinitos
-- y2 :: (a -> a) -> a
-- y2 = \f -> (\x -> f (UnsafeCoerce x x) (\x -> f (unsafeCoerce  x x)))

fat = \f x -> if x == 0 then 1 else x * f (x - 1)