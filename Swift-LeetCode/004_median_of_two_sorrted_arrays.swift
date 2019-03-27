//
//  004_median_of_two_sorrted_arrays.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/27.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _04_median_of_two_sorrted_arrays: NSObject {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var array : [Int] = [Int]()
        array += nums1
        array += nums2
        let allNums = array.sorted { (a, b) -> Bool in
            a <= b
        }
        if allNums.count == 0 {
            return 0;
        } else if allNums.count % 2 == 0 {
            return Double(allNums[allNums.count/2] + allNums[allNums.count/2 - 1])/2
        } else {
            return Double(allNums[(allNums.count - 1)/2])
        }
    }
}
