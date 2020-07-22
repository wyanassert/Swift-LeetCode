//
//  106_Construct_Binary_Tree_from_Inorder_and_Postorder_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa


class _106_Construct_Binary_Tree_from_Inorder_and_Postorder_Traversal: NSObject {
    // 用一个 Map 存储 InOrder 的位置避免找 mid 的时候遍历, 加快速度
    var nodeMap = Dictionary<Int, Int>()
    
    func build(_ inorder: [Int], _ l0: Int, _ r0: Int, _ postorder: [Int], _ l1: Int, _ r1: Int) -> TreeNode? {
        if l0 > r0 || l1 > r1 {
            return nil
        }
        
        let node = TreeNode.init(postorder[r1])
        
        let mid: Int? = nodeMap[postorder[r1]]
        
        let leftLen = mid! - l0
        
        node.left = build(inorder, l0, mid! - 1, postorder, l1, l1 + leftLen - 1)
        node.right = build(inorder, mid! + 1, r0, postorder, l1 + leftLen, r1-1)
        return node
    }
    
    func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
        guard postorder.count > 0 else {
            return nil
        }
        
        nodeMap.removeAll()
        for i in 0..<inorder.count {
            nodeMap[inorder[i]] = i
        }
        
        return build(inorder, 0, inorder.count - 1, postorder, 0, postorder.count - 1)
    }
}
