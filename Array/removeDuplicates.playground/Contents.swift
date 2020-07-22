/**
* Problem
*     26. Remove Duplicates from Sorted Array
*    https://leetcode.com/problems/remove-duplicates-from-sorted-array/
* Grade of difficulty
*     easy
* Related topics
* @author Ramy
*/

import UIKit

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
     if (nums.count == 0) {
        return 0
     }
    var prev = nums[0]
    var j = 1
    for i in 0..<nums.count {
        if nums[i] != prev {
             nums[j] = nums[i]
             prev = nums[j]
             j = j + 1
          }
        }
      return j
   }
}
