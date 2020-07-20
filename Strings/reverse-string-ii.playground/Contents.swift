/**
* Problem
*     541. Reverse String II
*     https://leetcode.com/problems/reverse-string-ii
*     https://leetcode.com/problems/reverse-string-ii
* Grade of difficulty
*     easy
* @author Ramy
* Runtime: 56 ms, faster than 77.78% of Swift online submissions for Reverse String II.
* Memory Usage: 21.3 MB, less than 80.00% of Swift online submissions for Reverse String II.
*/


import Foundation
class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
    var chars = Array(s)
    let end = 2*k
   for start in stride(from: 0, to: chars.count, by: end) {
     var i:Int = start
     var j: Int = min(start + k - 1, chars.count - 1)
    while (i < j) {
         var tmp = chars[i]
         chars[i] = chars[j]
         i = i+1
         chars[j] = tmp
         j = j-1
        }
    }
   return String(chars)
 }
}

