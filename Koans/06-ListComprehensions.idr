module Koans.ListComprehensions

-- | What is the result of the List Comprehension.
listCompZero : Bool
listCompZero = l == [ x + x | x <- [1..5] ]
  where
    l : List Nat
    l = [2,4,6,8,10]

-- | Write a list comprehension that returns all the numbers divisible by four, doubled.
myFirstListComp : List Integer -> List Integer
myFirstListComp xs = [ x * 2 | x <- xs, g x]
  where
    g : Integer -> Bool
    g x = (x `mod` 4) == 0
                       
computeList : Bool
computeList = myFirstListComp [1..10] == [8,16]

-- | Return all the numbers between 20 and 100 that are divisible by 9.
divisibleByNine : List Integer
divisibleByNine = [x | x <- [20..100], (x `mod` 9) == 0]

-- | Using list comprehensions construct a function that turns a list of numbers into a list of strings.
-- Odd numbers should be bang, Even numbers boom.
boomBangs : List Integer -> List String
boomBangs xs = [ transform $ mod x 2 | x <- xs]
               where
                 transform : Integer -> String
                 transform 0 = "boom"
                 transform _ = "bang"

doBoomBangs : Bool
doBoomBangs = boomBangs [3,4,5,6,7] == ["bang", "boom", "bang", "boom", "bang"]


