//
//  104_Maximum_Depth_of_Binary_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa



class _104_Maximum_Depth_of_Binary_Tree: NSObject {
    
    func deepFirstTraval(_ node: TreeNode?, _ level: Int) -> Int {
        guard node != nil else {
            return level
        }
        
        if node?.left == nil && node?.right == nil {
            return level + 1
        }
        
        return max(deepFirstTraval(node!.left, level + 1), deepFirstTraval(node!.right, level + 1))
    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        guard root != nil else {
            return 0
        }
        
        return deepFirstTraval(root, 0)
    }
}
