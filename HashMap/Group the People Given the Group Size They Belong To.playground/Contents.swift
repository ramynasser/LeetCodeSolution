/**
* Problem
*     1282. Group the People Given the Group Size They Belong To
*     https://leetcode.com/problems/group-the-people-given-the-group-size-they-belong-to/
* Grade of difficulty
*     Medium
* Related topics
* @author Ramy
*/

import UIKit
func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
    var dict = [Int:[Int]]()
    var persons: [[Int]] = []

    for index in 0..<groupSizes.count {
        if dict.keys.contains(groupSizes[index]) {
            dict[groupSizes[index]]?.append(index)
        } else {
            dict[groupSizes[index]] = [index]
        }
        
        
        if dict[groupSizes[index]]?.count == groupSizes[index] { // reach to the
            persons.append(dict[groupSizes[index]] ?? [])
            dict.removeValue(forKey: groupSizes[index])
        }
    }
    
    return persons
}
