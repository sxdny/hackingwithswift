This time the challenge is to create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array.

Code:

```swift
import UIKit

let arrString: [String] = ["Sidney", "London", "New York", "Madrid", "Barcelona", "Sidney", "Barcelona", "New York"]
let uniqueElements: [String] = Array(Set(arrString))

print("Number of elements of the array: \(arrString.count)")
print("Number of unique elements: \(uniqueElements.count)")
```