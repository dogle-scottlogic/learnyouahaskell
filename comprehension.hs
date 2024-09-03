-- https://learnyouahaskell.com/starting-out#im-a-list-comprehension
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x] -- a comprehension that replaces each odd number greater than 10 with "BANG!" and each odd number that's less than 10 with "BOOM!

main = do
    let ch1 = [x*2 | x <- [1..10], x*2 >= 12] -- every x * 2 where x is a set 1 to 10 and x*2  is >= 12
    print ch1
    print (boomBangs [7..13])