// 01 - Classes

// Struct != Classes

/*

Things they do have in common:

- You get to create and name them.
- You can add props and methods, including property
observers and access control.
- You can create custon initializers to configure
new instances however you want.

Differences in classes:

1. You can make one class and then create another
one, and make this last one to gain all its props
and methods as a starting point.

2. Swift won't create a initializer automatically.

3. When you copy an instance of a class, both copies
share the same data. If you change one copy,
the other one also changes.

4. When the final copy of a class instance is destroyed, Swift can run (optionally) a special
function called a deinitializer.

5. Even if you make a class constant, you can still change its properties as long as they are variables.

*/

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10