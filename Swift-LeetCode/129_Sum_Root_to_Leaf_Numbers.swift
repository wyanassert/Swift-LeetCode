//
//  129_Sum_Root_to_Leaf_Numbers.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _129_Sum_Root_to_Leaf_Numbers: NSObject {
    func traversal(_ root: TreeNode?,_ sum: Int, _ results: inout [Int]) {
        guard let root = root else { return }
        
        let sumNew = sum * 10 + root.val
        if root.left == nil && root.right == nil {
            results.append(sumNew)
        }
        traversal(root.left, sumNew, &results)
        traversal(root.right, sumNew, &results)
    }
    
    func sumNumbers(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        var results: [Int] = []
        
        traversal(root, 0, &results)
        
        var result = 0
        results.forEach { (num) in
            result += num
        }
        return result
    }
}
