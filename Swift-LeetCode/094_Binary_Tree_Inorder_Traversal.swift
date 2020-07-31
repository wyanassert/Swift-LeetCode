//
//  094_Binary_Tree_Inorder_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _094_Binary_Tree_Inorder_Traversal: NSObject {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        var results: [Int] = []
        
        var stack: [(TreeNode, Bool)] = []
        stack.append((root, false))
        
        while !stack.isEmpty {
            let (node, visit) = stack.removeLast()
            if visit || (node.left == nil && node.right == nil) {
                results.append(node.val)
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
        
        return results
    }
    
//    func traversal(_ root: TreeNode?, _ results: inout [Int]) {
//        guard let root = root else { return }
//
//        traversal(root.left, &results)
//        results.append(root.val)
//        traversal(root.right, &results)
//    }
//    func inorderTraversal(_ root: TreeNode?) -> [Int] {
//        guard let root = root else { return [] }
//        var results: [Int] = []
//        traversal(root, &results)
//        return results
//    }
}
