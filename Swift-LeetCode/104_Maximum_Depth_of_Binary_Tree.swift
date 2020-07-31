//
//  104_Maximum_Depth_of_Binary_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa



class _104_Maximum_Depth_of_Binary_Tree: NSObject {
//            - [ ] func (root)( if root==nil return 0 else return max(travel(root.left), travel(root.right)) + 1)
    func travel(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        return max(travel(root.left), travel(root.right)) + 1
    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        return travel(root)
    }
    
//    func deepFirstTraval(_ node: TreeNode?, _ level: Int) -> Int {
//        guard node != nil else {
//            return level
//        }
//
//        if node?.left == nil && node?.right == nil {
//            return level + 1
//        }
//
//        return max(deepFirstTraval(node!.left, level + 1), deepFirstTraval(node!.right, level + 1))
//    }
//
//    func maxDepth(_ root: TreeNode?) -> Int {
//        guard root != nil else {
//            return 0
//        }
//
//        return deepFirstTraval(root, 0)
//    }
}
