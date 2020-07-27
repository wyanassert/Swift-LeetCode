//
//  147_Insertion_Sort_List.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _147_Insertion_Sort_List: NSObject {
    func insertionSortList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        
        let dummy = ListNode(0)
        var cur: ListNode? = head
        var pre: ListNode? = dummy
        var next: ListNode? = nil
        
        while cur != nil {
            next = cur?.next
            while pre?.next != nil && pre!.next!.val < cur!.val {
                pre = pre?.next
            }
            cur?.next = pre?.next
            pre?.next = cur
            pre = dummy
            cur = next
        }
        
        return dummy.next
    }
}
