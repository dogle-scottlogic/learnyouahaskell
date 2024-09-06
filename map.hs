filter' :: (a -> Bool) -> [a] -> [a] -- a function takes a returns a function which takes list of a and returns a list of a
filter' _ [] = [] -- if the list is empty return the empty list
filter' p (x:xs) 
    | p x       = x : filter' p xs -- guard: if p(x) is truthy - return x + the result of filter'(p, xs)
    | otherwise = filter' p xs -- otherwise: return result of filter'(p xs) only


-- quicksort using filter
quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (x:xs) =   
    let smallerSorted = quicksort (filter (<=x) xs)
        biggerSorted = quicksort (filter (>x) xs) 
    in  smallerSorted ++ [x] ++ biggerSorted

-- javascript version for reference
-- function quicksort(l){
--     if (! l.length) return [];
--     const [head, ...rest] = l;
--     let smallerSorted = quicksort(rest.filter(x => x <= head))
--     let biggerSorted = quicksort(rest.filter(x => x > head))
--     return [...smallerSorted, head, ...biggerSorted];
-- }

largestDivisible :: (Integral a) => a -- type declaration
largestDivisible = head (filter p [100000,99999..]) -- create a list of all numbers including and under 100000
    where p x = x `mod` 3829 == 0 -- because we use lazy eval and only use the head of the returned list this stops as soon as an answer is found 

main = 
    print (map (+3) [1,5,3,1,6]) >>
    print([x+3 | x <- [1,5,3,1,6]]) >> -- these are equivalent
    print largestDivisible