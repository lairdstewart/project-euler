{-
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13
What is the 10,001st  prime number?
-}

p7 :: Int
p7 = head $ firstNPrimes 10001

firstNPrimes :: Int -> [Int]
firstNPrimes n = go 3 n [2]
  where
    go :: Int -> Int -> [Int] -> [Int]
    go i n primes
      | n <= length primes = primes
      | not $ divides i primes = go (i + 1) n (i : primes)
      | otherwise = go (i + 1) n primes

divides :: Int -> [Int] -> Bool
divides n = any (\x -> mod n x == 0)