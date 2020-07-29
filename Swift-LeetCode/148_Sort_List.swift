//
//  148_Sort_List.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _148_Sort_List: NSObject {
//    - [ ] 要求 O(n log n) 时间, 因此不能直接遍历然后插入, 这种方法最差是 O(n^2)时间
//    - [ ] 用二分法来做,  利用快慢指针从中断开, 然后递归继续断, 最后两两归并
//    - [ ] 归并使用双指针, 逐一往后移动, 先把较小的节点合并个Dummy, 返回 Dummy.next
    func merge(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard l1 != nil && l2 != nil else {
            if l1 == nil {
                return l2
            } else {
                return l1
            }
        }
        
        let dummy: ListNode = ListNode(0)
        var p: ListNode? = dummy
        
        var p1 = l1, p2 = l2
        while p1 != nil && p2 != nil {
            if p1!.val < p2!.val {
                p?.next = p1
                p = p?.next
                p1 = p1?.next
            } else {
                p?.next = p2
                p = p?.next
                p2 = p2?.next
            }
        }
        if p1 == nil {
            p?.next = p2
        } else {
            p?.next = p1
        }
        
        return dummy.next
    }
    
    func sortList(_ head: ListNode?) -> ListNode? {
        guard head != nil && head?.next != nil else {
            return head
        }
        
        var slow = head
        var fast = head
        
        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        fast = slow?.next
        slow?.next = nil
        
        let left = sortList(head)
        let right = sortList(fast)
        
        return merge(left, right)
    }
}
