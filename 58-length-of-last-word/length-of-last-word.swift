class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let characters = Array(s)   
        var iList = [Character]()
        for character in characters.reversed() {
            if (character != " " && iList.isEmpty) {
                iList.append(character)
                continue
            }
            if (character != " " && !iList.isEmpty) {
                iList.append(character)
                continue
            }
            if (character == " " && !iList.isEmpty){
                print(iList)
                return iList.count
            }
        }
        print(iList)
        return iList.count
    }
}