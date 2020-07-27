//
//  092_Reverse_Linked_List.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _092_Reverse_Linked_List: NSObject {
    func reverseBetween(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        guard head != nil && m <= n else {
            return head
        }
        
        let dummy: ListNode = ListNode(0)
        dummy.next = head
        
        var p = dummy
        for _ in 1..<m {
            p = p.next!
        }
        let pm = p.next
        for _ in m..<n {
            let next = pm!.next
            pm!.next = next!.next
            next!.next = p.next
            p.next = next
        }
        return dummy.next
    }
}
