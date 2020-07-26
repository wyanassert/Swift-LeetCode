//
//  160_Intersection_of_Two_Linked_Lists.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/26.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _160_Intersection_of_Two_Linked_Lists: NSObject {
//  这一题使用回溯:getIntersectionNode(headA.next, headB)||getIntersectionNode(headA, headB.next), 时间复杂度是 O(n^2) 与要求的 O(n)不符合, 所以有个取巧, 把 a 的最后一个节点 next 接到 b 的第一个节点, 然后就可以直接使用142 题(142_Link_List_Cycle_2)的解法
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        guard headA != nil && headB != nil else {
            return nil
        }
        
        var p1 = headA
        while p1?.next != nil {
            p1 = p1?.next
        }
        p1?.next = headB
        
        let aLast = p1
        p1 = headA?.next
        var p2 = headA?.next?.next
        
        var result = false
        while p1 != nil && p2 != nil {
            if p1 === p2 {
                result = true
                break
            }
            p1 = p1?.next
            p2 = p2?.next?.next
        }
        
        if result {
            p2 = headA
            while p1 !== p2 {
                p1 = p1?.next
                p2 = p2?.next
            }
            aLast?.next = nil //还原结构
            return p1
        } else {
            aLast?.next = nil
            return nil
        }
    }
}
