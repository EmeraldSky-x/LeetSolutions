//
//  15_3Sum.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 10/04/25.
//

//MARK: - 167. Two Sum 2
func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var pointerOne = 0
    var pointerTwo = numbers.count - 1
    while pointerOne < pointerTwo {
        if numbers[pointerOne] + numbers[pointerTwo] == target {
            return [pointerOne + 1, pointerTwo + 1]
        } else if numbers[pointerOne] + numbers[pointerTwo] < target {
            pointerOne += 1
        } else {
            pointerTwo -= 1
        }
    }
    return []
}
