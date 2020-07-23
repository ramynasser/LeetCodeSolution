import UIKit
/**
* Problem
*     145. Binary Tree Postorder Traversal
*     https://leetcode.com/problems/binary-tree-postorder-traversal/
* Grade of difficulty
*     Hard
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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
         if root == nil {
              return []
         }
      var result: [Int] = []
      result += postorderTraversal(root?.left)
      result += postorderTraversal(root?.right)
      result.append(root!.val)
      return result
    }
}
