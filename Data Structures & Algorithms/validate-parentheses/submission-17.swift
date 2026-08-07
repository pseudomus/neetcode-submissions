class Solution {
    func isValid(_ s: String) -> Bool {
        let pairs:[Character:Character] = [")":"(", "}":"{","]":"["]
        var stack:[Character] = []

        for i in s {
            if pairs[i] != nil {
                if stack.last == pairs[i] {
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