sayMe :: (Integral a) => a -> String -- type declaration of the function "sayMe" - it takes a and returns a String (list of chars) - the constraint is that a must be of type Integral
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 and 5" -- This is basically a switch statement for functions - if you put this last statement at the top it would always return Not between 1 and 5.

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

capital :: String -> String
capital "" = "Empty string, whoops!"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x] -- as patterns. Those are a handy way of breaking something up according to a pattern and binding it to names whilst still keeping a reference to the whole thing. You do that by putting a name and an @ in front of a pattern
main = do
    print(sayMe 1)
    print (sayMe 5)
    print (sayMe 19)
    print (factorial 10)
    print (tell [1,2])
    print (tell ([] :: [Char])) -- this needs a type or it doesn't know what the empty list type is
    print (tell [1,2,3,4])
    print (length' [1,2,3,4])
    print (capital "Dracula")
