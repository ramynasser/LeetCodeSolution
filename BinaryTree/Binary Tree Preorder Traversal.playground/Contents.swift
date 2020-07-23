import UIKit
/**
* Problem
*     144. Binary Tree Preorder Traversal
*     https://leetcode.com/problems/binary-tree-preorder-traversal/
* Grade of difficulty
*     Medium
* Related topics
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
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
         if root == nil {
              return []
         }
      var result: [Int] = []
      result.append(root!.val)
      result += preorderTraversal(root?.left)
      result += preorderTraversal(root?.right)
      return result
    }
}
