//
//  024_Swap_Nodes_in_Pairs.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _024_Swap_Nodes_in_Pairs: NSObject {
//  直接调用 25 题的答案, call anwser of problem (25. Reverse Nodes in k-Group)
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
    
    func swapPairs(_ head: ListNode?) -> ListNode? {
        return reverseKGroup(head, 2)
    }
}
