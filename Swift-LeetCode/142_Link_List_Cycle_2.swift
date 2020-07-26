//
//  142_Link_List_Cycle_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/26.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _142_Link_List_Cycle_2: NSObject {
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
