class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.lowercased().filter({!$0.isWhitespace && !$0.isPunctuation}))
        var size = chars.count

        if size == 1 {
            return true
        }

        var left = 0 
        var right = size - 1

        while left < right {
            if chars[left] != chars[right] {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }
}
