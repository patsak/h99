tail' :: [a] -> a
tail' [] = undefined
tail' (x:[]) = x
tail' (x:xs) = tail' xs



