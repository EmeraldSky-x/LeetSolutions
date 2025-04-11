//
//  26RemoveDuplicates.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 11/04/25.
//

//MARK: - 26, Remove Duplicates
func removeDuplicates(_ nums: inout [Int]) -> Int {
    var duplicatesMap: [Int: Bool] = [:]
    var swapPointer: Int = -1
    for i in 0..<nums.count {
        let currentValue = nums[i]
        if duplicatesMap[currentValue] == nil {
            duplicatesMap[currentValue] = true
            if swapPointer != -1 {
                nums[swapPointer] = currentValue
                swapPointer += 1
            }
        } else {
            if swapPointer == -1 {
                swapPointer = i
                continue
            }
            
        }
    }
    if swapPointer != -1 {
        nums.removeSubrange(swapPointer..<nums.count)
        return swapPointer + 1
    } else {
        return nums.count
    }
}
