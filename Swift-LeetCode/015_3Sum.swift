//
//  015_3Sum.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _15_3Sum: NSObject {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted { (_ num1: Int, _ num2: Int) -> Bool in
            return num1 < num2
        }
        
        var results: [[Int]] = []
        let size = nums.count
        
        if(size < 3) {
            return results
        }
        
        var i = 0;
        while i < size - 2 {
            var left = i + 1;
            var right = size - 1;
            while left < right {
                if sortedNums[i] + sortedNums[left] + sortedNums[right] < 0 {
                    left += 1
                } else if sortedNums[i] + sortedNums[left] + sortedNums[right] == 0 {
                    results.append([sortedNums[i], sortedNums[left], sortedNums[right]])
                    repeat {
                        left += 1
                    } while left < right && sortedNums[left - 1] == sortedNums[left]
                    repeat {
                        right -= 1
                    } while left < right && sortedNums[right + 1] == sortedNums[right]
                } else {
                    right -= 1
                }
            }
            
            repeat {
                i += 1
            } while i < size - 1 && sortedNums[i - 1] == sortedNums[i]
        }
        
        return results;
    }
}
