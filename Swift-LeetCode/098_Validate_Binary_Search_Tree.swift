//
//  098_Validate_Binary_Search_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _098_Validate_Binary_Search_Tree: NSObject {
    func traversal(_ root: TreeNode?, _ left: Int, _ right: Int) -> Bool {
        guard let root = root else { return true }
        return root.val > left && root.val < right && traversal(root.left, left, root.val) && traversal(root.right, root.val, right)
    }
    func isValidBST(_ root: TreeNode?) -> Bool {
        return traversal(root, Int.min, Int.max)
    }
}
