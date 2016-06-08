palindrom' :: Eq a =>[a] -> Bool

palindrom' (x:y:[]) 
  | x == y = True
  | otherwise = False  
  
palindrom' (x:[]) = True
palindrom' x
  | head x == last x = palindrom' (tail (init x))
  | otherwise = False  
