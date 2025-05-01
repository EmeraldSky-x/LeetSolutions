//
//  26RemoveDuplicates.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 11/04/25.
//

//MARK: - 26, Remove Duplicates
func removeDuplicates(_ nums: inout [Int]) -> Int {
    var previousValue: Int?
    var index = 0
    while index < nums.count {
        let value = nums[index]
        guard let _ = previousValue else {
            previousValue = value
            index += 1
            continue
        }
        let currentValue = nums[index]
        if currentValue == previousValue {
            nums.remove(at: index)
        } else {
            index += 1
            previousValue = currentValue
        }
    }
    return index
}
