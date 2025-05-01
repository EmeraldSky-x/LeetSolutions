//
//  27RemoveElement.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 01/05/25.
//

import Foundation
//MARK: - 26. Remove Element
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var index: Int = 0
    while index < nums.count {
        if nums[index] == val {
            nums.remove(at: index)
        } else {
            index += 1
        }
    }
    return index
}
