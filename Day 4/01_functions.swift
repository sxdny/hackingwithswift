// Functions are defined this way:
func showMessage() {
 print("Welcome!")
}

showMessage()

// To receive params, you can define them inside the parentheses:
func showMessage(name: String) {
 print("Welcome, \(name)!")
}

showMessage(name: "Sidney")

// To return a value, you can define the return type after the parentheses: -> Int

func add(a: Int, b: Int) -> Int {
 return a + b
}

// Return multiple values
// To do this, in the correct way, you should return a tuple
func getCoordinates() -> (x: Int, y: Int) {
 return (x: 2, y: 3)
}

// Tuples are different from dictionaries.
// When accesing a value, Swift will know ahead of time the type of the value.

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

// user will be a tuple with two values: firstName and lastName
let user = getUser()
// When accesing the values, Swift will know the type of the value. It will automatically infer the type.
let firstName = user.firstName
let lastName = user.lastName

print("Name: \(firstName) \(lastName)")

// But we can also do this:
let (name, surname) = getUser()
print("Name: \(name) \(surname)")