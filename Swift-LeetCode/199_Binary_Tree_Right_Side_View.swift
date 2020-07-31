//
//  199_Binary_Tree_Right_Side_View.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _199_Binary_Tree_Right_Side_View: NSObject {
//            - [ ] DPS/BFS Solution, right first and left later
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var results:[Int] = []
        
        var queue: [(TreeNode, Int)] = []
        queue.append((root, 0))
        
        while !queue.isEmpty {
            let (node, level) = queue.removeFirst()
            if level >= results.count {
                results.append(node.val)
            }
            if let right = node.right {
                queue.append((right, level + 1))
            }
            
            if let left = node.left {
                queue.append((left, level + 1))
            }
        }
        
        return results
    }
    
//  DPS Solution, right first and left later
//    func traversal(_ root: TreeNode?, _ results: inout [Int], _ level: Int) {
//        guard let root = root else {
//            return
//        }
//        if level >= results.count {
//            results.append(root.val)
//        }
//        traversal(root.right, &results, level + 1)
//        traversal(root.left, &results, level + 1)
//    }
//
//    func rightSideView(_ root: TreeNode?) -> [Int] {
//
//        var results:[Int] = []
//        traversal(root, &results, 0)
//        return results
//    }
}
