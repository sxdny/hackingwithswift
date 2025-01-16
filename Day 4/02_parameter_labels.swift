// Imagine that we have this code:
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string: string)

// We can avoid the parameter label by using an underscore:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

// In this case is iseful, beacuse the function name is descriptive enough. And we won't pass anything else than a string.

// Another example
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

// In this case, we can change the 'number' parameter label to a for, to make it more descriptive:
func printTimesTables(for number: Int) {
    for i in 1...12 {
     // The internal name is number !!!
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5) // This is more descriptive

