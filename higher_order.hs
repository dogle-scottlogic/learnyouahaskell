zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c] -- type declaration
zipWith' _ [] _ = [] -- if second arg is empty list return empty list
zipWith' _ _ [] = [] -- if third arg is empty list return empty list
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys -- apply x y to f and call zipWith' recursively with the rest of both lists

-- Here, we take advantage of the fact that functions are curried. When we call flip' f without the parameters y and x, 
-- it will return an f that takes those two parameters but calls them flipped. Even though flipped functions are usually passed to other functions, 
-- we can take advantage of currying when making higher-order functions by thinking ahead and writing what their end result would be if they were called fully applied.
flip' :: (a -> b -> c) -> b -> a -> c
flip' f y x = f x y

main = do
    print (zipWith' (+) [4,2,5,6] [2,6,2,3])
