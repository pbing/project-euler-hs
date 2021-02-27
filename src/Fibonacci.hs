-- * Fibonacci numbers
-- http://www.vex.net/~trebla/haskell/calculator/colour/Calculator.html#fib

module Fibonacci where
  
-- | The infinite list of fibonacci numbers.
fiblist :: [Integer]
fiblist = 0 : 1 : zipWith (+) fiblist (tail fiblist)

{- |
   An efficient recursive algorithm for computing /one/ fibonacci number.
   * f (2k+1) = (f k)^2 + (f (k+1))^2
   * f (2k) = 2 * f k * f (k+1) - (f k)^2
 -}
fib :: (Integral b, Num a) => b -> a
fib n = fst (g n)
  where g 0 = (0,1)
        g n' | r == 0 = (2*x*y-x2, x2+y2)
             | otherwise = (x2+y2, 2*x*y+y2)
          where (q,r) = quotRem n' 2
                (x,y) = g q
                x2 = x*x
                y2 = y*y
