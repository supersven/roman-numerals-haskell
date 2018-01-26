module RomanNumerals where

convert:: Int -> String
convert i = let (i',s) = (convert5 . convert10 . convert50 . convert100) (i, "") in
              s ++ ones i'

convert100 :: (Int, String) -> (Int, String)
convert100 accu@(i,s) = createConverter accu (100, "C") (90, "LC")

convert50:: (Int, String) -> (Int, String)
convert50 accu@(i,s) = createConverter accu (50, "L") (40, "XL")

convert10:: (Int, String) -> (Int, String)
convert10 accu@(i,s) = createConverter accu (10, "X") (9, "IX")

convert5 :: (Int, String) -> (Int, String)
convert5 accu@(i,s) = createConverter accu (5, "V") (4, "IV")

createConverter :: (Int, String) -> (Int,String) -> (Int,String) -> (Int, String)
createConverter (i,s) base@(baseValue, baseString) oneBelow@(oneBelowValue, oneBelowString) = if i >= baseValue then
                                        createConverter (i-baseValue, s ++ baseString) base oneBelow
                                      else if i >= oneBelowValue then
                                        (i-oneBelowValue, s ++ oneBelowString)
                                      else
                                        (i,s)

ones:: Int -> String
ones 0 = ""
ones i = 'I' : ones ( i - 1 )

