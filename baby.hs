doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100
                        then x
                        else x*2

main = do
    let a = doubleMe 2
    let b = doubleUs 3 8
    let c = doubleSmallNumber 3
    print a
    print b
    print c
