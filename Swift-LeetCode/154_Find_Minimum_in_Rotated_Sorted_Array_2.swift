//
//  154_Find_Minimum_in_Rotated_Sorted_Array_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _154_Find_Minimum_in_Rotated_Sorted_Array_2: NSObject {
    func findMinForDivide(_ nums: [Int], _ left: Int, _ right: Int) -> Int {
        if left >= right - 1 {
            return min(nums[left], nums[right])
        } else {
            if(nums[left] < nums[right]) {
                return nums[left]
            }
            let mid: Int = (left + right)/2;
            if nums[left] > nums[mid] {
                return findMinForDivide(nums, left, mid)
            } else if nums[left] < nums[mid] {
                return findMinForDivide(nums, mid, right)
            } else {
                return findMinForDivide(nums, left + 1, right)
            }
        }
    }
    
    func findMin(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0;
        } else if nums.count == 1 || nums.first! < nums.last! {
            return nums.first!
        } else {
            return findMinForDivide(nums, 0, nums.count - 1)
        }
    }
}
