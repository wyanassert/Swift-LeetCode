//
//  116_Populating_Next_Right_Pointers_in_Each_Node.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _116_Populating_Next_Right_Pointers_in_Each_Node: NSObject {
    func connect(_ root: Node?) -> Node? {
        guard let root = root else { return nil }
        
        var tmp: Node? = root
        var first: Node?
        while tmp != nil {
            if first == nil {
                first = tmp?.left //prepare to next level
            }
            if let left = tmp?.left {
                left.next = tmp?.right
            } else {
                break //end
            }
            if let next = tmp?.next, let right = tmp?.right {
                right.next = next.left
                tmp = next
                continue //to next point in the same level
            } else {
                tmp = first //go to next level
                first = nil
            }
        }
        return root
    }
    //递归解法
//    func traversal(_ root: Node?) {
//        guard let root = root else { return }
//
//        guard let left = root.left, let right = root.right else { return }
//
//        left.next = right
//        if let next = root.next {
//            right.next = next.left
//        }
//        traversal(root.left)
//        traversal(root.right)
//    }
//
//    func connect(_ root: Node?) -> Node? {
//        guard let root = root else { return nil }
//
//        traversal(root)
//
//        return root
//    }
}
