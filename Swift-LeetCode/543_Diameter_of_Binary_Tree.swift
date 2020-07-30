//
//  543_Diameter_of_Binary_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/30.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _543_Diameter_of_Binary_Tree: NSObject {
    
    var answer: Int = 0
    
    func heightOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        let left = heightOfBinaryTree(root.left)
        let right = heightOfBinaryTree(root.right)
        answer = max(answer, left + right)
        return max(left, right) + 1
    }
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        answer = 0
        
        let _ = heightOfBinaryTree(root)
        return answer
    }
}
