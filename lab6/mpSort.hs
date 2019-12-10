
data Tree a = Null | Node a (Tree a) (Tree a)
     deriving (Read,Show)


addNode :: Ord a => a -> Tree a -> Tree a
addNode t Null = Node t Null Null
addNode t (Node n x1 x2)
   | t<n       = Node n (addNode t x1) x2
   | otherwise = Node n x1 (addNode t x2)


makeTree :: Ord a => [a] -> Tree a
makeTree [] = Null
makeTree (h:t) = addNode h (makeTree t)


inOrder :: Tree a -> [a]
inOrder Null = []
inOrder (Node n x1 x2) = (inOrder x1) ++ [n] ++ (inOrder x2)

mpSort :: Ord a => [a] -> [a]
mpSort = inOrder.makeTree