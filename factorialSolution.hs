The corrected Haskell code adds a check for negative input and returns an error value or handles it appropriately:

```haskell
factorial :: Integer -> Integer
factorial n | n < 0     = error "Factorial is not defined for negative numbers."
            | n == 0    = 1
            | otherwise = n * factorial (n - 1)
```

This version explicitly handles the case of negative input by throwing an error, preventing the infinite recursion and subsequent stack overflow.  Alternative solutions might involve returning a specific value (like 0 or -1) to indicate an invalid input, depending on the desired behavior.