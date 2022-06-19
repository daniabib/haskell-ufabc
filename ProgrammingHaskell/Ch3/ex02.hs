bools :: [Bool]
bools = [False, True, False]

nums :: [[Int]]
nums = [[1,3,4], [-5, 55, 12], [22, 3, 4], [2]]

add :: Int -> Int -> Int -> Int
add a b c = a + b + c

copy :: a -> (a,a)
copy a = (a, a)

apply :: (a -> b) -> a -> b
apply f x = f x
