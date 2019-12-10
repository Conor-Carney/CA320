data Tree a = Null | Node a (Tree a) (Tree a)
      deriving (Read,Show)
 
addNode :: Ord a => a -> Tree a -> Tree a
addNode t Null = Node t Null Null
addNode t (Node n x1 x2)
   | t<n       = Node n (addNode t x1) x2
   | otherwise = Node n x1 (addNode t x2)