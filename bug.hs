```haskell
import Data.List (sort)

mySort :: Ord a => [a] -> [a]
mySort = sort

main :: IO ()
main = do
  let xs = [1,5,2,8,3]
  let ys = mySort xs
  print ys
```