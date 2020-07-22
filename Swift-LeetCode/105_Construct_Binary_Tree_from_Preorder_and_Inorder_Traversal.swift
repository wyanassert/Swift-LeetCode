//
//  105_Construct_Binary_Tree_from_Preorder_and_Inorder_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _105_Construct_Binary_Tree_from_Preorder_and_Inorder_Traversal: NSObject {
    var nodeMap = Dictionary<Int, Int>()
    
    func build(_ preorder: [Int], _ l0: Int, _ r0: Int, _ inorder: [Int], _ l1: Int, _ r1: Int) -> TreeNode? {
        if l0 > r0 || l1 > r1 {
            return nil
        }
        
        let node = TreeNode.init(preorder[l0])
        
        let mid: Int? = nodeMap[preorder[l0]]
        
        let leftLen = mid! - l1
        
        node.left = build(preorder, l0 + 1, l0 + leftLen, inorder, l1, mid! - 1)
        node.right = build(preorder, l0 + leftLen + 1, r0, inorder, mid! + 1, r1)
        return node
    }
    
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        guard inorder.count > 0 else {
            return nil
        }
        
        nodeMap.removeAll()
        for i in 0..<inorder.count {
            nodeMap[inorder[i]] = i
        }
        
        return build(preorder, 0, preorder.count - 1, inorder, 0, inorder.count - 1)
    }
}
