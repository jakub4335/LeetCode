class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var digitsCount = digits.count - 1
        while 0 <=  digitsCount {

            if (digits[digitsCount] < 9) {
                digits[digitsCount] += 1
                return digits
            }

            digits[digitsCount] = 0
            digitsCount -= 1
        }

        return [1] + digits
    }
}