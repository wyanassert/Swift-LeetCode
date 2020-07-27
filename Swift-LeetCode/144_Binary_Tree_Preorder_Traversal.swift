//
//  144_Binary_Tree_Preorder_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _144_Binary_Tree_Preorder_Traversal: NSObject {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }
        
        var result: [Int] = []
        var stack: [TreeNode] = []
        stack.append(root)
        
        while !stack.isEmpty {
            let last = stack.removeLast()
            result.append(last.val)
            if let right = last.right {
                stack.append(right)
            }
            if let left = last.left {
                stack.append(left)
            }
        }
        return result
    }
    
//    func traversal(_ root: TreeNode?, _ results: inout [Int]) {
//        guard let root = root else { return }
//
//        results.append(root.val)
//        traversal(root.left, &results)
//        traversal(root.right, &results)
//    }
//
//    func preorderTraversal(_ root: TreeNode?) -> [Int] {
//        guard let root = root else { return [] }
//        var results: [Int] = []
//        traversal(root, &results)
//        return results
//    }
}
