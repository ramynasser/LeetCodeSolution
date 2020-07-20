
/**
* Problem
*     1. Two Sum
*     https://leetcode.com/problems/two-sum/
*     https://leetcode.com/problems/two-sum/
* Grade of difficulty
*     Easy
* Related topics
*    Array
* @author Ramy
*/
import UIKit

class Solution {
     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
       for index in 0..<nums.count {
         let diff = target - nums[index]

         if dict.keys.contains(diff)  {
            return [dict[diff]!,index]
         } else {
            dict[nums[index]] = index
         }
       }
       return []
    }
}
