class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        // var digitsArray = [Int]()
        // digitsArray = digits.map { $0 }
        var digitsArray = digits
        let digtisLength = digitsArray.count - 1 
        //var helpInt: Int = 1
        for (index, i) in digitsArray.reversed().enumerated() {
            if ( i != 9) { 
                digitsArray[digtisLength - index] = i + 1
                return digitsArray
            }

            if ( i == 9) {
                digitsArray[digtisLength - index] = 0
            }
            
            if ( i == 9 && (digtisLength - index) == 0) {
                digitsArray.insert((1), at: 0)
                return digitsArray
            }
        }
       return digitsArray
    }
}