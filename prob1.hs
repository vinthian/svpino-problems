-- Write a function to compute the sum of numbers in a given list

-- recursive fold left (pointfree)
sum1 :: [Int] -> Int
sum1 = foldl (+) 0

-- recursive fold right (stack overflow prone)
sum2 :: [Int] -> Int
sum2 = foldr (+) 0
