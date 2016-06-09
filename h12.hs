module HTwelve where

import HEleven

decode' :: [Elem a] -> [a]

-- decode' = concatMap decodeIn where
--   decodeIn (Single x) = [x]
--   decodeIn (Multiple n x) = replicate n x
decode' = foldl (++) [] . map decodeIn where
  decodeIn (Single x) = [x]
  decodeIn (Multiple n x) = replicate n x
