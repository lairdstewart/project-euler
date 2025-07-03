{-
If we list all the natural numbers below 10 that are multiples of 3 or 5, we
get 3, 5, 6, and 9. The sum of these multiples is 23. Find the sum of all the
multiples of 3 or 5 below 1000.
-}

p1a :: Integer
p1a = sum $ filter (\x -> mod x 3 == 0 || mod x 5 == 0) [1 .. 999]

p1b :: Integer
p1b = sum $ [x | x <- [1 .. 999], mod x 3 == 0 || mod x 5 == 0]

p1c :: Integer
p1c = fizzBuzz 999

fizzBuzz :: Integer -> Integer
fizzBuzz n = ifizzBuzz 1 n 0

ifizzBuzz :: Integer -> Integer -> Integer -> Integer
ifizzBuzz i n sum
  | n < i = sum
  | mod i 3 == 0 || mod i 5 == 0 = ifizzBuzz (i + 1) n (sum + i)
  | otherwise = ifizzBuzz (i + 1) n sum