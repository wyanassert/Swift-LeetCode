//
//  102_Binary_Tree_Level_Order_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _102_Binary_Tree_Level_Order_Traversal: NSObject {
//    - [ ] 这一题是要按照层输出节点, 所以在栈中要存入层信息
//        - [ ] 根节点入队, 然后只要队不为空就循环
//        - [ ] 当前循环, 拿出(节点, 层数), 如果层数对应的数组没有初始化, 就加一个空数组到结果, 将节点值加入对应数组, 同时以此将子节点入队
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
