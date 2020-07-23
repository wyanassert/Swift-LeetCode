//
//  039_Combination_Sum.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _039_Combination_Sum: NSObject {
    func backtrace(_ candidates: [Int], _ target: Int, _ start: Int, _ currList: inout [Int], _ results: inout [[Int]]) {
        guard target > 0 else {
            results.append(currList)
            return
        }
        
        for i in start..<candidates.count {
            if target >= candidates[i] {
                currList.append(candidates[i])
                backtrace(candidates, target - candidates[i], i, &currList, &results)
                currList.removeLast()
            }
        }
    }
    
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var currList: [Int] = []
        var results: [[Int]] = []
        
        backtrace(candidates, target, 0, &currList, &results)
        
        return results
    }
}
