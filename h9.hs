module HNine where

pack' :: Eq a => [a] -> [[a]]

-- pack' x = foldr group [[]] x where
--   group :: Eq a =>  a -> [[a]]  -> [[a]]
--   group v (h@(y:_):xs)  
--         | v == y = (v:h):xs
--         | otherwise = [v]:h:xs
--   group v ([[]]) = [[v]]


pack' (x:xs) = let (f, s) = span (==x) xs
                 in (x:f) : pack' s
pack' []  = []

