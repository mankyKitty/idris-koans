-- | Exercises on Lists
module Koans.Lists

import Prelude.List

-- | What is the type of this list.
nats : List Integer
nats = [0,1,2,3,4,5,6,7,9]

-- | Reproduce the list [0,1,3,5,7,9,2,4,6,8] using the following functions.
odds : List Int
odds = [1,3,5,7,9]

evens : List Int
evens = [2,4,6,8]

zero : List Int
zero = [0]

zeroOddsEvens : Bool
zeroOddsEvens = zero ++ odds ++ evens == [0,1,3,5,7,9,2,4,6,8]

-- | Complete the result of following functions.

headOList : Bool
headOList = x == head [5,4,3,2,1]
  where
    x : Nat
    x = 5

tailOList : Bool
tailOList = xs == tail [0,1,2,3,4,5]
  where
    xs : List Integer
    xs = [1,2,3,4,5]

lastOList : Bool
lastOList = 1 == last [5,4,3,2,1]

initOList : Bool
initOList = [1,2,3,4,5] == init [1,2,3,4,5,6]

lengthOList : Bool
lengthOList = 5 == length [1,2,3,4,5]

reverseTheList : Bool
reverseTheList = [5,4..1] == reverse [1,2,3,4,5]

first3 : Bool
first3 = [1..3] == take 3 [1..10]

drop3 : Bool
drop3 = [4..10] == drop 3 [1..10]

countAllTheNumbers : Bool
countAllTheNumbers = (foldl (plus) 1 [2..10]) == sum [1..10]

timesAllTheNnumbers : Bool
timesAllTheNnumbers = (foldl (\acc,x => acc * x) 1 [2..10]) == product [1..10]

elementOrNot : Bool
elementOrNot = elem 4 [2..6] == True

-- | Make this function true
stopPete : Bool
stopPete = xs == [3,3,3,3]
  where
    xs : List Nat
    xs = take 4 (repeat 3)
             

-- --------------------------------------------------------------------- [ EOF ]
