module HEleven where

import HTen


data Elem a = Single a | Multiple Int a
              deriving Show

encodemod' :: Eq a => [a] -> [Elem a]

encodemod' x  = map toElem $ HTen.encode' x where
  toElem (a, 1) = Single a
  toElem (a, n) = Multiple n a
