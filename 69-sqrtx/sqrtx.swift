class Solution {
    func mySqrt(_ x: Int) -> Int {
        let newX: Int = x
        var result : Int

        for i in 0...newX {
            if (i * i) == newX {
                result = i
                return result
            }

            if (i * i) > newX {
                result = i - 1
                return result
                
            }

        }
        

        return 0


        // while newX > currentDivider {
            
        //     if currentDivider = smallestDivisision(newX) {
        //         niceArray.append[currentDivider] // dodaje pierwszy i kolejny dzielnik do tablicy
        //         print("obecna liczba, na której operuje to \(newX), jej dzielnik to \(currentDivider)")
        //         newX = newx/currentDivider // zmniejszam obecną liczbe dzieąc ją, np 300 

        //     } // zwraca pierwszy dzielnik
        //     else {
        //         niceArray.append[newX]
        //         break // to sie dzieje, jak liczba jest liczbą pierwszą, lub po prostu nie ma już wiecej do 
        //     }
        // }





        // var newX1: (Int) = smallestDivisision(newX)
        // return newX1




    }


    // func smallestDivisision(_ newX: Int) -> Int {
    //     if let smallestDivision = (2...newX).first(where: {newX % $0 == 0}) { // zwraca pierwszą podzielną liczbę, 
    //         return smallestDivision
    //     }
    //     else { // jeżeli nie ma żadnej podzielnej liczby , nawet dwójki, to znaczy, że jest to liczba pierwsza i jej pierwiastkiem 
    //             // kwadratowym jest jej własny pierwiastek, np pierwiastek z 7
    //         return newX
    //     }
    // }
}