/*
Calculator by Bakhrom Usmanov
Let’s build a calculator! This calculator is a bit special because it will accept a whole list of numbers at once. Like any good calculator, your calculator will be able to add and subtract numbers. But your calculator will do more! In this project, you’ll give your calculator the ability to:

Filter numbers out of the list
Transform each number in the list to a new number
These methods that you’ll give to your calculator also exist in the Swift standard library! By implementing them yourself in this project, you’ll learn more about how they work.
*/

struct Calculator {
    let addition = { (num1: Int, num2: Int) -> Int in
        return num1 + num2
    }

    let multiplication = { (num1: Int, num2: Int) -> Int in
        return num1 * num2
    }

    let division = { (num1: Int, num2: Int) -> Int in
        return num1 / num2
    }

    let subtraction = { (num1: Int, num2: Int) -> Int in
        return num1 - num2
    }

    let isEven = { (num: Int) -> Bool in
        return num.isMultiple(of: 2)
    }

    let isOdd = { (num: Int) -> Bool in
        return !num.isMultiple(of: 2)
    }

    let isZeroFree = { (num: Int) -> Bool in
        return num != 0
    }

    let squareNumbers = { (num: Int) -> Int in
        return num * num
    }

    let doubleNumbers = { (num: Int) -> Int in
        return num * 2
    }

    // Reduce array with custom operation
    func reduce(_ nums: [Int], using nextPartialResult: (Int, Int) -> Int, startingAt initialResult: Int) -> Int {
        var total = initialResult
        for num in nums {
            total = nextPartialResult(total, num)
        }
        return total
    }

    // Filter array with custom condition
    func filter(_ nums: [Int], using isIncluded: (Int) -> Bool) -> [Int] {
        var filteredNums: [Int] = []
        for num in nums {
            if isIncluded(num) {
                filteredNums.append(num)
            }
        }
        return filteredNums
    }

    // Map array with custom transformation
    func map(_ nums: [Int], using transform: (Int) -> Int) -> [Int] {
        var mappedNums: [Int] = []
        for num in nums {
            mappedNums.append(transform(num))
        }
        return mappedNums
    }

    // Sort array with custom comparison
    func sort(_ nums: [Int], using sortingBy: (Int, Int) -> Bool) -> [Int] {
        var sortedNumbers = nums
        var isSorted = false
        
        while !isSorted {
            isSorted = true
            for i in 1..<sortedNumbers.count {
                if sortingBy(sortedNumbers[i], sortedNumbers[i - 1]) {
                    sortedNumbers.swapAt(i, i - 1)
                    isSorted = false
                }
            }
        }
        return sortedNumbers
    }
}

let userInput = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print(userInput)

// Using reduce for sum
let calculator = Calculator()
let sum = calculator.reduce(userInput, using: calculator.addition, startingAt: 5)
print(sum)

// Filter even numbers
let evenNumbers = calculator.filter(userInput, using: calculator.isEven)
print(evenNumbers)

// Filter odd numbers
let oddNumbers = calculator.filter(userInput, using: calculator.isOdd)
print(oddNumbers)

// Filter non-zero numbers
let nonZeroNumbers = calculator.filter(userInput, using: calculator.isZeroFree)
print(nonZeroNumbers)

// Map to double the numbers
let doubledNumbers = calculator.map(userInput, using: calculator.doubleNumbers)
print(doubledNumbers)

// Map to square the numbers
let squaredNumbers = calculator.map(userInput, using: calculator.squareNumbers)
print(squaredNumbers)

// Sort numbers ascending
let sortedNumbersAsc = calculator.sort(userInput, using: { $0 < $1 })
print(sortedNumbersAsc)

// Sort numbers descending
let sortedNumbersDesc = calculator.sort(userInput, using: { $0 > $1 })
print(sortedNumbersDesc)

// Reduce for multiplication
let multipliedSum = calculator.reduce(userInput, using: calculator.multiplication, startingAt: 1)
print(multipliedSum)

// Reduce for division
let dividedSum = calculator.reduce([10, 2, 2], using: calculator.division, startingAt: 100)
print(dividedSum)

// Reduce for subtraction
let subtractedSum = calculator.reduce(userInput, using: calculator.subtraction, startingAt: 0)
print(subtractedSum)
