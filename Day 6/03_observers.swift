// 03 - Observers

// Imagine that we have this code:

struct Game {
    var score = 0
}

var game = Game()
game.score += 10
print("Score is now \(game.score)")
game.score -= 3
print("Score is now \(game.score)")
game.score += 1

// As you can see, we are changing the value of a score in the game and then
// printing the result after every change. The problem is that here, when
// changing the value of score in the last line, the value is not being shown.

// To fix this, we can create a property observer like this:

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()

game.score += 10
game.score -= 3
game.score += 1

// Swif tcan also provide you the oldValue inside didSet, in case you need it.

// There's also a willSet, that will run x code before the value of the property changes:

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")
