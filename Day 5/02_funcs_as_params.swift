// Functions as parameters

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

// Explanation:

// 1. This function takes two params: the num of ints we want and it also returns an
// array of ints
// 2. The second param is a function with no params but it will return a Int every times is called
// 3. Inside `makeArray` we create a new empty array of ints, then loop as many times as requested
// (size)
// 4. 

/*
* Explanation:
* 1. This function takes two params: the num of ints we want and it also returns an array of ints
* 2. The seconds param is a function with no params but it will return an Int every times it's called.
* 3. Inside makeArray, we create a new empty array of Ints, then loop until size.
* 4. Each time the loop goes around, we call the generator function that was passed as a param
* This will return one new Integer, so we put that into the numbers array.
* 5. Finally, the finished array is returned
*/

// Now we can call this function and pass in a function that generates numbers:

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20) // this is the generator() function that returns Int
}

print(rolls)

// We can algo call functions that we previously created:

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

// That will call generateNumber() 50 times to fill the array.

// We cal also pass multiple functions:

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

// And to call this:

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

