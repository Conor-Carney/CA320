data Tree a = Null | Node a (Tree a) (Tree a)
     deriving (Read,Show)

inOrder :: Tree a -> [a]
inOrder Null = []
inOrder (Node n x1 x2) = (inOrder x1) ++ [n] ++ (inOrder x2)