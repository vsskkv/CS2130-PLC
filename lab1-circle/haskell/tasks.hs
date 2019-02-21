-- The following function definition contains a syntax error:
-- (To enable the code, delete contents of lines 10 and 3.)

sayHello :: IO ()
sayHello =
  do
  let name = "Alice"
  putStrLn ("hello " ++ name)

{-II ??
ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask (prompt ++ " please try again")
    else putStrLn ("you said: " ++ reverse line)
-}

{-III
ask :: String -> IO ()
ask prompt =
  do
  let var = "!"
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask (prompt ++ var)
    else putStrLn ("you said: " ++ reverse line)-}

{-IV
[ghcmod]
• Couldn't match type ‘IO ()’ with ‘[Char]’
  Expected type: String
    Actual type: IO ()
• In the first argument of ‘ask’, namely ‘(putStrLn prompt)’
    -}

-- V  would print 2 times ??
ask :: String -> IO ()
ask prompt =
  do
  putStrLn prompt
  line <- getLine
  if line == ""
    then ask prompt
    else putStrLn ("you said: " ++ reverse line)

main :: IO ()
main =
  do
  -- sayHello
  ask "please say something"
