// The first thing that we can do is to define what errors we can have. We can use a enum to do that

// Example for passwords:
enum PasswordError: Error {
 case short, obvious
}

// Two possible errors: short and obvious

// Now can can create a function that throws an error if the password is too short or too obvious

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// There's also "try catch" to handle errors. In this case, for Swift, we will use do, try and catch:

do {
    try someRiskyWork()
} catch {
    print("Handle errors here")
}

// When it comes to catching errors, you must always have a catch block that is able to handle every kind of error. However, you can also catch specific errors as well, if you want:

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}