//
//  033_Search_in_Rotated_Sorted_Array.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _033_Search_in_Rotated_Sorted_Array: NSObject {
    func partition(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
        if left > right {
            return -1
        } else if left == right {
            return nums[left] == target ? left : -1
        } else {
            let mid = (left + right)/2
            if nums[mid] == target {
                return mid
            } else if nums[left] <= nums[mid] {//左边有序
                if target >= nums[left] && target <= nums[mid] { //在有序区间
                    return partition(nums, target, left, mid - 1)
                } else {
                    return partition(nums, target, mid + 1, right)
                }
            } else {//右边有序
                if target >= nums[mid] && target <= nums[right] { //在有序区间
                    return partition(nums, target, mid + 1, right)
                } else {
                    return partition(nums, target, left, mid - 1)
                }
            }
        }
    }
    func search(_ nums: [Int], _ target: Int) -> Int {
        return partition(nums, target, 0, nums.count - 1)
    }
}
