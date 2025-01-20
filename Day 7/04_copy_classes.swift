// 04 - Copy classes

class User {
    var username = "Anonymous"
}

// If we create one user:
var user1 = User()

// Then we create another one with a copy of
// user 1 and we change the value of username

var user2 = user1
user2.username = "Taylor"

// when printing the values:

print(user1.username)   // Taylor
print(user2.username)   // Taylor

// both values we changed...

// This is a very powerful feature, because it’s what allows us to share common data across all parts of our app. As you’ll see, SwiftUI relies very heavily on classes for its data, specifically because they can be shared so easily.

// If we want to create an unique copy:

class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}