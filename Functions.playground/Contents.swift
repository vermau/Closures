
/* Mark: Function as Parameter
 Usage: Create a HANDLER function that takes other function as parameter depending upon the requirement
 */

import Foundation

func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

func subtract(num1: Int, num2: Int) -> Int {
    return num2 - num1
}

func multiply(num1: Int, num2: Int) -> Int {
    return num1 * num2
}

func calculate(_ function: (Int, Int) -> Int, _ num1: Int, and num2: Int) -> Int {
    return function(num1, num2)
}

print("The result is: \(calculate(add, 10, and: 5))")

print("The result is: \(calculate(subtract, 10, and: 5))")

print("The result is: \(calculate(multiply, 10, and: 5))")

/* ----------------------------- */

/* Mark: Stride Function
 Usage: Since Half Open and Closed Ranges can only increment by 1, so use stride() to increment by more than 1
 */
for index in stride(from: 10, to: 22, by: 4) {
    print(index, terminator: " ")
}

print() // Prints a new line

for index in stride(from: 10, through: 22, by: 4) {
    print(index, terminator: " ")
}

/* ----------------------------- */

//  Mark: Calculate Prime Numbers using Nested Function

import Foundation

func isPrime(_ num: Int) -> (String, Bool) {
    
    func isDivisible(number num: Int, by divisor: Int) -> Bool {
        if (num % divisor == 0) {
            return true
        } else {
            return false
        }
    }
    switch num {
    case let num where num <= 0:
        return ("Invalid Number", false)
    default:
        let sq = Int(sqrt(Double(num)))
        for cnt in 2 ... sq {
            if isDivisible(number: num, by: cnt) {
                return ("\(num) is prime:", false)
            }
        }
        return ("\(num) is prime:", true)
    }
}

let result = isPrime(6)
print(result.0, result.1)

print(isPrime(11))


