//
//  25ReverseNodesInKGroups.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 24/04/25.
//

import Foundation
//MARK: - 25. Reverse nodes in k groups
//func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
//    
//}
func groupKNodes(k: Int, list: ListNode?) -> (head: ListNode?, tail: ListNode?, nextListHead: ListNode?) {
    guard k > 0, let head = list else { return (list, nil, list?.next) }
    let tempNode = head.next
    var nextListHead: ListNode?
    let chopped = groupKNodes(k: k - 1, list: tempNode)
    nextListHead = chopped.tail?.next
    head.next = chopped.head
    chopped.tail?.next = nil
    return (head, chopped.tail, nextListHead)
}
func reverseList(_ head: ListNode?) -> ListNode? {
    guard let head = head, head.next != nil else { return head }
    let reversedList = reverseList(head.next)
    head.next?.next = head
    head.next = nil
    return reversedList
}

