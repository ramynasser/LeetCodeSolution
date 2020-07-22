/**
* Problem
*     1282. Group the People Given the Group Size They Belong To
*     https://leetcode.com/problems/group-the-people-given-the-group-size-they-belong-to/
* Grade of difficulty
*     Medium
* Related topics
* @author Ramy
*/

import UIKit
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
var ar = [0,0,1,1,1,2,2,3,3,4,4,6,10]
removeDuplicates(&ar)
