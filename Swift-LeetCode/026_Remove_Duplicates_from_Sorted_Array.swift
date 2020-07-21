//
//  026_Remove_Duplicates_from_Sorted_Array.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/20.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _26_Remove_Duplicates_from_Sorted_Array: NSObject {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i: Int = 0
        if(nums.count == 0) {
            return 0
        }
        for j in 1 ..< nums.count {
            if(nums[i] != nums[j]) {
                i+=1
                nums[i] = nums[j]
            }
        }
        return i + 1;
    }
}
