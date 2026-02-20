class Solution {
    func mySqrt(_ x: Int) -> Int {
        var result : Int
        for i in 0...x {
            if (i * i) == x {
                result = i
                return result
            }
            if (i * i) > x {
                result = i - 1
                return result
            }
        }
        return 0
    }
}