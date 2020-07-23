//
//  257_Binary_Tree_Paths.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _257_Binary_Tree_Paths: NSObject {
    func traversal(_ root: TreeNode?, _ currPath: String, _ results: inout [String]) {
        guard let root = root else { return }
        
        let pathNew = currPath.count > 0 ? currPath + "->" + String(root.val) : String(root.val)
        
        if root.left == nil && root.right == nil {
            results.append(pathNew)
        }
        
        traversal(root.left, pathNew, &results)
        traversal(root.right, pathNew, &results)
    }
    
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let root = root else { return [] }
        
        let currPath: String = ""
        var results: [String] = []
        
        traversal(root, currPath, &results)
        
        return results
    }
}
