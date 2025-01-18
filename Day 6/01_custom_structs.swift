// 01 - Custom structs or Types

struct Album {
 let title: String,
 let artist: String,
 let year: Int

 func printSummary() {
  print("\(title) \(year) by \(artist)")
 }
}

// This is just like when a was learning OOP back in Grado Medio with Java

// Then, to create new albums we can do it like this:

let red = Album(title: "Whole Lotta Red", artist: "Playboi Carti", year: 2020)

// And we can acces to the values and functions

print(red.title)
red.printSummary()

// Another example:

struct Employee {
    let name: String
    var vacationRemaining: Int

    func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

// This won't work.

// This is because if we create a new employee using 'let', swift will make the whole
// object a constant. And because in the takeVaction function we are changing the
// value of vacationRemaining, it will crash

// Now, if we indeed want to change the value, we must define the function like this:

mutating func takeVacation(days: Int) {...}

// Now, if you declare a new employee with `var` it will work:
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

// But, if you change `var` to `let`, it will crash because -again- we are trying to
// change the value of a constant

