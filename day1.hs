main = do
  t <- readFile "day1.txt"
  let fuel = sum $ (map ((+ (-2)) . (`div` 3) . read) (lines t) :: [Integer])
  let fuel' = sum $ (map ((f 0) . read) (lines t) :: [Integer])
  putStrLn $ show fuel'

f res x =
  if x < 6 then res else f (res + ((x `div` 3) - 2)) ((x `div` 3) - 2)
