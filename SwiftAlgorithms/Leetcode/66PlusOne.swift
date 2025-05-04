//
//  66PlusOne.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 04/05/25.
//

import Foundation
//MARK: - 66. Plus One
func plusOne(_ digits: [Int]) -> [Int] {
    var result: [Int] = []
    var reminder: Int = 0
    for i in stride(from: digits.endIndex, to: 0, by: -1) {
        var sum: Int = 0
        if i == digits.endIndex {
            sum = digits[i - 1] + 1
        } else {
            sum = digits[i - 1] + reminder
        }
        if sum > 9 {
            reminder = sum / 10
            let value = sum % 10
            result.insert(value, at: 0)
        } else {
            reminder = 0
            result.insert(sum, at: 0)
        }
    }
    if reminder > 0 {
        result.insert(reminder, at: 0)
    }
    return result
}
