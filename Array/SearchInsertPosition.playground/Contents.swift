
/**
* Problem
*     35. Search Insert Position
*    https://leetcode.com/problems/search-insert-position/
* Grade of difficulty
*     easy
* @author Ramy
*/

import UIKit

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for index in 0..<nums.count {
            if target <= nums[index] {
                return index
            }
        }
        return nums.count
    }
}
