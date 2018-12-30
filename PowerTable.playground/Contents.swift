import Foundation

func generatePowerTable(forNumber baseNumber: Int, withPower power: Int) -> String {
    var output = String()
    var finalOutput = String()
    var result = 1
    
    func buildOutputString(number baseNumber: Int, power: Int) -> String {
        if power > 1 {
            for cnt in 1 ... power {
                result = result * baseNumber
                if cnt == power {
                    output += "\(baseNumber) = \(result)"
                } else {
                    output += "\(baseNumber) * "
                }
            }
        } else {
            result = baseNumber
            output = "\(baseNumber) * 1 = \(result)"
        }
        return output
    }
    
    for cnt in 1 ... power {
        switch cnt {
        case 1:
            finalOutput = finalOutput + buildOutputString(number: baseNumber, power: cnt)
        default:
            finalOutput = finalOutput + "\n" + buildOutputString(number: baseNumber, power: cnt)
        }
        output = ""
        result = 1
    }
    return finalOutput
}

var output: (Int, Int) -> String = generatePowerTable(forNumber:withPower:)
print(output(3, 5))

