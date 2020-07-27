//
//  138_Copy_List_with_Random_Pointer.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _138_Copy_List_with_Random_Pointer: NSObject {
//  简单写一个测试用例
    func createTest() -> Node3 {
        let node0 = Node3(7)
        let node1 = Node3(13)
        let node2 = Node3(11)
        let node3 = Node3(10)
        let node4 = Node3(1)
        
        node0.next = node1
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = nil
        
        node0.random = nil
        node1.random = node0
        node2.random = nil
        node3.random = node2
        node4.random = node0
        
        return node0
    }
    
//  提交的时候要把 Node3 改成 Node
    func copyRandomList(_ head: Node3?) -> Node3? {
        guard head != nil else {
            return head
        }
        
        var p = head
        while p != nil {
            let next = p?.next
            let addNode = Node3.init(p!.val)
            addNode.random = p?.random
            p?.next = addNode
            addNode.next = next
            p = next
        }
        
        p = head?.next
        while p != nil {
            p?.random = p?.random?.next
            p = p?.next?.next
        }
        
        let dummyOrigin = Node3(0)
        let dummyResult = Node3(0)
        
        var pointOrigin: Node3? = dummyOrigin
        var pointResult: Node3? = dummyResult
        
        p = head
        while p != nil {
            let next = p?.next?.next
            
            pointOrigin?.next = p
            pointOrigin = pointOrigin?.next
            pointResult?.next = p?.next
            pointResult = pointResult?.next
            
            p = next
        }
        
        pointOrigin?.next = nil
        pointResult?.next = nil
        
        return dummyResult.next
    }
}
