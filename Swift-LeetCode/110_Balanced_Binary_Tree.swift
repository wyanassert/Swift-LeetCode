//
//  110_Balanced_Binary_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _110_Balanced_Binary_Tree: NSObject {
    func getHeight(_ node: TreeNode?) -> Int {
        guard let node = node else { return 0 }
        
        let leftHeight = getHeight(node.left)
        if leftHeight < 0 {
            return -1
        }
        let rightHeight = getHeight(node.right)
        if rightHeight < 0 {
            return -1
        }
        let diff = abs(leftHeight - rightHeight)
        return diff <= 1 ? max(leftHeight, rightHeight) + 1 : -1
    }
    
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        
        return getHeight(root) > 0
    }
}
