// 03 - Initializers

// Main class vehicle:
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

// And then, to create the subclass we use super:
class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

// Now we can create instances:
let teslaX = Car(isElectric: true, isConvertible: false)

