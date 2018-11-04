palindrome : String -> Nat -> Bool
palindrome str len
    = let revstr = reverse str in
          (toLower str == toLower revstr) && (length str > len)

counts : String -> (Nat, Nat)
counts str
    = let len = length str
          wcount = length (words str) in
          (len, wcount)

top_ten : Ord a => List a -> List a
top_ten l
    = take 10 (reverse (sort l))

over_length : Nat -> List String -> Nat
over_length l lst
    = length (filter (> l) (map length lst))