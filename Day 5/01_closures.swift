// Closures

//  A closure is just a function that we can execute over and over. They usually don't take
// params and don'r return any value

let sayHello = {
 print("Hello!")
}

sayHello()

// If you want to accept params, they need to be written in a certain way.
// Closures start with a { and end with }, so anything outside won't work.
// What we need to do is put the params inside the brackets:

let sayHello = { (name: String) -> String in // the in is used to mark the end of the params
 "Hello \(name)!"
}

// External parameter names only matter when we are calling the function directly
// not when we create a closure or when we copy that function first

// Functions like `sorted()` let us pass in custom code to adjust how they work.

// We can provide this custom code using closures:

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

// In this case, we are prioritizing the name "Suzanne". Because she's the
// captain, she must be the first one on the list. The rest of the people
// will be sorted alphabetically.

// Sorting rules:
// 1. If the name is Suzanne, it is prioritized
// 2. If the second name is Suzanne, the first name is placed after Suzanne
// 3. The rest of the names are sorted alphabetically

// The `sorted()` function accepts any kind of function to do custom sorting, but that
// function must accept two items of the array and return a Boolean value set to True
// if the first String should be sorted before the second.

// Because of that, we don't need to specify types because the function itselft WILL
// accept two strings and return a Boolean value. If this is not the case, it will
// refuse to build our code

// So, we can get rid of them:

let captainFirstTeam = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

// We can algo get rid of some things because Swift allows special syntax called
// trailling closure syntax.

// And the last thing, Swift can provide paramater names for us, using shorthand syntax:

let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

// Okay, the closures are just like () => {} in js

// Some examples:

// transform every item of an array to UPPERCASE
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// filter by:
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)


