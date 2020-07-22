//
//  094_Binary_Tree_Inorder_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _094_Binary_Tree_Inorder_Traversal: NSObject {
    func traversal(_ root: TreeNode?, _ results: inout [Int]) {
        guard let root = root else { return }
        
        traversal(root.left, &results)
        results.append(root.val)
        traversal(root.right, &results)
    }
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var results: [Int] = []
        traversal(root, &results)
        return results
    }
}
