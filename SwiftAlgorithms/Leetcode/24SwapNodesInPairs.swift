//
//  24SwapNodesInPairs.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 18/04/25.
//

import Foundation
//MARK: - 24. Swap Nodes in Pairs
func swapPairs(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil { return head }
    var resultNode = head?.next
    head?.next = swapPairs(resultNode?.next)
    resultNode?.next = head
    return resultNode
}
