-- Write a program that ouputs all possibilities to put + or - or nothing between the numbers 1, 2, ..., 9 (in this order) such that the result is always 100

-- hundred_eval :: [Int] -> Bool


tail' :: [Int] -> [Int]
tail' [] = []
tail' (_:xs) = xs

hundred :: [Int] -> [[Int]]
hundred [] = [[]]
hundred (x:xs) = [a ++ b ++ c | a <- pos, b <- neg, c <- next]
    where
        pos = [[x] ++ f | f <- hundred(xs)]
        neg = [[-x] ++ f | f <- hundred(xs)]
        next = [[if (length xs) > 0 then (read (show x ++ show (head xs)) :: Int) else x] ++ f | f <- hundred(tail' xs)]

