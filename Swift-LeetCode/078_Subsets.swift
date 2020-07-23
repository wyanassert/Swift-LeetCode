//
//  078_Subsets.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _078_Subsets: NSObject {
    func backtrace(_ nums: [Int], _ start: Int, _ currList: inout [Int], _ results: inout [[Int]]) {
        
        for i in start..<nums.count {
            currList.append(nums[i])
            results.append(currList)
            backtrace(nums, i + 1, &currList, &results)
            currList.removeLast()
        }
    }
    
    func subsets(_ nums: [Int]) -> [[Int]] {
        
        var currList: [Int] = []
        var results: [[Int]] = [[]]
        
        backtrace(nums, 0, &currList, &results)
        
        return results
    }
}
