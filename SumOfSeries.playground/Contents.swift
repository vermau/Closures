import Foundation

func numberSquare(value: Int) -> Int {
    return value * value
}
func numberCube(value: Int) -> Int {
    return value * value * value
}
func fibonacciNumber(value: Int) -> Int {
    /* This funciton will calculate the fobinacci series for all numbers one by one uptill the length,
     sum them up individually and return the sum */
    return 0
}

func sumOfSeries(length: Int, series: (Int) -> Int) -> Int {
    var result = 0
    
    for num in 1 ... length {
        result += series(num)
    }
    return result
}

var sumOfSquareNumbers = sumOfSeries(length: 10, series: numberSquare)
print("Sum of square numbers: \(sumOfSquareNumbers)")
var sumOfCubeNumbers = sumOfSeries(length: 10, series: numberCube)
print("Sum of cube numbers: \(sumOfCubeNumbers)")
var sumOfFibonacciNumbers = sumOfSeries(length: 10, series: fibonacciNumber)
print("Sum of fibonacci numbers: \(sumOfFibonacciNumbers)")

