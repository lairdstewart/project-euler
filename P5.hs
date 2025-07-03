{-
2520 is the smallest number that can be divided by each of the numbers from 1
to 10 without any remainer. What is the smallest positive number that is
evenly divisible by all of the numbers from 1 to 20?
-}

import Data.List (foldl1)

lcm1 :: Integer
lcm1 = head $ [n | n <- [1 ..], all (\i -> mod n i == 0) [11 .. 20]]

lcm2 :: Integer
lcm2 = accumulate lcm [1 .. 20]

accumulate :: (Integer -> Integer -> Integer) -> [Integer] -> Integer
accumulate f list
  | length list == 1 = 0
  | length list == 2 = f (head list) (last list)
  | otherwise = accumulate f (f (head list) (list !! 1) : tail (tail list))

primeFactors :: Integer -> [Integer]
primeFactors = 