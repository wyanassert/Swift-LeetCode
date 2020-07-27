//
//  061_Rotate_List.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _061_Rotate_List: NSObject {
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard head != nil && head?.next != nil else {
            return head
        }
        
        let dummy = ListNode(0)
        var count = 0
        
        dummy.next = head
        var lookup: ListNode? = dummy
        while lookup?.next != nil {
            count += 1
            lookup = lookup?.next
        }
        
        let leftCount = count - ( k % count)
        
        var lookup2:ListNode? = dummy
        for _ in 0..<leftCount {
            lookup2 = lookup2?.next
        }
        
        dummy.next = lookup2?.next
        lookup2?.next = nil
        lookup?.next = head
        
        return dummy.next
    }
}
