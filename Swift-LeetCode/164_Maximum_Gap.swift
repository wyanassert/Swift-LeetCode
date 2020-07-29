//
//  164_Maximum_Gap.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/29.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _164_Maximum_Gap: NSObject {
    public func radixSort(_ array: inout [Int]) {
        let radix = 10
        var done = false
        var index: Int
        var digit = 1
        
        while !done {
            done = true
            
            var buckets: [[Int]] = []  // 我们的排序子程序是桶排序，所以让我们预定义我们的桶
            
            for _ in 1...radix {
                buckets.append([])
            }
            
            for number in array {
                index = number / digit
                buckets[index % radix].append(number)
                if done && index > 0 {
                    done = false
                }
            }
            
            var i = 0
            
            for j in 0..<radix {
                let bucket = buckets[j]
                for number in bucket {
                    array[i] = number
                    i += 1
                }
            }
            
            digit *= radix
        }
    }
    
    func maximumGap(_ nums: [Int]) -> Int {
        var maxGap = 0
        if nums.count < 2 { return maxGap }
        
        var start = 0
        var nums = nums
        radixSort(&nums)
        while (start < nums.count - 1) {
            let diff = nums[start + 1] - nums[start]
            maxGap = max(diff, maxGap)
            start += 1
        }
        
        return maxGap
    }
}
