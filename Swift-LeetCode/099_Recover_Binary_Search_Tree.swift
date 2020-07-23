//
//  099_Recover_Binary_Search_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _099_Recover_Binary_Search_Tree: NSObject {
    
    //利用Morris Traversal 中序遍历每个节点, 在找到节点是, 判断他是否异常(前一个节点大于当前节点), 先找到左边异常数(前节点), 当前节点为临时异常, 继续找后面的节点, 最后一个临时异常节点即为后节点, 交换前节点 和后节点的值
    func recoverTree(_ root: TreeNode?) {
        guard let root = root else { return }
        
        var firstSwap: TreeNode?
        var lastSwap: TreeNode?
        
        var preNode: TreeNode?
        var currNode:TreeNode? = root
        
        while currNode != nil {
            if let left = currNode?.left {
                var leading = left
                while leading.right != nil && leading.right !== currNode {
                    leading = leading.right!
                }
                if let _ = leading.right {
                    if preNode != nil && preNode!.val > currNode!.val {
                        if firstSwap == nil {
                            firstSwap = preNode
                        }
                        lastSwap = currNode
                    }
                    leading.right = nil
                    preNode = currNode
                    currNode = currNode?.right
                } else {
                    leading.right = currNode
                    currNode = left
                }
            } else {
                if preNode != nil && preNode!.val > currNode!.val {
                    if firstSwap == nil {
                        firstSwap = preNode
                    }
                    lastSwap = currNode
                }
                preNode = currNode
                currNode = currNode?.right
            }
        }
        
        if let firstSwap = firstSwap, let lastSwap = lastSwap {
            (firstSwap.val, lastSwap.val) = (lastSwap.val, firstSwap.val)
        }
        return
    }
}
