---lcp = longest common prefix 
---lcpList(["interview","interview","intervene","internship"],L) = "inter" 

lcpHelper ::  (Eq t) => [t] -> [t] -> [t] --type signature
lcpHelper [] _ = [] ---base case 1
lcpHelper _ [] = [] ---base case 2
lcpHelper (x:xs) (y:ys) --recursive case 
  | x == y    = x : lcpHelper xs ys
  | otherwise = []
  
lcp :: (Eq t) => [[t]] -> [t] --type signature 
lcp (x:xs) = foldl lcpHelper x xs --fold over the last passing result on 