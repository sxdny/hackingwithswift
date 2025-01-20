// Create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down.

// Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?

// Solution:

enum Gear {
    case reverse
    case neutral
    case first
    case seconds
    case third
    case fourth
    case fifth
    case sixth
}

struct Car {
    public let name: String
    public let model: String
    public let nOfSeats: Int
    
    public var currentGear: Gear
    
    private mutating func changeGears(to newGear: Gear) {
        self.currentGear = newGear
    }
}
