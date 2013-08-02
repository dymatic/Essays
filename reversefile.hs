import System.IO
import System.Environment

rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++ [x]

main = do
(a:b:_) <- getArgs
trHandle <- openFile a ReadMode
trContents <- hGetContents trHandle

writeFile b $ unlines $ map rev (rev (lines trContents))

