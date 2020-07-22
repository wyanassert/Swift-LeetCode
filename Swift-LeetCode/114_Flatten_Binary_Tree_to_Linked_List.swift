//
//  114_Flatten_Binary_Tree_to_Linked_List.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _114_Flatten_Binary_Tree_to_Linked_List: NSObject {
    func traversal(_ root: TreeNode?, _ queue: inout [TreeNode]) {
        guard let root = root else { return }
        
        queue.append(root)
        traversal(root.left, &queue)
        traversal(root.right, &queue)
    }
    
    func flatten(_ root: TreeNode?) {
        guard let root = root else { return }
        
        var queue: [TreeNode] = []
        traversal(root, &queue)
        
        var tmpNode: TreeNode? = nil
        while !queue.isEmpty {
            if tmpNode != nil {
                tmpNode?.right = queue.first
                tmpNode?.left = nil
                tmpNode = queue.first
            } else {
                tmpNode = queue.first
            }
            queue.removeFirst()
        }
    }
}
