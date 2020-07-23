//
//  109_Convert_Sorted_List_to_Binary_Search_Tree.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _109_Convert_Sorted_List_to_Binary_Search_Tree: NSObject {
    func traversal(_ start: ListNode?, _ end: ListNode?) -> TreeNode? {
        guard let start = start else { return nil }
        if start === end {
            return nil
        }
        
        var slow: ListNode? = start
        var fast: ListNode? = start
        
        while fast !== end && fast?.next !== end {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        let root: TreeNode = TreeNode(slow!.val)
        
        root.left = traversal(start, slow)
        root.right = traversal(slow?.next, end)
        
        return root;
    }
    
    func sortedListToBST(_ head: ListNode?) -> TreeNode? {
        guard let head = head else { return nil }
        
        let root = traversal(head, nil)
        
        return root
    }
}
