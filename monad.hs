import Control.Monad
import Control.Applicative

mMap :: (Monad m) => m ( a -> a ) -> [a] -> m [a] 
mMap m t = do
  f <- m
  return (map f t)

  


