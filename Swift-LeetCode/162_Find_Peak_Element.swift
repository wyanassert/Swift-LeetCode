//
//  162_Find_Peak_Element.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _162_Find_Peak_Element: NSObject {
    func isPeak(_ nums: [Int], _ index: Int) -> Bool {
        if index == 0 {
            return nums[index] > nums[index + 1]
        } else if index == nums.count - 1 {
            return nums[index] > nums[index - 1]
        } else {
            return nums[index] > nums[index - 1] && nums[index] > nums[index + 1]
        }
    }
    
    func findPeakElement(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return 0
        }
        guard nums.count > 2 else {
            return nums[0] > nums[1] ? 0 : 1
        }
        
        var left: Int = 0
        var right: Int = nums.count - 1
        
        while left < right - 1 {
            let mid = (left + right)/2
            if isPeak(nums, mid) {
                return mid
            } else if nums[mid - 1] > nums[mid] {
                right = mid
            } else {
                left = mid
            }
        }
        
        if isPeak(nums, left) {
            return left
        } else if isPeak(nums, right) {
            return right
        }
        
        return 0
    }
}
