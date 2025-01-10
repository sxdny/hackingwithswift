## Dictionary

A collection whose elements are key-value pairs.

We can convert this:

```swift
let person = ["Sidney Silva", "Brazil", "08/08/2004"]
```

To a dictionary:

```swift
let person = [
    "name": "Sidney Silva",
    "placeOfBirth": "Brazil", 
    "dateOfBirth": "08/08/2004"
]
```

This is just a `json` object (with key value pairs), but in Swift.

So, we can acces the value of the keys by doing this:

```swift
print(person["name"]) // "Sidney"
```

You can also create empty dictionaries:

```swift
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
// ...

// if you need to rewrite the value
heights["Yao Ming"] = 228
```