//
//  35SearchInsertPosition.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 03/05/25.
//

//MARK: - 35. Search Insert Position
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    for i in 0..<nums.count {
        if nums[i] >= target {
            return i
        }
    }
    return nums.count
}
