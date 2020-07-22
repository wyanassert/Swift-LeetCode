//
//  098_Validate_Binary_Search_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _098_Validate_Binary_Search_Tree: NSObject {
    func traval(_ root: TreeNode?, _ min: Int, _ max: Int) -> Bool {
        guard let root = root else { return true }
        
        if root.val > min && root.val < max {
            return traval(root.left, min, root.val) && traval(root.right, root.val, max)
        } else {
            return false
        }
    }
    
    func isValidBST(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        return traval(root, Int.min, Int.max)
    }
}
