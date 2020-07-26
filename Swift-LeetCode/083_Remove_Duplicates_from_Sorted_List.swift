//
//  083_Remove_Duplicates_from_Sorted_List.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/26.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _083_Remove_Duplicates_from_Sorted_List: NSObject {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard head?.next != nil else {
            return head
        }
        
        var p1 = head
        var p2 = head?.next
        
        while p1?.next != nil {
            if p1?.val == p2?.val {
                p1?.next = p2?.next
                p2 = p2?.next
            } else {
                p1 = p2
                p2 = p1?.next
            }
        }
        return head
    }
}
