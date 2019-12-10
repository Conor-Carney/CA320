leap :: Int -> Bool
leap y
   | y `mod` 100 == 0 = y `mod` 400 == 0
   | y `mod` 4 == 0   = True
   | otherwise        = False