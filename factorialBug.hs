The following Haskell code attempts to calculate the factorial of a number using a recursive function. However, it contains a subtle bug that can lead to unexpected behavior or crashes:

```haskell
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)
```

The issue lies in the lack of explicit handling for negative input.  The recursive call `factorial (n - 1)` will continue indefinitely if `n` is negative, eventually resulting in a stack overflow.