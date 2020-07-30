//
//  206_Reverse_Linked_List.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/30.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _206_Reverse_Linked_List: NSObject {
//  递归解题, 需要用户递归栈保存当前的节点直接去下一个, 等到了终点再返回, 返回后再上一层依次断开即可,用递归法会使用更多的内存
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let cur = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return cur
    }
    
//  迭代法解题, 设置 pre 指针, 和 cur 指针, pre 指向结果的最后一个节点, pre 指向 head 链表的第一个
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        var pre: ListNode? = nil
//        var cur = head
//        while cur != nil {
//            let tmp = cur?.next
//            cur?.next = pre
//            pre = cur
//            cur = tmp
//        }
//        return pre
//    }
}
