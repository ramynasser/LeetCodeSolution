

/**
* Problem
*     1315. Sum of Nodes with Even-Valued Grandparent
*     https://leetcode.com/problems/sum-of-nodes-with-even-valued-grandparent/
* Grade of difficulty
*     Medium
* Related topics
*    Array
* @author Ramy
*/

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func sumEvenGrandparent(_ root: TreeNode?) -> Int {
      return travse(root: root, parent: nil, grandParent: nil)
    }
    func travse(root: TreeNode?, parent: TreeNode?, grandParent: TreeNode?)->Int {
             var sum = 0

          if root == nil {
                  return 0
             }
     if(grandParent != nil && grandParent!.val % 2 == 0) {
             sum += root!.val
        }
         sum += travse(root: root!.left, parent: root, grandParent: parent)
         sum += travse(root: root!.right, parent: root, grandParent: parent)
         return sum
      }
}

