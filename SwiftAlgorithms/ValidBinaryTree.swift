//
//  ValidBinaryTree.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 06/04/25.
//

//MARK: - 98. Valid Binary Search Tree
func isValidBST(_ root: TreeNode?) -> Bool {
    func dfs(_ node: TreeNode?, min: Int?, max: Int?) -> Bool {
    if let node = node {
        if let min = min, min >= node.val {
            return false
        } else if let max = max, max <= node.val {
            return false
        } else {
            return dfs(node.left, min: min, max: node.val) && dfs(node.right, min: node.val, max: max)
        }
    } else {
        return true
    }
}
    return dfs(root, min: .min, max: .max)
    }
