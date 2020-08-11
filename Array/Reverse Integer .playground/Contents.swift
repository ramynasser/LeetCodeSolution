/**
* Problem
*     7. Reverse Integer
*    https://leetcode.com/problems/reverse-integer/
* Grade of difficulty
*     easy
* Related topics
* @author Ramy
*/

class Solution {
   func reverse(_ x: Int) -> Int {
        var answer = 0
    
        var value = x
        while value != 0 {
            let pop = value % 10
            value /= 10
        
            if answer > Int32.max / 10 || (answer == Int32.max / 10 && pop > 7) {
                return 0
            }
            if answer < Int32.min / 10 || (answer == Int32.max / 10 && pop < -8) {
                return 0
            }
            answer = answer * 10 + pop;
        }
    
        return answer
    }
}
