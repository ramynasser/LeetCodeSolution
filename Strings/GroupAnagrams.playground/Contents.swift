
import Foundation
func findDuplicates(_ nums: [Int]) -> [Int] {
    var emptyIntSet:Set = Set<Int>()
    var result:[Int] = []
    for num in  nums {
       if(nums[num - 1] > 0){
            nums[num - 1] *= -1
        } else{
            res.add(Math.abs(num));
        }
    }
    
    return result
}
let a = findDuplicates([4,3,2,7,8,2,3,1])
print(a)
