// 02 - Inheritance

// It's very simple

// Master class
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    // func printSummary() { ... }
}

// Two subclasses:
class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

// To change a method from the master class we must
// use:

override func printSummary() {
    print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
}

// If you know for sure that you class should not support inheritance, you can mark it as `final`.
