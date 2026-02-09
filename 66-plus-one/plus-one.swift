class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var digitsCount = digits.count - 1 // jezeli jest 5 cyfr, no licząc od 0 jest to cztery
        while 0 <=  digitsCount {

            if (digits[digitsCount] < 9) { // zwiekszam o 1
                digits[digitsCount] += 1
                return digits
            }

            digits[digitsCount] = 0
            digitsCount -= 1
        }

        return [1] + digits
    }
}