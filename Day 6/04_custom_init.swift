// 04 - Custom initializers

// Example of the default initializer:

struct Player {
    let name: String
    let number: Int
}

let player = Player(name: "Megan R", number: 15)

// But we can create our own:

struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}

// 'self' === 'this'.

// We can assign default values like this:

struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99) // the number of the Player type
    }
}

let player = Player(name: "Megan R")
print(player.number) // a random number between 1 and 99