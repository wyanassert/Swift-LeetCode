//
//  095_Unique_Binary_Search_Trees_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _095_Unique_Binary_Search_Trees_2: NSObject {
    func traversal(_ start: Int, _ end: Int) -> [TreeNode?] {
        guard start < end else {
            return [nil]
        }
        
        var currNodeList: [TreeNode?] = []
        for i in start..<end {
            let lList = traversal(start, i)
            let rList = traversal(i + 1, end)
            for l in lList {
                for r in rList {
                    let node: TreeNode = TreeNode(i)
                    node.left = l
                    node.right = r
                    currNodeList.append(node)
                }
            }
        }
        return currNodeList
    }
    
    func generateTrees(_ n: Int) -> [TreeNode?] {
        guard n > 0 else {
            return []
        }
        return traversal(1, n+1)
    }
}
