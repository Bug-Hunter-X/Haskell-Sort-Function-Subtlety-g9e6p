```haskell
import Data.List (sort)

-- More explicit sorting implementation
data MyData = MyData Int String deriving (Show,Ord)
instance Eq MyData where
    (MyData a _) == (MyData b _) = a == b

mySortExplicit :: Ord a => [a] -> [a]
mySortExplicit xs = foldr insert [] xs
  where
    insert x [] = [x]
    insert x (y:ys) | x <= y    = x : y : ys
                    | otherwise = y : insert x ys

main :: IO ()
main = do
  let xs = [1,5,2,8,3]
  let ys = mySort xs
  print ys -- Output: [1,2,3,5,8]

  let myDataList = [MyData 1 "a", MyData 3 "b", MyData 2 "c"]
  let sortedMyDataList = mySortExplicit myDataList
  print sortedMyDataList -- Output: [MyData 1 "a",MyData 2 "c",MyData 3 "b"]
```