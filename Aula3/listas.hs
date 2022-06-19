(!!) :: [a] -> Int -> a
xs !! n = head (drop n xs)
