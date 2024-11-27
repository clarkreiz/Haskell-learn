member _ [] = False
member a (x : xs)
  | x == a = True
  | otherwise = member a xs

-- Способ ниже более лакончный, но хочу запомнить
-- оба варианта

-- member :: Eq a => a -> [a] -> Bool
-- member _ [] = False
-- member a (x:xs) = (x == a) || member a xsmmm 