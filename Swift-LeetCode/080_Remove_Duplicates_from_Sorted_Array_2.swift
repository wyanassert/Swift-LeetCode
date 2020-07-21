//
//  080_Remove_Duplicates_from_Sorted_Array_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/20.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _80_Remove_Duplicates_from_Sorted_Array_2: NSObject {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var i: Int = 0
        var n: Int = 0
        
        for j in 1..<nums.count {
            if nums[i] != nums[j] {
                n = 0
                i += 1
                nums[i] = nums[j]
            } else {
                if n == 0 {
                    i += 1
                    nums[i] = nums[j]
                }
                
                n += 1
            }
        }
        
        return i + 1;
    }
}
