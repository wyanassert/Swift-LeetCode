//
//  143_Reorder_List.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _143_Reorder_List: NSObject {
    func reorderList(_ head: ListNode?) {
        guard head != nil && head?.next != nil else {
            return
        }
        
        var slow = head
        var fast = head
        
        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        fast = slow?.next
        slow?.next = nil
        slow = head
        
        let dummy = ListNode(0)
        while fast != nil {
            let next = fast?.next
            fast?.next = dummy.next
            dummy.next = fast
            fast = next
        }
        
        fast = dummy.next
        
        while fast != nil {
            let nextA = slow?.next
            let nextB = fast?.next
            
            fast?.next = nextA
            slow?.next = fast
            
            fast = nextB
            slow = nextA
        }
        
        return
    }
}
