-- Every function in Haskell officially only takes one parameter.
-- Putting a space between two things is simply function application.

maxSix :: (Num n, Ord n) => n -> n
maxSix = max 6

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

-- a function that takes a function and then applies it twice to something!
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x) -- apply f to x then apply that result to f. Or said another way apply (f x) to f

main = 
    print (max 4 5) >>
    print ((max 4) 5) >>
    print (let maxFour = (max 4) in maxFour(5)) >>
    print (maxSix 3) >>
    print (divideByTen 20) >>
    print (applyTwice (+3) 10) >> -- apply +3 to 10, twice
    print (applyTwice ("HAHA " ++) "HEY")