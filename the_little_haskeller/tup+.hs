tupPlus _ [] = []
tupPlus [] _ = []
tupPlus (x : xs) (y : ys) = x + y : tupPlus xs ys

tupPlusListGen xs ys = [x + y | (x, y) <- zip xs ys]
