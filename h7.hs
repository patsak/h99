data NestedList a = Elem a | List [NestedList a]


flat' :: NestedList a -> [a]

flat' (Elem x) = [x]
-- flat' (List x) = foldl (\acc el -> (++) (flat' el) acc) [] x

--flat' (List x) = foldl (flip $ flip (++) . flat') [] x

flat' (List x) = foldl (++) [] $ map flat' x
