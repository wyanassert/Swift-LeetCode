//
//  100_Same_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _100_Same_Tree: NSObject {
    func isSame(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        guard let p = p, let q = q else {
            return false
        }
        return p.val == q.val && isSame(p.left, q.left) && isSame(p.right, q.right)
    }
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        return isSame(p, q)
    }
}
