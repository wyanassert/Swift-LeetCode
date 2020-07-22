//
//  103_Binary_Tree_Zigzag_Level_Order_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _103_Binary_Tree_Zigzag_Level_Order_Traversal: NSObject {
    
    func traversal(_ root: TreeNode?, _ results: inout [[Int]], _ level: Int) {
        guard let root = root else { return }
        if level >= results.count {
            results.append([Int]())
        }
        traversal(root.left, &results, level + 1)
        if level % 2 == 0 {
            results[level].append(root.val)
        } else {
            results[level].insert(root.val, at: 0)
        }
        traversal(root.right, &results, level + 1)
    }
    
    func height(_ r: TreeNode?) -> Int {
        return r != nil ? 1 + max(height(r?.left), height(r?.right)) : 0
    }
    
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        
        var results: [[Int]] = []
        traversal(root, &results, 0)
        return results
    }
}
