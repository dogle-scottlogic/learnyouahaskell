-- The form is let <bindings> in <expression>. The names that you define in the let part are accessible to the expression after the in part
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea

main = do
    print (cylinder 2 4)
    print ([let square x = x * x in (square 5, square 3, square 2)]) -- let bindings are expressions themselves. where bindings are just syntactic constructs
    print (let a = 100; b = 200; c = 300 in a*b*c, let foo="Hey "; bar = "there!" in foo ++ bar) -- If we want to bind to several variables inline, we obviously can't align them at columns. That's why we can separate them with semicolons.