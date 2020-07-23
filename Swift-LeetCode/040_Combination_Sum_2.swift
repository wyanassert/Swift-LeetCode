//
//  040_Combination_Sum_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _040_Combination_Sum_2: NSObject {
    func backtrace(_ candidates: [Int], _ target: Int, _ start: Int, _ currList: inout [Int], _ results: inout [[Int]]) {
        guard target > 0 else {
            results.append(currList)
            return
        }
        
        for i in start..<candidates.count {
            if target >= candidates[i] {
                if i == start || (i > start && candidates[i] != candidates[i-1]) {
                    currList.append(candidates[i])
                    backtrace(candidates, target - candidates[i], i + 1, &currList, &results)
                    currList.removeLast()
                }
            }
        }
    }
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var currList: [Int] = []
        var results: [[Int]] = []
        
        let sorted = candidates.sorted(by: { (num1, num2) -> Bool in
            num1 < num2
        })
//        let filtered = sorted.filter { (num) -> Bool in
//            num <= target
//        }
        
//        backtrace(filtered, target, 0, &currList, &results)
        backtrace(sorted, target, 0, &currList, &results)
        
        return results
    }
}
