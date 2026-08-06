class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
    

        var dict = [Character: Int]()
        var dict2 = [Character: Int]()

        for char in s {
            dict[char, default: 0] += 1
        }

        for char in t {
            dict2[char, default: 0] += 1
        }

        return dict == dict2
    }
}
