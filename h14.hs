
dupli' :: Eq a =>  [a] -> [a]

dupli' = concatMap (\x -> replicate 2 x) 
