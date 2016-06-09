module HTen where
  
import HNine
import Control.Applicative


encode'::Eq a => [a] -> [(a,Int)]

--encode' x =  foldr (\v acc -> (head v, length v):acc) [] (pack' x)

--encode' xs = [(head x, length x) | x <- pack' xs]

encode' = map ((,) <$> head <*> length) . pack'
