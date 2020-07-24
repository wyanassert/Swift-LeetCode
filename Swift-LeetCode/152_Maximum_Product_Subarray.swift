//
//  152_Maximum_Product_Subarray.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _152_Maximum_Product_Subarray: NSObject {
    func maxProduct(_ nums: [Int]) -> Int {
        if var result = nums.first {
            
            var maxDp = result
            var minDp = result
            for i in 1..<nums.count {
                let tmp = maxDp
                maxDp = max(tmp * nums[i], nums[i], minDp * nums[i])
                minDp = min(minDp * nums[i], nums[i], tmp * nums[i])
                result = max(result, maxDp)
            }
            
            return result
        } else {
            return 0
        }
    }
}
