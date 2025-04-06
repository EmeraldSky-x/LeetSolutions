//
//  PathSum2.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 07/04/25.
//

//MARK: - 113. Path Sum 2
func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
    var resultPaths: [[Int]] = []
    guard let root = root else { return [] }
    func dfs(node: TreeNode?, targetSum: Int, currentSum: Int, currentPath: [Int]) {
        guard let node = node else { return }
        var newPath = currentPath
        newPath.append(node.val)
        let newCurrentSum = currentSum + node.val
        if node.left == nil && node.right == nil {
            if newCurrentSum == targetSum {
                resultPaths.append(newPath)
            }
        }
        dfs(node: node.left, targetSum: targetSum, currentSum: newCurrentSum, currentPath: newPath)
        dfs(node: node.right, targetSum: targetSum, currentSum: newCurrentSum, currentPath: newPath)
    }
    dfs(node: root, targetSum: targetSum, currentSum: 0, currentPath: [])
    return resultPaths
}
