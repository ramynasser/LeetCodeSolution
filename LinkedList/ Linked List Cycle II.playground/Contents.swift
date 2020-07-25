import UIKit

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
    func detectCycle(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return nil
        }
        
        var slow = head
        var fast = head
        var cycle = head
        
        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow === fast {
                while !(slow === cycle) {
                    slow = slow?.next
                    cycle = cycle?.next
                }
                return cycle
            }
        }
        
        return nil
    }
 }

    


