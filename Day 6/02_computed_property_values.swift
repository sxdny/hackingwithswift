// 02 - Computed Property Values

struct Employee {
    let name: String
    var vacationRemaining: Int
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.vacationRemaining -= 5
print(archer.vacationRemaining)
archer.vacationRemaining -= 3
print(archer.vacationRemaining)

// On this example here, we are changing the value of vacationRemaining

// It's cool and it works, but when we change that value, we might
// lose the original value (14)

// For that, here's a better solution:

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}

// Now here, instead of changing the original values, we are creating a new computed
// property. The values of this property will be the result of vacationAllocated - vacationTaken:

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)

archer.vacationTaken += 4
print(archer.vacationRemaining)

archer.vacationTaken += 4
print(archer.vacationRemaining)

// The problem now is that we can't write into it. To fix that, we can use
// a getter and a setter:

var vacationRemaining: Int {
    get {
        vacationAllocated - vacationTaken
    }

    set {
        vacationAllocated = vacationTaken + newValue
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)

archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)

// now we can modify and obtain the value