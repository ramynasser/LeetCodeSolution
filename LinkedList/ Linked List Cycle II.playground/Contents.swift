
/**
* Problem
*     142. Linked List Cycle II
*    https://leetcode.com/problems/linked-list-cycle-ii/
* Grade of difficulty
*     Medium
* @author Ramy
*/

import UIKit
// * Definition for singly-linked list.
public class ListNode {
     public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
 }
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

    


