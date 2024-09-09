addThree :: Int -> Int -> Int -> Int -- Type declaration
addThree x y z = x + y + z

-- custom type
data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)

-- record type
data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     , height :: Float
                     , phoneNumber :: String
                     , flavour :: String
                     } deriving (Show) 

main = do
    let guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"
    print (addThree 1 2 3)
    print (firstName guy)
    print (Circle 10 20 5)