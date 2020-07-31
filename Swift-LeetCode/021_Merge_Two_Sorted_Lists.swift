//
//  021_Merge_Two_Sorted_Lists.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/26.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _021_Merge_Two_Sorted_Lists: NSObject {
//            - [ ] 直接迭代, 设置两个指针p1/p2分别对应两个链表, 然后较小的赋给dummy 的最后节点p的 next,  p1/p2指向自己的 next, p 也指向自己的 next, 然后 循环结束, 把剩下的直接接入 p 即可
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil && l2 != nil else {
            if l1 != nil  {
                return l1
            }
            return l2
        }
        
        let dummy = ListNode(0)
        
        var p = dummy
        var p1 = l1, p2 = l2
        while p1 != nil && p2 != nil {
            if p1!.val < p2!.val {
                p.next = p1
                p1 = p1?.next
            } else {
                p.next = p2
                p2 = p2?.next
            }
            p = p.next!
        }
        
        if p1 != nil {
            p.next = p1
        } else {
            p.next = p2
        }
        
        return dummy.next
    }
}
