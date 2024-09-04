-- Recursion is important to Haskell because unlike imperative languages, you do computations in Haskell by declaring what something is instead of declaring how you get it. 
-- That's why there are no while loops or for loops in Haskell and instead we many times have to use recursion to declare what something is

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0    = []
    | otherwise = x:replicate' (n-1) x

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n < 0 = error "Cannot take fewer than 0 elements"
    | n == 0 = []
take' _ [] = []
take' n (x:xs) = x : take' (n-1) xs

elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
    | a == x = True
    | otherwise = elem' a xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in smallerSorted ++ [x] ++ biggerSorted

main = do 
    print (maximum' [1,2,3])
    print (replicate' 5 'a')
    print (take' 3 [4,3,2,1])
    print (elem' 'a' ['b', 'c', 'a'])
    print (quicksort [10,2,5,3,1,6,7,4,2,3,4,8,9])