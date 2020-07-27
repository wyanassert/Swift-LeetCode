//
//  002_add_two_number.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/26.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa


class _002_add_two_number: NSObject {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy:ListNode = ListNode(0)
        var curr:ListNode = dummy
        var tmpNode1 : ListNode? = l1
        var tmpNode2 : ListNode? = l2
        
        var sum:Int = 0
        while tmpNode1 != nil || tmpNode2 != nil {
            var res:Int = sum
            if let n = tmpNode1 {
                res += n.val
                tmpNode1 = n.next
            }
            
            if let n = tmpNode2 {
                res += n.val
                tmpNode2 = n.next
            }
            
            sum = res / 10
            res = res % 10
            
            curr.next = ListNode(res)
            
            if let n = curr.next {
                curr = n
            }
        }
        
        if(sum == 1) {
            curr.next = ListNode(1)
        }
        return dummy.next;
    }
}
