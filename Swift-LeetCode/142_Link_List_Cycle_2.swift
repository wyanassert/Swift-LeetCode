//
//  142_Link_List_Cycle_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/26.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _142_Link_List_Cycle_2: NSObject {
//    - [ ] 找链表的环, 还是快慢指针同时走
//    - [ ] 快指针走到跟慢指针相遇停止, 慢指针回头节点, 然后一起移动, 相遇时返回相遇的节点即可
    func detectCycle(_ head: ListNode?) -> ListNode? {
        guard let _ = head?.next else {
            return nil
        }
        
        var p1: ListNode? = head?.next
        var p2: ListNode? = head?.next?.next
        
        var result = false
        
        while p1 != nil && p2 != nil {
            if p1 === p2 {
               result = true
                break
            }
            p1 = p1?.next
            p2 = p2?.next?.next
        }
        
        if result {
            p2 = head
            
            while p1 !== p2 && p1 != nil && p2 != nil {
                p1 = p1?.next
                p2 = p2?.next
            }
            
            return p1
        } else {
            return nil
        }
    }
}
