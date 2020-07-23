//
//  090_Subsets_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _090_Subsets_2: NSObject {
    func backtrace(_ nums: [Int], _ start: Int, _ currList: inout [Int], _ results: inout [[Int]]) {
        for i in start..<nums.count {
            if i == start || (i > start && nums[i] != nums[i-1]) {
                currList.append(nums[i])
                results.append(currList)
                backtrace(nums, i + 1, &currList, &results)
                currList.removeLast()
            }
        }
    }
    
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        
        var currList: [Int] = []
        var results: [[Int]] = [[]]
        
        let sorted = nums.sorted { (num1, num2) -> Bool in
            num1 < num2
        }
        
        backtrace(sorted, 0, &currList, &results)
        
        return results
    }
}
