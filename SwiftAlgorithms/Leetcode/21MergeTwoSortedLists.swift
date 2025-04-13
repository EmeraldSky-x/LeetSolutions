//
//  21MergeTwoSortedLists.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 12/04/25.
//

//MARK: - 21. Merge two Sorted Lists
func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    guard let l1 = list1, let l2 = list2 else { return list1 ?? list2 }
    if l1.val < l2.val {
        l1.next = mergeTwoLists(l1.next, l2)
        return l1
    } else {
        l2.next = mergeTwoLists(l1, l2.next)
        return l2
    }
}
