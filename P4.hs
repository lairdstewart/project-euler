{-
A palindromic number reads the same both ways. The largest palindrome made
from the product of two 2-digit numbers is 9009=91*99.
Find the largest palindrome made from the product of two 3-digit numbers.
-}

main :: IO ()
main = print $ maximum (filter (palindrome . intToString) [x * y | x <- [0 .. 999], y <- [0 .. 999]])

palindrome :: [Char] -> Bool
palindrome str
  | null str = True
  | length str == 1 = True
  | otherwise = head str == last str && palindrome (init (tail str))

intToString :: Int -> [Char]
intToString n
  | n == 0 = ['0']
  | n == 1 = ['1']
  | n == 2 = ['2']
  | n == 3 = ['3']
  | n == 4 = ['4']
  | n == 5 = ['5']
  | n == 6 = ['6']
  | n == 7 = ['7']
  | n == 8 = ['8']
  | n == 9 = ['9']
  | otherwise = intToString (div n 10) ++ intToString (mod n 10)
