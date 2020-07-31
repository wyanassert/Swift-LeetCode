//
//  145_Binary_Tree_Inorder_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _145_Binary_Tree_Inorder_Traversal: NSObject {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }
        
        var result: [Int] = []
        var stack: [(TreeNode, Bool)] = []
        stack.append((root, false))
        
        while !stack.isEmpty {
            let (last, visit) = stack.removeLast()
            
            if visit || last.left == nil && last.right == nil {
                result.append(last.val)
                continue
            }
            
            stack.append((last, true))
            if let right = last.right {
                stack.append((right, false))
            }
            if let left = last.left {
                stack.append((left, false))
            }
        }
        return result
    }
//    func traversal(_ root: TreeNode?, _ results: inout [Int]) {
//        guard let root = root else { return }
//
//        traversal(root.left, &results)
//        traversal(root.right, &results)
//        results.append(root.val)
//    }
//
//    func postorderTraversal(_ root: TreeNode?) -> [Int] {
//        guard let root = root else { return [] }
//        var results: [Int] = []
//        traversal(root, &results)
//        return results
//    }
}
