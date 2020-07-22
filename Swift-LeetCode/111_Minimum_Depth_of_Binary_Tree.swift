//
//  111_Minimum_Depth_of_Binary_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _111_Minimum_Depth_of_Binary_Tree: NSObject {
    
    var minLength: Int = Int.max;
    
    func deepFirstTraval(_ node: TreeNode?, _ level: Int) -> Int {
        if(level >= minLength) {
            return minLength
        }
        guard node != nil else {
            return level
        }
        
        var length = level
        if node?.left == nil && node?.right == nil {
            
            length = level + 1
        } else if node?.left == nil {
            length = deepFirstTraval(node!.right, level + 1)
        } else if node?.right == nil {
            length = deepFirstTraval(node!.left, level + 1)
        } else {
            length = min(deepFirstTraval(node!.left, level + 1), deepFirstTraval(node!.right, level + 1))
        }
        
        minLength = min(length, minLength)
        return length
    }
    
    func minDepth(_ root: TreeNode?) -> Int {
        
        guard root != nil else {
            return 0
        }
        
        minLength = Int.max;
        return deepFirstTraval(root, 0)
    }
}
