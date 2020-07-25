/**
* Problem
*     328. Odd Even Linked List
*    https://leetcode.com/problems/odd-even-linked-list/
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
   func oddEvenList(_ head: ListNode?) -> ListNode? {
       if head == nil { return nil }
        if head?.next == nil { return head }

        var oddNode = head
        var evenNode = head?.next
        let evenHead = evenNode
        
        while evenNode?.next != nil {
            oddNode?.next = oddNode?.next?.next
            evenNode?.next = evenNode?.next?.next
            
            oddNode = oddNode?.next
            evenNode = evenNode?.next
        }
        
        // Linking even node at the end of odd node
        oddNode?.next = evenHead
        
        return head
  }
}

