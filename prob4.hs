-- Write a function that, given a list of non-negative integers, arranges them such that they form the largest possible number

import Data.List

arrange l = reverse (sortBy comparator l)
    where comparator a b = compare (show a ++ show b) (show b ++ show a)
