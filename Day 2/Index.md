## How to store ordered data in Arrays

Just like every other programming languages, in Swift, ther'e Arrays too:

```swift
var beatles = ["John", "Paul", "Sidney"]
let numbers = [1, 2, 3, 4, 5]
```

To access the elements of the array:

```swift
print(numbers[1])
```

To add new elements (just like `.push()` in JavaScript):

```swift
beatles.append("Paco")
```

But you can't store data with different types in the same array:

```swift
let elements = [1, "John", 2.4] // Error
```

You can see the type more clearly when initializing an empty array:

```swift
var scores = Array<Int>() // Only numbers
var scores = [Int]() // Also works
```

To know how many items are in a array, you can use the `.count` function:

```swift
print(albums.count)
```

To delete items, you can use:

```swift
characters.remove(2) // The character at index 2
characters.removeAll() // Remove all of the characters
```

You can check if an array contains a particular element with `contains()`:

```swift
albums.contains("Whole Lotta Red")
```

And you can also sort the array:

```swift
// Alphabetically
letters.sorted()

// and in ascending order
numbers.sorted()
```

And reverse too:

```swift
let presidents = ["Bush", "Obama", "Trump", "Biden", "Trump"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
```