// 06 - Variables inside classes

// Very simple

class User {
    var name = "Paul"
}

var user = User()
user.name = "Taylor"
user = User()
print(user.name)

// When using var, we can't change the value from
// that specific use but we are not changint the
// value of the class itself. When overwriting
// the user, the name will be again "Paul".