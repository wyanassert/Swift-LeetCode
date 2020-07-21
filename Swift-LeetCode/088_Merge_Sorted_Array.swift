//
//  088_Merge_Sorted_Array.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _88_Merge_Sorted_Array: NSObject {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var index1 = m - 1;
        var index2 = n - 1;
        
        var i = m + n - 1;
        
        while i >= 0 {
            if index1 >= 0 && index2 >= 0 {
                if nums1[index1] >= nums2[index2] {
                    nums1[i] = nums1[index1]
                    index1 -= 1
                } else {
                    nums1[i] = nums2[index2]
                    index2 -= 1
                }
            } else if index1 >= 0 {
                nums1[i] = nums1[index1]
                index1 -= 1
            } else {
                nums1[i] = nums2[index2]
                index2 -= 1
            }
            i -= 1
        }
    }
}
