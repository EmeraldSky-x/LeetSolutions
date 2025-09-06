//
//  471PacificAtlanticWaterFlow.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 06/09/25.
//

import Foundation
//MARK: - 471. Pacific Atlantic Water Flow
//There is an m x n rectangular island that borders both the Pacific Ocean and Atlantic Ocean. The Pacific Ocean touches the island's left and top edges, and the Atlantic Ocean touches the island's right and bottom edges.
//
//The island is partitioned into a grid of square cells. You are given an m x n integer matrix heights where heights[r][c] represents the height above sea level of the cell at coordinate (r, c).
//
//The island receives a lot of rain, and the rain water can flow to neighboring cells directly north, south, east, and west if the neighboring cell's height is less than or equal to the current cell's height. Water can flow from any cell adjacent to an ocean into the ocean.
//
//Return a 2D list of grid coordinates result where result[i] = [ri, ci] denotes that rain water can flow from cell (ri, ci) to both the Pacific and Atlantic oceans.
func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
    struct Coordinates: Hashable {
        var x: Int
        var y: Int
    }
    var result: [[Int]] = []
    var columns = heights[0].count
    var rows = heights.count
    var pacific: Set<Coordinates> = .init()
    var atlantic: Set<Coordinates> = .init()
    
    func dfs(row: Int, column: Int, visited: inout Set<Coordinates>, previous: Coordinates) {
        if visited.contains(Coordinates(x: row, y: column)) || row < 0 || column < 0 || row == rows || column == columns { return }
        if heights[row][column] < heights[previous.x][previous.y] {
            return
        }
        visited.insert(Coordinates(x: row, y: column))
        dfs(row: row - 1, column: column, visited: &visited, previous: Coordinates(x: row, y: column)) // Go top
        dfs(row: row, column: column - 1, visited: &visited, previous: Coordinates(x: row, y: column)) // Go left
        dfs(row: row + 1, column: column, visited: &visited, previous: Coordinates(x: row, y: column)) // Go right
        dfs(row: row, column: column + 1, visited: &visited, previous: Coordinates(x: row, y: column)) // Go bottom
    }
    for c in 0..<columns {
        dfs(row: 0, column: c, visited: &pacific, previous: Coordinates(x: 0, y: c))
        dfs(row: rows - 1, column: c, visited: &atlantic, previous: Coordinates(x: rows - 1, y: c))
    }
    for r in 0..<rows {
        dfs(row: r, column: 0, visited: &pacific, previous: Coordinates(x: r, y: 0))
        dfs(row: r, column: columns - 1, visited: &atlantic, previous: Coordinates(x: r, y: columns - 1))
    }
    for coordinate in atlantic {
        if pacific.contains(coordinate) {
            result.append([coordinate.x, coordinate.y])
        }
    }
    for value in result {
        print(value)
    }
    return result
}
