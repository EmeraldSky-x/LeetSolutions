//
//  16ThreeSumClosest.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 03/05/25.
//

//MARK: - 16. Three Sum Closest
func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    var result = target
    var minimum: Int = Int.max
    var pointerOne = 0
    let sortedNums = nums.sorted()
    while pointerOne <= sortedNums.count - 2 {
        var pointerTwo = pointerOne + 1
        var pointerThree = nums.count - 1
        while pointerTwo < pointerThree {
            let sum = sortedNums[pointerOne] + sortedNums[pointerTwo] + sortedNums[pointerThree]
            if sum == target {
                return sum
            }
            if sum > target {
                pointerThree -= 1
            } else {
                pointerTwo += 1
            }
            let difference = abs(sum - target)
            if difference < minimum {
                minimum = difference
                result = sum
            }
        }
        pointerOne += 1
    }
    return result
}
