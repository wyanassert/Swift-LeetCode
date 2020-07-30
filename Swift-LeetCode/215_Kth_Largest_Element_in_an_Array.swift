//
//  215_Kth_Largest_Element_in_an_Array.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/30.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _215_Kth_Largest_Element_in_an_Array: NSObject {
    func partition(_ nums: inout [Int], _ left: Int, _ right: Int, _ find: Int) -> Int {
        if left == right {
            return nums[left]
        }
        
        var i = left
        var j = right
        
//      增加一个随机数先交换, 避免被安排的最糟情况, 速度从 120ms 提升至 60ms
        let random = Int.random(in: left...right)
        nums.swapAt(random, left)
        
        let key = nums[i]
        
        while i < j {
            while i < j && nums[j] >= key  {
                j -= 1
            }
            nums.swapAt(i, j)
            while i < j && nums[i] <= key {
                i += 1
            }
            nums.swapAt(i, j)
        }

        if i < find {
            return partition(&nums, i + 1, right, find)
        } else if i > find {
            return partition(&nums, left, i - 1, find)
        } else {
            return nums[i]
        }
    }
    
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        guard !nums.isEmpty else { return 0 }
        var nums = nums
        return partition(&nums, 0, nums.count-1, nums.count-k)
    }
//  直接用排序 虽然很简单 但是不符合题意
//    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
//        guard !nums.isEmpty else { return 0 }
//        let sortedArray = nums.sorted()
//        return sortedArray[sortedArray.count - k]
//    }
}
