class Solution {
    func addBinary(_ a: String, _ b: String) -> String {

        let aLength: Int = a.length
        let bLength: Int = b.length
        let finalArray = [String]()
        var finalString: String = ""
        var i: Int = 0
        let maxLength: Int = max(aLength,bLength) // ilosc calkowitych petli

        let paddedA = String(repeating: "0", count: maxLength - aLength) + a
        let paddedB = String(repeating: "0", count: maxLength - bLength) + b

        let arrayA = paddedA.map { String($0) }
        let arrayB = paddedB.map { String($0) }

        print(arrayA)
        print(arrayB)




        var storage: [[String]] = Array(repeating: [], count: maxLength)
        //print(biggerLength)


        for i in (0...maxLength-1).reversed(){ 
            if (arrayA[i] == "1") {
                storage[i].append(arrayA[i])
            }
            if (arrayB[i] == "1") {
                storage[i].append(arrayB[i])
            }

            if (storage[i].count == 2) { // są dwie jedynki
                if (i == 0 ){
                    finalString.append("01")
                    print("teraz to wynik \(finalString)")
                    break
                }
                finalString.append("0")
                storage[i-1].append("1")
            }
            else if (storage[i].count == 3) { // są dwie jedynki
                if (i == 0 ){
                    finalString.append("11")
                    print("teraz to wynik \(finalString)")
                    break
                }
                finalString.append("1")
                storage[i-1].append("1")
            }
            else if (storage[i].count == 1) {
                finalString.append("1")
            }
            else{
                finalString.append("0")
            }

            
            
        }

        print("bez zmiany to  \(finalString)")
       // return finalString.reversed()
        return (String(finalString.reversed()))

        
        
        
    }
}