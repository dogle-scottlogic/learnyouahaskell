-- Lambda is an anonymous function

main = 
    print (map (+3) [1,6,3,2]) >> -- (+3) calls the function + with the value 3 which returns a function which takes a value and adds three to it (n) => n + 3
    print (map (\x -> x + 3) [1,6,3,2]) -- these two things are equivalent - the first is preferred in this case