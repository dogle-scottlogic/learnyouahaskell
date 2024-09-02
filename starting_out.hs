-- In Haskell, the main function is the entry point of a program. It's an IO action that the runtime system executes when the program starts.
-- The >> operator is used to sequence two IO actions. It runs the first action, discards its result, and then runs the second action.
-- The succ function takes anything that has a defined successor and returns that successor
main =
    print (succ 8) >>
    print (max 9 10) >>
    print(succ 9 * 10) >> -- equals (succ 9) * 10
    print(succ(9 * 10)) >>
    -- If a function takes two parameters, we can also call it as an infix function by surrounding it with backticks.
    print(div 92 10) >>
    print(92 `div` 10)