//
//  082_Remove_Duplicates_from_Sorted_List_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/26.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _082_Remove_Duplicates_from_Sorted_List_2: NSObject {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        let dummy = ListNode(0)
        dummy.next = head
        var pre: ListNode? = dummy
        var cur: ListNode? = head
        
        while cur?.next != nil {
            if cur?.val != cur?.next?.val {
                pre = cur
                cur = cur?.next
            } else {
                var tmp = cur
                let val = cur?.val
                while tmp?.val == val {
                    tmp = tmp?.next
                }
                pre?.next = tmp
                cur = tmp
            }
        }
        
        return dummy.next
    }
}
