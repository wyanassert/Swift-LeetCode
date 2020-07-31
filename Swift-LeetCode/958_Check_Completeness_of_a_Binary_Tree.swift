//
//  958_Check_Completeness_of_a_Binary_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _958_Check_Completeness_of_a_Binary_Tree: NSObject {
//            - [ ] 层序遍历, 在遇到子节点为空后 不该在遇到有子节点的节点
    func isCompleteTree(_ root: TreeNode?) -> Bool {
        var queue: [TreeNode?] = []
        queue.append(root)
        while let curr = queue.popLast() , curr != nil {
            queue.insert(curr?.left, at: 0)
            queue.insert(curr?.right, at: 0)
        }
        return queue.filter { $0 != nil }.count == 0
    }
//    func isCompleteTree(_ root: TreeNode?) -> Bool {
//        guard let root = root else {
//            return false
//        }
//        var nullBegin = false
//
//        var queue: [TreeNode] = []
//        queue.append(root)
//
//        while !queue.isEmpty {
//            let node = queue.removeFirst()
//            if node.left == nil {
//                nullBegin = true
//            } else {
//                if nullBegin {
//                    return false
//                } else {
//                    queue.append(node.left!)
//                }
//            }
//            if node.right == nil {
//                nullBegin = true
//            } else {
//                if nullBegin {
//                    return false
//                } else {
//                    queue.append(node.right!)
//                }
//            }
//        }
//
//        return true
//    }
}
