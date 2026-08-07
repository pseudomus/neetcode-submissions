class Solution {
    func isValid(_ s: String) -> Bool {
        let closing:[Character] = [")", "}", "]"]
        let dict:[Character:Character] = [")":"(", "}":"{","]":"["]
        var charactersString = Array(s)
        var stack: [Character] = []
        var closed: Bool = false

        if s.count <= 1 {
            return false
        }

        for i in s {
            if closing.contains(i) {
                if stack.last == dict[i] {
                    stack.removeLast()
                } else {
                    return false
                }
            } else {
                stack.append(i)
            }
        }

        return stack.isEmpty
    }
}