//
//  590_N_ary_Tree_Postorder_Traversal.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

//提交的时候把 Node2 改成 Node,
class _590_N_ary_Tree_Postorder_Traversal: NSObject {
    func postorder(_ root: Node2?) -> [Int] {
        guard let root = root else {
            return []
        }
        var result = [Int]()
        var stack = [(Node2, Bool)]()
        
        stack.append((root, false))
        while !stack.isEmpty {
            let (parent, visit) = stack.removeLast()
            if parent.children.isEmpty || visit {
                result.append(parent.val)
                continue
            }
            
            stack.append((parent, true))// 因为后序遍历 还会用到, 将 visit 标记为 true, 下一次取到时候再输出
            
            if !parent.children.isEmpty {
                parent.children.reversed().forEach {stack.append(($0, false))}
            }
        }
        
        return result
    }
}
