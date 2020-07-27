//
//  086_Partition_List.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _086_Partition_List: NSObject {
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        guard head != nil else {
            return head
        }
        
        let dummySmall = ListNode(0)
        let dummyLarge = ListNode(0)
        
        var p = head
        var pLarge = dummyLarge
        var pSmall = dummySmall
        
        while p != nil {
            let next = p?.next
            if p!.val >= x {
                pLarge.next = p
                pLarge = pLarge.next!
                pLarge.next = nil
            } else {
                pSmall.next = p
                pSmall = pSmall.next!
                pSmall.next = nil
            }
            p = next
        }
        
        pSmall.next = dummyLarge.next
        
        return dummySmall.next
    }
}
