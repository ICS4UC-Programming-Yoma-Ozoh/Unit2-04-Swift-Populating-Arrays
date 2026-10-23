import Foundation

/**
 * This program populates an array with random numbers,
 * calculates the average, and displays the results.
 *
 * @author Yoma Ozoh
 * @version 1.0
 * @since 2026-10-22
 */
enum PopulatingArrays {

    /// Creates an array of 10 random integers from 0 to 100,
    /// prints them on a single line, and returns the array.
    /// - Returns: An array of 10 random integers.
    static func populateArray() -> [Int] {
        let arraySize = 10
        let maxRandom = 100 // Int.random(in: 0...100) includes 100
        var numbers = [Int]()

        for _ in 0..<arraySize {
            let randomNumber = Int.random(in: 0...maxRandom)
            numbers.append(randomNumber)
            print("\(randomNumber) ", terminator: "")
        }
        print() // Move to the next line

        return numbers
    }

    /// Sorts the provided array, calculates the average, and prints
    /// the sorted values alongside the average rounded to 1 decimal place.
    /// - Parameter arrayGiven: The array of integers to process.
    static func calculateAverage(arrayGiven: [Int]) {
        var sortedArray = arrayGiven
        sortedArray.sort()

        var sum = 0
        for value in sortedArray {
            print("\(value) ", terminator: "")
            sum += value
        }

        let average = Double(sum) / Double(sortedArray.count)
        let formattedAverage = String(format: "%.1f", average)
        print("   Average: \(formattedAverage)")
    }

    /// Main entry point to run the loop 5 times.
    static func main() {
        let loopCount = 5

        for _ in 0..<loopCount {
            let numbers = populateArray()
            calculateAverage(arrayGiven: numbers)
        }
    }
}

// Call the main function to run the program
PopulatingArrays.main()
