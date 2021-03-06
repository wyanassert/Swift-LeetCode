//
//  033_Search_in_Rotated_Sorted_Array.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _033_Search_in_Rotated_Sorted_Array: NSObject {
//    - [ ] 递归写法,
//        - [ ] 若中间等于 target, 直接返回
//        - [ ] 若不等,
//            - [ ] 如果nums[left]小于等于(考虑到 mid==left)nums[mid], 说明左区间是连续的,
//                - [ ] 判断 target 的值是否在nums[left]和 nums[mid]之前
//                    - [ ] 在的话用左区间
//                    - [ ] 不在用右区间
//            - [ ] 如果 nums[left] > nums[mid], 说明连续区间在右边
//                - [ ] 判断 target 的值是否在nums[mid]和 nums[right]之前
//                    - [ ] 在的话用右区间
//                    - [ ] 不在用左间
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        var left = 0, right = nums.count - 1
        
        while left <= right {
            let mid = (left + right)/2
            if nums[mid] == target {
                return mid
            } else {
                if nums[left] <= nums[mid] {
                    if target >= nums[left] && target <= nums[mid] {
                        right = mid - 1
                    } else {
                        left = mid + 1
                    }
                } else {
                    if target >= nums[mid] && target <= nums[right] {
                        left = mid + 1
                    } else {
                        right = mid - 1
                    }
                }
            }
        }
        return -1
    }
    
//    func partition(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
//        if left > right {
//            return -1
//        } else if left == right {
//            return nums[left] == target ? left : -1
//        } else {
//            let mid = (left + right)/2
//            if nums[mid] == target {
//                return mid
//            } else if nums[left] <= nums[mid] {//左边有序
//                if target >= nums[left] && target <= nums[mid] { //在有序区间
//                    return partition(nums, target, left, mid - 1)
//                } else {
//                    return partition(nums, target, mid + 1, right)
//                }
//            } else {//右边有序
//                if target >= nums[mid] && target <= nums[right] { //在有序区间
//                    return partition(nums, target, mid + 1, right)
//                } else {
//                    return partition(nums, target, left, mid - 1)
//                }
//            }
//        }
//    }
//    func search(_ nums: [Int], _ target: Int) -> Int {
//        return partition(nums, target, 0, nums.count - 1)
//    }
}
