data Elem a = Single a  | Multiple Int a  deriving Show
encodeDirect' :: Eq a => [a] -> [Elem a]

encodeDirect' [] = []
encodeDirect' (x:xs)  = map simplify $ foldr countAndCreate [] xs where
  countAndCreate v [] = [Multiple 1 v]
  countAndCreate v (y@(Multiple n x):xs)    
    | v == x = (Multiple (n+1) x):xs
    | otherwise = (Multiple 1 v):y:xs
  simplify (Multiple 1 x) = Single x
  simplify x = x

