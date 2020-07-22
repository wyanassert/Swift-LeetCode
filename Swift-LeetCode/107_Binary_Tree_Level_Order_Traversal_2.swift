//
//  107_Binary_Tree_Level_Order_Traversal_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _107_Binary_Tree_Level_Order_Traversal_2: NSObject {
    func traversal(_ root: TreeNode?, _ results: inout [[Int]], _ level: Int) {
        guard let root = root else { return }
        
        traversal(root.left, &results, level - 1)
        results[level].append(root.val)
        traversal(root.right, &results, level - 1)
    }
    
    func height(_ r: TreeNode?) -> Int {
        return r != nil ? 1 + max(height(r?.left), height(r?.right)) : 0
    }
    
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        
        let h = height(root)
        var results: [[Int]] = Array(repeating: [Int](), count: h)
        traversal(root, &results, h - 1)
        return results
    }
}
