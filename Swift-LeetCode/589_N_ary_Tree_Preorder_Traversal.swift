//
//  589_N_ary_Tree_Preorder_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

//提交的时候把 Node2 改成 Node,
class _589_N_ary_Tree_Preorder_Traversal: NSObject {
    func preorder(_ root: Node2?) -> [Int] {
        guard let root = root else {
            return []
        }
        
        var stack: [Node2] = []
        var result = [Int]()
        
        stack.append(root)
        while !stack.isEmpty {
            let last = stack.removeLast()
            if last.children.count > 0 {
                stack.append(contentsOf: last.children.reversed())
            }
            result.append(last.val)
        }
        
        return result
    }
}
