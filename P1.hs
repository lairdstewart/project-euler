main :: IO ()
main = print (sum ([x | x <- [1 .. 999], mod x 3 == 0 || mod x 5 == 0]))

-- main = print $ sum $ [x | x <- [1 .. 999], mod x 3 == 0 || mod x 5 == 0]
-- main = print $ sum $ filter (\x -> mod x 3 == 0 || mod x 5 == 0) [1 .. 999]
-- main = print $ (sum . filter (\x -> mod x 3 == 0 || mod x 5 == 0)) [1 .. 999]
