# Operators and Conditions

Again, just like any other programming language, you can do some arithmetic operations.

```swift
let a = 10
let b = 20
let c = a + b
```

You can also user the `+` operator to concatenate strings or even join arrays:

```swift
let name = "John"
let lastName = "Doe"
let fullName = name + " " + lastName
```

You can also use the `+=` operator to add and assign a value to a variable:

```swift
var score = 10
score += 5
```

There's also the `==` operator, the `!=` operator, the `>` operator, the `<` operator, the `>=` operator, and the `<=` operator. To this point, you should know how to use them.

Just like in Javascript, you can use the ternary operator:

```swift
let age = 18
let canDrink = age >= 21 ? "Yes" : "No"
```

### Range operators

So this is new to me. There are two range operators in Swift: the closed range operator and the half-open range operator.

The closed range operator is `...` and it includes the values on both sides:

```swift
for i in 1...5 {
    print(i)
}

// Output:
// 1, 2, 3, 4, AND 5
```

The half-open range operator is `..<` and it includes the values on the left side but not on the right side:

```swift
for i in 1..<5 {
    print(i)
}

// Output:
// 1, 2, 3, AND 4
```







