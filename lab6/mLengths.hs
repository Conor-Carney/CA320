leap :: Int -> Bool

leap year
		|(year `mod` 4 == 0 && year `mod` 100 /= 0) = True
		|(year `mod` 100 == 0 && year `mod` 400 == 0) = True
		|otherwise = False

mLengths :: Int -> [Int]
mLengths y = [31,feb,31,30,31,30,31,31,30,31,30,31]
             where
             feb = if leap y then 29 else 28 