-- Write a function that combines two lists by alternatingly taking elements

tail' :: [Int] -> [Int]
tail' [] = []
tail' (_:xs) = xs

alt :: [Int] -> [Int] -> [Int]
alt a b
    | length a > 0 && length b > 0 = [head a, head b] ++ alt (tail' a) (tail' b)
    | length a > 0 = [head a] ++ alt (tail' a) (tail' b)
    | length b > 0 = [head b] ++ alt (tail' a) (tail' b)
    | otherwise    = []
