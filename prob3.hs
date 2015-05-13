-- Write a function that computers fibonnaci numbers

fib1 :: Int -> Int
fib1 n = fib (0, 1) !! n
    where fib (a, b) = a : fib (b, (+) a b)

fib2 :: Int -> Int
fib2 n = (fib 0 1) !! n
    where fib a b = a : fib b ((+) a b)

fib3 :: Int -> Int
fib3 n = fib !! n
    where fib = 0 : scanl (+) 1 fib
