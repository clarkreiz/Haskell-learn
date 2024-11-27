-- первая версия (неправильная, это скорее insertL)
-- insertR :: (Eq t) => t -> t -> [t] -> [t]
-- insertR new old [] = []
-- insertR new old all@(x : xs)
--   | x == old = new : all
--   | otherwise = x : insertR new old xs

-- вторая версия
insertR new old [] = []
insertR new old (x : xs)
  | x == old = x : new : xs
  | otherwise = x : insertR new old xs

insertL new old [] = []
insertL new old (x : xs)
  | x == old = new : x : xs
  | otherwise = x : insertL new old xs

subst new old [] = []
subst new old (x : xs)
  | x == old = new : xs
  | otherwise = x : subst new old xs

multiInsertR new old [] = []
multiInsertR new old (x : xs)
  | x == old = x : new : multiInsertR new old xs
  | otherwise = x : multiInsertR new old xs

multiInsertL new old [] = []
multiInsertL new old (x : xs)
  | x == old = new : x : multiInsertL new old xs
  | otherwise = x : multiInsertL new old xs

multiSubst new old [] = []
multiSubst new old (x : xs)
  | x == old = new : multiSubst new old xs
  | otherwise = x : multiSubst new old xs

