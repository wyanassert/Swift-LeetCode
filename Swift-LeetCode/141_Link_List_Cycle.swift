//
//  141_Link_List_Cycle.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/26.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _141_Link_List_Cycle: NSObject {
    func hasCycle(_ head: ListNode?) -> Bool {
        guard let _ = head?.next else {
            return false
        }
        
        var p1: ListNode? = head?.next
        var p2: ListNode? = head?.next?.next
        
        while p1 != nil && p2 != nil {
            if p1 === p2 {
                return true
            }
            p1 = p1?.next
            p2 = p2?.next?.next
        }
        
        return false
    }
}
