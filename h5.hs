reverse' :: [a] -> [a]

reverse' l = foldl (\res x -> x:res) [] l
