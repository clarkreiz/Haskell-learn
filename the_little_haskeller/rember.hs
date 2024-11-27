import Data.Binary.Get (Decoder (Fail))

rember _ [] = []
rember a (x : xs)
  | x == a = xs
  | otherwise = x : rember a xs

-- Версия вторая немного более лаконична чем первая
rember2 _ [] = []
rember2 a (x : xs) = if x == a then xs else x : rember2 a xs

-- list generator будет работать со всеми вхождениями элемента
remberAll a xs = [x | x <- xs, x /= a]

remberNested _ [] = []
remberNested a (x : xs)
  | isAtom x = if x == [a] then remberNested a xs else x : remberNested a xs
  | otherwise = remberNested a x : remberNested a xs