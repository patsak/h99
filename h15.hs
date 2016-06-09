
dupli' :: Eq a =>  [a] -> Int -> [a]

dupli' xs n = concatMap (\x -> replicate n x) xs 
