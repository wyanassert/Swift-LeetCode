//
//  113_Path_sum_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _113_Path_sum_2: NSObject {
    func isExistSum(_ root: TreeNode?, _ sum: Int, _ currList: inout [Int], _ results: inout [[Int]]) {
        guard let root = root else { return }
        currList.append(root.val)
        if root.left == nil && root.right == nil {
            if sum == root.val {
                results.append(currList)
            }
        } else if root.left == nil {
            isExistSum(root.right, sum - root.val, &currList, &results)
        } else if root.right == nil {
            isExistSum(root.left, sum - root.val, &currList, &results)
        } else {
            isExistSum(root.left, sum - root.val, &currList, &results)
            isExistSum(root.right, sum - root.val, &currList, &results)
        }
        currList.removeLast()
    }
    func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
        guard let root = root else { return [] }
        
        var results: [[Int]] = []
        var currList: [Int]  = []
        isExistSum(root, sum, &currList, &results)
        return results
    }
}
