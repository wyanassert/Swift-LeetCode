//
//  022_Generate_Parentheses.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _022_Generate_Parentheses: NSObject {

    func travel(_ n: Int, _ l: Int, _ r: Int, _ results: inout [String], _ currString: String) {
        if l == n && r == n {
            results.append(currString)
            return
        }
        
        if l < n {
            travel(n, l + 1, r, &results, currString + "(")
        }
        if r < l {
            travel(n, l, r + 1, &results, currString + ")")
        }
    }
    
    func generateParenthesis(_ n: Int) -> [String] {
        guard n > 0 else {
            return []
        }
        
        var results = [String]()
        
        travel(n, 0, 0, &results, "")
        
        return results
    }
}
