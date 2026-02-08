class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digitsArray = [Int]()
        digitsArray = digits.map { $0}
        let digtisLength = digitsArray.count - 1 
        print("digitsArray to  \(digitsArray)")
        var helpInt: Int = 1
        for (index, i) in digitsArray.reversed().enumerated() {
            print (i)
            if ( i != 9) { 
                digitsArray[digtisLength - index] = i + 1
                print("digitsArray to  \(digitsArray)")
                print("index ma wartosc \(digtisLength - index)")
                print("obsluguje teraz \(i)")
                return digitsArray
                //continue
            }

            if ( i == 9) {
                digitsArray[digtisLength - index] = 0
                
            }
            
            if ( i == 9 && (digtisLength - index) == 0) {
                //digitsArray[digtisLength - index] = 0
                digitsArray.insert((helpInt), at: 0)
                print("no tutaj powinno dodac 1 z przodu")
                return digitsArray
                //continue
            }

        }
    
       return digitsArray

       



    }
}