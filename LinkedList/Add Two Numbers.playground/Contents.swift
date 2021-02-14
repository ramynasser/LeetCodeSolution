/**
* Problem
*     2. Add Two Numbers
*    https://leetcode.com/problems/add-two-numbers/
* Grade of difficulty
*     Medium
* @author Ramy
*/

import UIKit
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

class Solution {
   func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var result: ListNode?
        var curRes: ListNode?
        var temp1 = l1
        var temp2 = l2

        while temp1 != nil || temp2 != nil {
            var sum = (temp1?.val ?? 0) + (temp2?.val ?? 0) + carry

            carry = sum / 10
            sum = sum % 10
            let newNode = ListNode(sum)

            if result == nil {
                result = newNode
                curRes = result
            } else {
                curRes!.next = newNode
                curRes = curRes?.next
            }
            
            temp1 = temp1?.next
            temp2 = temp2?.next
        }
    
    if carry != 0 {
        curRes?.next = ListNode(carry)
    }

        return result
    }
}
