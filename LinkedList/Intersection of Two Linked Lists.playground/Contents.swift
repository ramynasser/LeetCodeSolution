/**
* Problem
*    160. Intersection of Two Linked Lists
*    https://leetcode.com/problems/odd-even-linked-list/
* Grade of difficulty
*     Easy
* @author Ramy
*/
import UIKit
public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
         self.next = nil
      }
  }
 

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil {
            return nil
        }

       var first = headA
       var second = headB
        while first !== second && first?.next !== second?.next {
            first = first?.next ?? headB
            second = second?.next ?? headA
        }
        
        return first === second ? first : first?.next
        
    }
}
