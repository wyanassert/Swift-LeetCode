//
//  047_Permutations_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _047_Permutations_2: NSObject {
    func backtrace(_ nums: [Int], _ visited: inout [Bool], _ currList: inout [Int], _ results: inout [[Int]]) {
        guard currList.count < nums.count else {
            results.append(currList)
            return
        }
        
        var i = 0
        while i < nums.count {
            if visited[i]  {
                visited[i] = false
                currList.append(nums[i])
                backtrace(nums, &visited, &currList, &results)
                visited[i] = true
                currList.removeLast()
                
                while i < nums.count - 1 && nums[i] == nums[i+1] {
                    i += 1
                }
            }
            i += 1
        }
    }
    
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 0 else {
            return []
        }
        var currList: [Int] = []
        var results: [[Int]] = []
        var visited: [Bool] = Array(repeatElement(true, count: nums.count))
        
        let sorted = nums.sorted { (num1, num2) -> Bool in
            num1 < num2
        }
        
        backtrace(sorted, &visited, &currList, &results)
        
        return results
    }
}
