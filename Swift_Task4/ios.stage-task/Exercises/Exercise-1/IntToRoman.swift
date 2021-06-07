import Foundation

public extension Int {
    
    var roman: String? {
        if self <= 0 || self > 3999 {
            return nil
        }
        
        let intSymbols = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        let romanSymbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        
        var number = self
        var result = ""
        
        while number > 0 {
            for (index, symbol) in intSymbols.enumerated() {
                if number - symbol >= 0 {
                    number -= symbol
                    result += romanSymbols[index]
                    break
                }
            }
        }
        
        return result
    }
}
