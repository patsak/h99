length' :: [a] -> Int

length' = foldl (const . (+1))  0 
