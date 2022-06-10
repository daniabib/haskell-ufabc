third :: [a] -> a
third [] = error "List is empty."
third [x] = error "List has only one element."
third [_, _] = error "List has only two elements."
third (_ : _ : x : _) = x