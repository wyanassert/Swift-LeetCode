//
//  053_Maximum_Subarray.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _053_Maximum_Subarray: NSObject {
//    - [ ] 动态规划
//        - [ ] dp[n] = max(num[n], num[n] + dp[n-1])
//        - [ ] 可以简化 用两个变量来模拟 dp 数组
    func maxSubArray(_ nums: [Int]) -> Int {
        var dp = [Int]()
        
        if var result = nums.first {
            for i in 0..<nums.count {
                if i == 0 {
                    dp.append(nums[i])
                } else {
                    dp.append(max(nums[i], dp[i-1]+nums[i]))
                    result = max(result, dp[i])
                }
            }
            return result
        }
        return 0
    }
}
