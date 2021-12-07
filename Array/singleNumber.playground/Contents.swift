/**
* Problem
*     136. Single Number.
*    https://leetcode.com/problems/single-number/submissions/
* Grade of difficulty
*     easy
* Related topics
* @author Ramy
*/

import UIKit

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dictionary: [Int: Int] = [:]
        for num in nums {
            if dictionary[num] == nil {
                dictionary[num] = 1
            } else {
                dictionary[num]! += 1
            }
        }
        
        let filteredValue = dictionary.first {$0.value == 1 }
        return filteredValue?.key ?? 0
    }
}
