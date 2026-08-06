class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        let set = Set(nums)
        if set.count < nums.count {
            return true
        } else {
            return false
        }
    }
}
