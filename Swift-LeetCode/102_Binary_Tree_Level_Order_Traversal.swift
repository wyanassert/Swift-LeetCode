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
        while let pair: (node: TreeNode, index: Int) = queue.first {
            if results.count <= pair.index {
                results.append([Int]())
            }
            results[pair.index].append(pair.node.val)
            if let left = pair.node.left {
                queue.append((left, pair.index + 1))
            }
            if let right = pair.node.right {
                queue.append((right, pair.index + 1))
            }
            queue.removeFirst()
        }
        
        return results
    }
}
