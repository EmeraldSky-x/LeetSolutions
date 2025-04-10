//
//  15ThreeSum.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 10/04/25.
//

//MARK: - 15. Three Sum
func threeSum(_ nums: [Int]) -> [[Int]] {
    var result: Set<[Int]> = .init()
    let sortedNumbers = nums.sorted()
    var pointerOne = 0
    while pointerOne < sortedNumbers.count - 2 {
        var pointerTwo = pointerOne + 1
        var pointerThree = sortedNumbers.count - 1
        if sortedNumbers[pointerOne] > 0 {
            return Array(result)
        }
        while pointerTwo < pointerThree {
            
            let sum = sortedNumbers[pointerOne] + sortedNumbers[pointerTwo] + sortedNumbers[pointerThree]
            if sum == 0 {
                result.insert([sortedNumbers[pointerOne], sortedNumbers[pointerTwo], sortedNumbers[pointerThree]])
            }
            if sum < 0 {
                pointerTwo += 1
            } else {
                pointerThree -= 1
            }
        }
        pointerOne += 1
    }
    return Array(result)
}
