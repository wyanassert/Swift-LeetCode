//
//  300_Longest_Increasing_Subsequence.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _300_Longest_Increasing_Subsequence: NSObject {
    
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var tails: [Int] = Array(repeating: -1, count: nums.count)
        var res = 0
        for num in nums {
            var i = 0
            var j = res
            while i < j {
                let m = (i + j) / 2
                if tails[m] < num {
                    i = m + 1;
                } else {
                    j = m
                }
            }
            tails[i] = num;
            if res == j {
                res += 1
            }
        }
        return res
    }
//  首先使用动态规划, 对于 dp[n]来说, 需要遍历 0..<n 来确定 dp[n]的大小, 所以复杂度是 O(n^2)
//    func lengthOfLIS(_ nums: [Int]) -> Int {
//
//        var dp:[Int] = Array(repeating: 1, count: nums.count)
//
//        for i in 0..<dp.count {
//            for j in 0..<i {
//                if nums[j] < nums[i] {
//                    dp[i] = max(dp[i], dp[j] + 1)
//                }
//            }
//        }
//
//        var result = 0
//        for i in dp {
//            result = max(result, i)
//        }
//
//        return result
//    }
}
