-- case expression of pattern -> result
--                    pattern -> result
--                    pattern -> result

head' :: [a] -> a
head' xs = case xs of [] -> error "No head for empty lists!"
                      (x:_) -> x

main = do
    print (head [1, 2, 3])