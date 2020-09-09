# foldr vs foldl

### foldr 
+ can operate on infinite list
+ right asossiative

```haskell
xs = map show [1..5]
y = foldr (\x y -> concat ["(",x,"+",y,")"]) "0" xs
```
-> "(1+(2+(3+(4+(5+0)))))"

foldr f z (x:xs) = f x (foldr f z xs)

+ maybe undefined is in list or even spine (it we never reach that)
+ just first element of *spine* should not be undefined

```haskell
foldr f z [1, 2, 3]
1 `f` (foldr f z [2, 3])
1 `f` (2 `f` (foldr f z [3]))
1 `f` (2 `f` (3 `f` (foldr f z [])))
1 `f` (2 `f` (3 `f` z))
```

### foldl 
+ evaluate from first item to last
```haskell 
xs = map show [1..5]
foldl (\x y -> concat ["(",x,"+",y,")"]) "0" xs
```
-> "(((((0+1)+2)+3)+4)+5)"


