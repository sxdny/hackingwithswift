// Input:

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

/*
* Your joob is to:
* 1. Filter out any numbers that are even
* 2. Sort the array in ascending order
* 3. Map them to strings in the format "7 is a lucky number"
* 4. Print the resulting array, one item per line
*/

// Output:

7 is a lucky number
15 is a lucky number
21 is a lucky number
31 is a lucky number
33 is a lucky number
49 is a lucky number

// Solution:

let result: [String] = (
    luckyNumbers.filter { $0 % 2 == 0 }.sorted(by: <).map {
        " \($0) is a lucky number "
    }
)

result.map {
    print($0)
}