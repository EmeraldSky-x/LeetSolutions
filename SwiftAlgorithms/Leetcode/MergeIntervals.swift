//
//  MergeIntervals.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 06/04/25.
//

//MARK: - 56. Merge Intervals
func merge(_ intervals: [[Int]]) -> [[Int]] {
    if intervals.isEmpty { return [] }
    let sortedIntervals = intervals.sorted(by: { $0[0] < $1[0]})
    var result = [sortedIntervals.first!]
    for i in 1..<sortedIntervals.count {
        if sortedIntervals[i][0] <= result.last![1] {
            result[result.count - 1][1] = max(sortedIntervals[i][1], result[result.count - 1][1])
        } else {
            result.append(sortedIntervals[i])
        }
    }
    return result
}
