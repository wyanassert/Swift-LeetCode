//
//  034_Find_First_and_Last_Position_of_Element_in_Sorted_Array.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _34_Find_First_and_Last_Position_of_Element_in_Sorted_Array: NSObject {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        
        var results: [Int] = Array<Int>(repeating: -1, count: 2)
        if nums.count == 0 {
            return results
        }
        
        var left: Int = 0
        var right: Int = nums.count - 1
        
        while left < right {
            let mid: Int = (left + right)/2
            if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        guard nums[left] == target else {
            return results
        }
        
        results[0] = left
        
        right = nums.count - 1
        while left < right {
            let mid: Int = (left + right)/2 + 1
            if nums[mid] > target {
                right = mid - 1
            } else {
                left = mid
            }
        }
        
        results[1] = right
        
        return results
    }
}
