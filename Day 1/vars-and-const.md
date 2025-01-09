## How to create variables and constants

```swift
var greeting = "Hello, playground" // variable
let character = "Daphne" // const
```

To print the values, we can use the `print()` function:

```swift
print(greeting)
```

Coding convention: camelCase for variables.

```swift
let managerName = "Michael Scott"
```
const > variables

## How to create String

Most of the things are very self-explanatory. Here there are some of the most interesting ones:

### Length of a string

You can read the length of a string by writing `.count` after the variable name:

```swift
print(actor.count)
```

To uppercase all the letters:

```swift
print(actor.uppercased())
```

Prefixes and suffixes:

```swift
sidney.hasPrefix("S") // if it start with the letter S (case sensitive)
image.hasSuffix(".png") // if it ends with '.png'
```
### How to store numbers

Nothing especial, but there's a function than can help you with multiples of $x$ number:

```swift
let number = 10
print(number.isMultiple(of: 2)) // true
```

Swift won't let us mix types:

```swift
let a = 1
let b = 2.0
let c = a + b // Error
````
To fix this, we need to convert the type:

```swift
let c = a + Int(b)
// or
let c = Double(a) + b
```

Another example of an error related to types:

```swift
var name = "Nicolas Cage"
name = 57 // Error
```

## Booleans

The same as in other languages. We can use the `toggle()` function to switch the value:

```swift
var isOn = true
isOn.toggle()
```

It's the same as using `!` infront of the variable:

```swift
isOn = !isOn
```

## Combine strings

We can use the `+` operator to combine strings:

```swift
let firstName = "Michael"
let lastName = "Scott"
let fullName = firstName + " " + lastName
```

But it doesn't work with numbers:

```swift
let nOfPeople = 5
let message = "There are " + nOfPeople + " people in the room" // Error
```

To do this, we need to convert the number to a string:

```swift
let message = "There are " + String(nOfPeople) + " people in the room"
```

We can also use string interpolation:

```swift
let message = "There are \(nOfPeople) people in the room"
```

It's like the `${}` in JavaScript.

