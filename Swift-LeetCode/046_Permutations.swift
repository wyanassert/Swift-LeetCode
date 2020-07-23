//
//  046_Permutations.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _046_Permutations: NSObject {
    func backtrace(_ nums: [Int], _ visited: inout [Bool], _ currList: inout [Int], _ results: inout [[Int]]) {
        guard currList.count < nums.count else {
            results.append(currList)
            return
        }
        
        for i in 0..<nums.count {
            if visited[i] {
                visited[i] = false
                currList.append(nums[i])
                backtrace(nums, &visited, &currList, &results)
                visited[i] = true
                currList.removeLast()
            }
        }
    }
    
    func permute(_ nums: [Int]) -> [[Int]] {
        guard nums.count > 0 else {
            return []
        }
        var currList: [Int] = []
        var results: [[Int]] = []
        var visited: [Bool] = Array(repeatElement(true, count: nums.count))
        
        backtrace(nums, &visited, &currList, &results)
        
        return results
    }
}
