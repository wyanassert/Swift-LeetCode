//
//  283_Move_Zeroes.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/27.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _283_Move_Zeroes: NSObject {
    func moveZeroes(_ nums: inout [Int]) {
        var j = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                if j != i {
                    nums[j] = nums[i]
                    nums[i] = 0
                }
                j += 1
            }
        }
    }
}
