//
//  098_Validate_Binary_Search_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _098_Validate_Binary_Search_Tree: NSObject {
    func isValidBST(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        var left = Int.min
        var stack: [(TreeNode, Bool)] = []
        stack.append((root, false))
        while !stack.isEmpty {
            let (node, visit) = stack.removeLast()
            if visit || (node.left == nil && node.right == nil) {
                if left >= node.val {
                    return false
                }
                left = node.val
                continue
            }
            if let right = node.right {
                stack.append((right, false))
            }
            stack.append((node, true))
            if let left = node.left {
                stack.append((left, false))
            }
        }
        return true
    }
//    func traversal(_ root: TreeNode?, _ left: Int, _ right: Int) -> Bool {
//        guard let root = root else { return true }
//        return root.val > left && root.val < right && traversal(root.left, left, root.val) && traversal(root.right, root.val, right)
//    }
//    func isValidBST(_ root: TreeNode?) -> Bool {
//        return traversal(root, Int.min, Int.max)
//    }
}
