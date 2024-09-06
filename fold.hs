-- fold is reduce in Haskell - here we use foldl to indicate a left fold (consume the list left to right)
sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0 -- sum' calls foldl with the function +, an acc of 0 and the list xs

maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\x acc -> if x > acc then x else acc)

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

product' :: (Num a) => [a] -> a
product' = foldr1 (*)

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x acc -> if p x then x : acc else acc) []

head' :: [a] -> a
head' = foldr1 (\x _ -> x)

last' :: [a] -> a
last' = foldl1 (\_ x -> x)

main = do
    print (sum [1,2,3,4])