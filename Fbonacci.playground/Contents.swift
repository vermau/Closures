/*
 Mark: Created by Ujjwal Verma
 Dated: Sep 25, 2017
 
 :Prints upto n number of terms in the Fibonacci series
 */

import Foundation

var fibonacci = {
    (num: Int) -> [Int] in
    
    var arr: [Int] = [1, 1]
    
    for cnt in 2 ... (num - 1) {
        arr.append(arr[cnt - 1] + arr[cnt - 2])
    }
    return arr
}

print(fibonacci(8))

