import Data.Maybe

element :: [a] -> Integer -> a

fib':: [Integer]

fib' = fibin 1 1 where
  fibin x y = x:fibin y (x + y)

element list index = fst . head $ filter (\(v, i) -> index == i)  (zip list [1..index])

