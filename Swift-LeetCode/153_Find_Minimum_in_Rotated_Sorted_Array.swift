//
//  153_Find_Minimum_in_Rotated_Sorted_Array.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _153_Find_Minimum_in_Rotated_Sorted_Array: NSObject {
    
    func findMin(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0;
        } else if nums.count == 1 || nums.first! < nums.last! {
            return nums.first!
        } else if nums.count == 2 {
            return min(nums[0], nums[1])
        } else {
            var left: Int = 0
            var right: Int = nums.count-1
            
            while left < right - 1 {
                if(nums[left] < nums[right]) {
                    return nums[left]
                } else {
                    let mid = (left + right)/2
                    if nums[left] < nums[mid] {
                        left = mid
                    } else {
                        right = mid
                    }
                }
            }
            
            return min(nums[left], nums[right])
        }
    }
    
    //用递归实现的二分效率较低 上面用 for 循环来实现小分会更高
//    func findMinForDivide(_ nums: [Int], _ left: Int, _ right: Int) -> Int {
//        if left >= right - 1 {
//            return min(nums[left], nums[right])
//        } else {
//            let mid: Int = (left + right)/2;
//            if(nums[right] < nums[mid]) {
//                return findMinForDivide(nums, mid, right)
//            } else {
//                return findMinForDivide(nums, left, mid)
//            }
//        }
//    }
//
//    func findMin(_ nums: [Int]) -> Int {
//        if nums.count == 0 {
//            return 0;
//        } else {
//            return findMinForDivide(nums, 0, nums.count - 1)
//        }
//    }
}
