## 4.2(a)

gamePos1 = 
XXO
O.X
O..

Player to take next move: Player_X
Estimated advantage of player X against player O: 0.0

## 4.2(b)

#### Error:

equalBoards (pos1 pos2) = -- Task 4.2.(b): fix this function

​    (pos_board pos1 == pos_board pos2)

--------------------------------------------------------------------------------------

ttt.hs:80:35: error:
    • Couldn't match expected type ‘GamePos’
                  with actual type ‘(GamePos, GamePos)’
    • In the first argument of ‘equalBoards’, namely
        ‘(gamePos1, gamePos1B)’
      In the second argument of ‘($)’, namely
        ‘equalBoards (gamePos1, gamePos1B)’
      In the second argument of ‘($)’, namely
        ‘show $ equalBoards (gamePos1, gamePos1B)’

#### Fix:

equalBoards (pos1, pos2) = -- Task 4.2.(b): fix this function

​    (pos_board pos1 == pos_board pos2)

-------------------------------------------

equalBoards (gamePos1, gamePos1B) = True
gamePos1 = 
XXO
O.X
O..

Player to take next move: Player_X
Estimated advantage of player X against player O: 0.0

## 4.3(a)

#### Error:

ttt.hs:68:5: error:
    • Data constructor not in scope: GamePosWin :: Board -> Player -> t
    • Perhaps you meant ‘GamePos’ (line 33)

ttt.hs:84:16: error:
    • Ambiguous type variable ‘a0’ arising from a use of ‘show’
      prevents the constraint ‘(Show a0)’ from being solved.
      Probable fix: use a type annotation to specify what ‘a0’ should be.
      These potential instances exist:
        instance Show Ordering -- Defined in ‘GHC.Show’
        instance Show Integer -- Defined in ‘GHC.Show’
        instance Show Board -- Defined at ttt.hs:20:10
        ...plus 26 others
        ...plus 11 instances involving out-of-scope types
        (use -fprint-potential-instances to see them all)
    • In the second argument of ‘($)’, namely ‘show gamePos2’
      In a stmt of a 'do' block: putStrLn $ show gamePos2
      In the expression:
        do { putStr "equalBoards (gamePos1, gamePos1B) = ";
             putStrLn $ show $ equalBoards (gamePos1, gamePos1B);
             putStrLn "gamePos1 = ";
             putStrLn $ show gamePos1;
             .... }

#### Before edits:

data GamePos 

​    = GamePos

​      {

​        pos_board :: Board,

​        pos_turn :: Player,

​        pos_value :: Float

####       }

​    deriving (Eq)

#### edits:
```haskell
data GamePos 
    = GamePos
      {
        pos_board :: Board,
        pos_turn :: Player,
        pos_value :: Float
      }
      |GameposWin
      {
        pos_board :: Board,
        pos_turn :: Player
      }
 deriving (Eq)
```


#### After

equalBoards (gamePos1, gamePos1B) = True
gamePos1 = 
XXO
O.X
O..

Player to take next move: Player_X
Estimated advantage of player X against player O: 0.0

gamePos2 = 
ttt.hs: ttt.hs:(47,5)-(51,76): Non-exhaustive patterns in function show

## 4.3(b)

#### Before

```haskell
instance (Show GamePos ) where
    show (GamePos board turn value ) =
        unlines -- put the following strings on separate lines
        [show board, 
         "Player to take next move: " ++ show turn, 
         "Estimated advantage of player X against player O: " ++ show value]
```

#### After:

```haskell
instance (Show GamePos) where
    show (GamePos board turn value ) =
        unlines -- put the following strings on separate lines
        [show board, 
         "Player to take next move: " ++ show turn, 
         "Estimated advantage of player X against player O: " ++ show value]
    show (GamePosWin board turn) =
        unlines
        [show board, 
        "Player won " ++ show turn]
```

## 4.4(a)

#### output

XXO
O.X
O..
Player to make the next move: PLAYER_X
Estimated advantage of player X over player O is: 0.0

## 4.4(b)

#### Output

-------------------------------------------
------- calling the compiler

gcc-8 -c ttt.adb
ttt.adb:81:13: no value supplied for component "turn"
ttt.adb:81:13: no value supplied for component "value"
ttt.adb:81:14: "pos_variant" is not a component of type "GamePos" defined at line 54
ttt.adb:86:14: "winner" is not a component of type "GamePos" defined at line 54

gnatmake: "ttt.adb" compilation error

------- cleaning up

