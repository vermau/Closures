/*
 :Created by - Ujjwal Verma
 :Dated - Sep 25, 2017
 
 :Parametres to functions / closures in swift are constants and cannot be mutated.
 :Parametres need to be marked as inout in order to be mutable inside the function / closure
 */

// :Simple Closure and Optionals usage
// Usage: When logic is implemented directly by us in the api
var factorial = {
    (num: inout Int) -> String? in
    
    var outputString: String?
    var result = 1
    
    if num <= 0 {
        outputString = nil
    } else {
        outputString = ""
        while(num >= 1) {
            if num == 1 {
                outputString = outputString! +  "\(num) = \(result)"
                break
            } else {
                outputString = outputString! + "\(num) x "
            }
            result = result * num
            num -= 1
        }
    }
    return outputString
}

var factorialNumber = 4

// :Using NIL Coleasing
print(factorial(&factorialNumber) ?? "Result is nil")


// *****************************************


// :Advanced Closure used in the form of a function type passed as a parameter to the main function "factorial"
// Usage: Can be used when we want to leave the logic to be implemented by the user of the api
func factorial(num: Int, function: (Int) -> String) -> String {
    return function(num)
}

// :User creates the Closure logic to print factorial backwards
print(factorial(num: 5, function: { num in
    
    var outputString = String()
    var result = 1
    var cnt = num
    
    while(cnt >= 1) {
        result = result * cnt
        if cnt == 1 {
            outputString = outputString +  "\(cnt) = \(result)"
            break
        } else {
            outputString = outputString + "\(cnt) x "
        }
        cnt -= 1
    }
    return outputString
}))

// :User creates the Closure logic to print factorial forwards
print(factorial(num: 5, function: { num in
    
    var outputString = String()
    var result = 1
    var cnt = 1
    
    while(cnt <= num) {
        result = result * cnt
        if cnt == num {
            outputString = outputString +  "\(cnt) = \(result)"
        } else {
            outputString = outputString + "\(cnt) x "
        }
        cnt += 1
    }
    return outputString
}))

