//
//  226_Invert_Binary_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _226_Invert_Binary_Tree: NSObject {
//            - [ ] 太简单 递归非递归都行
//  非递归写法
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        
        var stack: [TreeNode?] = []
        stack.append(root)
        
        while !stack.isEmpty {
            if let node = stack.removeLast() {
                stack.append(node.left)
                stack.append(node.right)
                (node.left, node.right) = (node.right, node.left)
            }
        }
        
        return root
    }
//    func invertTree(_ root: TreeNode?) -> TreeNode? {
//        guard let root = root else {
//            return nil
//        }
//        let _ = invertTree(root.left)
//        let _ = invertTree(root.right)
//        (root.left, root.right) = (root.right, root.left)
//        return root
//    }
}
