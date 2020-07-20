/**
* Problem
*     49.Group Anagrams
*     https://leetcode.com/problems/group-anagrams/
*     https://leetcode.com/problems/group-anagrams/
* Grade of difficulty
*     Medium
* Related topics
* @author Ramy
*/
import Foundation
class Solution {
 func groupAnagrams(_ strs: [String]) -> [[String]] {
    var tableData = [String: Int]()
    var results = [[String]]()
    
    for str in strs {
        let arr = Array(str)
        
        let sortedString = String(arr.sorted())
        if let id = tableData[sortedString] {
            results[id].append(str)
        } else {
            results.append([str])
            tableData[sortedString] = results.count-1
        }
    }
    
    return results
}

}

