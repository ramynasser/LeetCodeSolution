import UIKit

/**
* Problem
*     1290. Convert Binary Number in a Linked List to Integer
*     https://leetcode.com/problems/convert-binary-number-in-a-linked-list-to-integer/
* Grade of difficulty
*     easy
* @author Ramy
*/
public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
         var ans = 0
         var node: ListNode? = head
         while node != nil {
            ans = ans * 2 + node!.val
            node = node?.next
        }
        return ans
    }
    
}
