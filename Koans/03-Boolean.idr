-- | Exercises on Boolean Relations.
module Koans.Boolean

logicalAND : Bool
logicalAND = True && (2 + 2 == 4) == True

logicalOR : Bool
logicalOR = False || (3 - 2 == 7) == False

logicalNOT : Bool
logicalNOT = not True == False

logicalPredicate : Bool
logicalPredicate = not (False && True) || (False && False) == True

-- --------------------------------------------------------------------- [ EOF ]
