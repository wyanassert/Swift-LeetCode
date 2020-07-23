//
//  116_Populating_Next_Right_Pointers_in_Each_Node.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _116_Populating_Next_Right_Pointers_in_Each_Node: NSObject {
    func traversal(_ root: Node?) {
        guard let root = root else { return }
        
        guard let left = root.left, let right = root.right else { return }
        
        left.next = right
        if let next = root.next {
            right.next = next.left
        }
        traversal(root.left)
        traversal(root.right)
    }
    
    func connect(_ root: Node?) -> Node? {
        guard let root = root else { return nil }
        
        traversal(root)
        
        return root
    }
}
