//
//  108_Convert_Sorted_Array_to_Binary_Search_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _108_Convert_Sorted_Array_to_Binary_Search_Tree: NSObject {
    func traversal(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        guard right > left else { return nil }
        
        let mid = (left + right)/2
        
        let node = TreeNode(nums[mid])
        
        node.left = traversal(nums, left, mid)
        node.right = traversal(nums, mid + 1, right)
        
        return node
    }
    
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard nums.count > 0 else {
            return nil
        }
        
        let root = traversal(nums, 0, nums.count)
        
        return root
    }
}
