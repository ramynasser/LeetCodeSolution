
/**
* Problem
*     287. Find the Duplicate Number
*    https://leetcode.com/problems/find-the-duplicate-number/
* Grade of difficulty
*     Medium
* @author Ramy
*/


import UIKit

class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var tableData = [Int:Int]()
        for num in nums {
            if tableData.keys.contains(num) {
                return num
            }else {
                tableData[num] = 1
            }
        }
        return 0
    }
}
