# Haskell

## Functions

succ n

- takes in number and adds 1 to it
- Where n is a number

min n m

- where n is low and m is high

max n m

- where n is low and m is high

div n m

- n / m

n ‘div’ m

- n / m

#### Make your own

//name <param> = <body>

#### If

if <condition> then <do this> else <this happens>

## Lists

#### Set var (let)

let a = 1

let a = [1, 2, 3, 4] – set as list

let b = [‘h’, ‘e’, ‘l’, ‘l’, ‘o’] – this prints “hello”

– combine lists

let x = [1, 2, 3]

let y = [4, 5, 6]

x ++ y – this prints [1, 2, 3, 4, 5, 6]

– “++” concatinates

‘a’ : ‘bcdef’ – this prints “abcdef”

 [] – empty list

[[]] – empty list in empty list

[[], [], []] – 3  empty list in list

#### compare & others

[1,2,3]>[4,5,6] – prints true

[1,2,3]==[1,2,3] – checks identical, prints true

head [1,2,3] – prints 1, the first element

tail [1,2,3] - prints [2 ,3] , the reaming 

last [1,2,3] – prints 3, last element in list

init [1,2,3] – everything but last, prints [1,2]

null [1,2] - checks if empty, prints false

reverse [1, 2] – prints [2, 1]

3 ‘elem’ [1,2,3] – prints true, it exists in list

## Tuples

list of modelled data types

rand = (“bob”, 52) – tuple pair

name = fst rand – returns “bob”

## Union

– TOBEDONE

