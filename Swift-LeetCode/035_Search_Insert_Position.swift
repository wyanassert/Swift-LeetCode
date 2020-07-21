//
//  035_Search_Insert_Position.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _35_Search_Insert_Position: NSObject {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return 0
        } else if nums.last! < target {
            return nums.count
        }
        var left: Int = 0
        var right: Int = nums.count - 1
        
        while left <= right {
            let mid = (left + right)/2
            if nums[mid] > target {
                right = mid - 1
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                return mid
            }
        }
        
        return left;
    }
}
