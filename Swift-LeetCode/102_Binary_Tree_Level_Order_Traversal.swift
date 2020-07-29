//
//  102_Binary_Tree_Level_Order_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _102_Binary_Tree_Level_Order_Traversal: NSObject {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        
        var results : [[Int]] = []
        
        var queue: [(TreeNode, Int)] = [(root, 0)]
        while let (node, index) = queue.first {
            if results.count <= index {
                results.append([Int]())
            }
            results[index].append(node.val)
            if let left = node.left {
                queue.append((left, index + 1))
            }
            if let right = node.right {
                queue.append((right, index + 1))
            }
            queue.removeFirst()
        }
        
        return results
    }
}
