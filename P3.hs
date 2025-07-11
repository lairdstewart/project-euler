{-
The prime factors of 13195 are 5, 7, 13, and 29.
What is the largest prime factor of the number 600851475143?
-}

p3a :: Integer
p3a = largestPrimeFactor 600851475143

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor = iLargestPrimeFactor 2

iLargestPrimeFactor :: Integer -> Integer -> Integer
iLargestPrimeFactor i n
  | n == 1 = i
  | mod n i == 0 = iLargestPrimeFactor i (div n i)
  | otherwise = iLargestPrimeFactor (i + 1) n