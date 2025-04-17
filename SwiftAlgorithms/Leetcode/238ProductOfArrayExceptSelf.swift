//
//  238ProductOfArrayExceptSelf.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 11/04/25.
//

//MARK: - 238. Product of Array except self.
func productExceptSelf(_ nums: [Int]) -> [Int] {
    let product = nums.reduce(1, *)
    var result = Array(repeatElement(product, count: nums.count))
    for (index, value) in nums.enumerated() {
        if value == 0 {
            var nums = nums
            var newProduct = nums.remove(at: index)
            result[index] = nums.reduce(1, *)
        } else {
            result[index] = product / value
        }
    }
    return result
}
