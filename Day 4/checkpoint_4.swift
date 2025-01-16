/*
Write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

1. You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
2. If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
3. You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
4. If you can’t find the square root, throw a “no root” error.
*/

// Solution:
enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

func getSquareRoot(number: Int) throws -> Int {
    // Throw error if number is < 1 or > 10_000
    if (number < 1 || number > 10000) {
        throw SquareRootError.outOfBounds
    }
    
    // Get square root of a number X
    // sqrt of X, a * a = X
    
    var result = 0
    
    for i in 1...number {
        if (i * i == number) {
            result = i
            return result
        }
    }
    
    if result == 0 {
        throw SquareRootError.noRoot
    }
}

do {
    let result = try getSquareRoot(number: -23)
    print(result)
} catch SquareRootError.outOfBounds {
    print("Out of bounds")
} catch SquareRootError.noRoot {
    print("no root")
}

