//
//  025_Reverse_Nodes_in_k_Group.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _025_Reverse_Nodes_in_k_Group: NSObject {
//            - [ ] 设置两个指针, 一个start在 0, 一个end走到下一个 k 的位置,  用一个函数翻转 start 到 k 之间的指针, 并返回最后一个节点,  函数返回后 然后前一个节点的 next 指向最后一个节点即可
    func reverseBetween(_ start: ListNode?, _ end: ListNode?) {
        let p = start
        var flag = start
        repeat {
            let next = p?.next
            let stop = next === end
            p?.next = next?.next
            next?.next = flag
            flag = next
            if stop {
                break
            }
        } while p?.next != nil
    }
    
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        
        guard k > 1 && head != nil else {
            return head
        }
        
        var count = 0
        let dummy = ListNode(0)
        dummy.next = head
        
        var p = dummy.next
        var pre: ListNode? = dummy
        while p != nil {
            count += 1
            if count == k {
                count = 0
                let end = p
                let nextPre = pre?.next
                reverseBetween(pre?.next, end)
                pre?.next = end
                pre = nextPre
                p = pre?.next
            } else {
                p = p?.next
            }
        }
        
        return dummy.next
    }
}
