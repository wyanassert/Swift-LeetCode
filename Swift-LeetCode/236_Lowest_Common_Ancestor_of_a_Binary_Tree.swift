//
//  236_Lowest_Common_Ancestor_of_a_Binary_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/30.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _236_Lowest_Common_Ancestor_of_a_Binary_Tree: NSObject {
//    - [ ] 递归解法,
//        - [ ] 如果当前节点为空则返回空, 说明当前节点肯定不是
//        - [ ] 如果当前节点就是 p 节点或者 q 节点, 那么放回当前节点, 因为无论如何 在这一节点看来, 自己肯定就是至少某一个父节点, 是不是另一个要交给自己的上一父节点判断
//        - [ ] 如果上面都不满足, 对左右节点做递归, 分别有 left, right 返回, 若 left 和 right 都有值, 那么当前节点肯定是了, 如果当前节点只有 left有值(注意此时 left 不一定是左子树), 但是right 为空, 说明当前节点只是一个的子节点, 返回left 即可(不能返回 root, 因为可能pq 都在左子树上, left(是上面递归的返回值, 不一定是左子树的节点) 就是pq 的最小根节点)
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
