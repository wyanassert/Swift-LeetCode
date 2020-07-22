//
//  112_Path_Sum.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _112_Path_Sum: NSObject {
    func isExistSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard let root = root else { return sum == 0 }
        
        //如果不是叶子节点, 但如果有一个分叉是 nil, 就只能用另一个分叉
        guard let _ = root.left else { return isExistSum(root.right, sum - root.val) }
        guard let _ = root.right else { return isExistSum(root.left, sum - root.val) }
        
        if isExistSum(root.left, sum - root.val) {
            return true
        } else {
            return isExistSum(root.right, sum - root.val)
        }
    }
    
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard let root = root else { return false }
        return isExistSum(root, sum)
    }
}
