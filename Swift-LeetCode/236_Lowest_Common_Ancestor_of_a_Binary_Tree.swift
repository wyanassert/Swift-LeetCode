//
//  236_Lowest_Common_Ancestor_of_a_Binary_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/30.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _236_Lowest_Common_Ancestor_of_a_Binary_Tree: NSObject {
//    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
//        guard let root = root else { return nil }
//
//        if root === p || root === q { return root }
//
//        let left = lowestCommonAncestor(root.left, p, q)
//        let right = lowestCommonAncestor(root.right, p, q)
//
//        if left != nil && right != nil { return root }
//
//        if let left = left { return left }
//        if let right = right { return right }
//
//        return nil
//    }
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        
        if p === root || q === root { return root }
        
        let left = lowestCommonAncestor(root.left, p, q)
        let right = lowestCommonAncestor(root.right, p, q)
        
        if let _ = left, let _ = right { return root }
        if left != nil || right != nil  { return left != nil ? left : right }
        
        return nil
    }
}
