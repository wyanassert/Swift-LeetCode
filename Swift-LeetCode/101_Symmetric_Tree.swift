//
//  101_Symmetric_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _101_Symmetric_Tree: NSObject {
    
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        
        let nilNode = TreeNode(-1)
        var queue1 = [TreeNode]()
        var queue2 = [TreeNode]()
        
        if let leftNode = root.left {
            queue1.append(leftNode)
        } else {
            queue1.append(nilNode)
        }
        if let rightNode = root.right {
            queue2.append(rightNode)
        } else {
            queue2.append(nilNode)
        }
        while !queue1.isEmpty && !queue2.isEmpty {
            let left = queue1.removeFirst()
            let right = queue2.removeFirst()
            if left === nilNode && right === nilNode {
                continue
            }
            if left === nilNode || right === nilNode {
                return false
            }
            if left.val != right.val {
                return false
            }
            if let leftLeftNode = left.left {
                queue1.append(leftLeftNode)
            } else {
                queue1.append(nilNode)
            }
            if let leftRightNode = left.right {
                queue1.append(leftRightNode)
            } else {
                queue1.append(nilNode)
            }
            if let rightRightNode = right.right {
                queue2.append(rightRightNode)
            } else {
                queue2.append(nilNode)
            }
            if let rightLeftNode = right.left {
                queue2.append(rightLeftNode)
            } else {
                queue2.append(nilNode)
            }
        }
        
        return true
    }
    
    // 下面是递归解法, 上面换成非递归解法
//    func isMirror(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
//        if left == nil && right == nil {
//            return true
//        }
//        guard let left = left, let right = right else { return false }
//        return left.val == right.val && isMirror(left.left, right.right) && isMirror(left.right, right.left)
//    }
//
//    func isSymmetric(_ root: TreeNode?) -> Bool {
//        guard let root = root else { return true }
//
//        return isMirror(root.left, root.right)
//    }
}
