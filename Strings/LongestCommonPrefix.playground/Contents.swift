import UIKit
/**
* Problem
*     14. Longest Common Prefix
*     https://leetcode.com/problems/longest-common-prefix/
* Grade of difficulty
*     Easy
* Related topics
    Strings
* @author Ramy
*/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty  else {
            return ""
        }
        
        guard strs.count != 1 else {
            return strs.first!
        }
        
        let sorted = strs.sorted()
        var result = [Character]()
        let firstElement = sorted.first ?? ""
        let lastElement = sorted.last ?? ""
        
        for (i,ch) in firstElement.enumerated()  where i < lastElement.count {
            if ch == Array(lastElement)[i] {
                result.append(ch)
            } else {
                break
            }
        }
        
        return String(result)
    }
}
