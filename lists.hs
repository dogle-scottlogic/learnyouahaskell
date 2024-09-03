main = do
    let lostNumbers = [4,8,15,16,23,42]
    let otherNumbers = [4,8,15,16,23,42]
    let myTuple = ("3", 2)
    print lostNumbers
    print (lostNumbers ++ otherNumbers) -- concat - need to walk the left hand side to do this
    print ("hello" ++ " world")
    print ('A':" SMALL CAT") -- put at the beginning of the list - instant
    print (lostNumbers !! 2) -- 2nd element
    print myTuple