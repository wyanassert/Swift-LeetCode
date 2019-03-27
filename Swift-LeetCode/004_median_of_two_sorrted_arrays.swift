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
        if nums1.count == 0 {
            return nums2.count == 0 ? 0 : nums2.count % 2 != 0 ? Double(nums2[nums2.count/2]) : Double(nums2[nums2.count/2] + nums2[nums2.count/2 - 1])/2
        }
        if nums2.count == 0 {
            return nums1.count % 2 != 0 ? Double(nums1[nums1.count/2]) : Double(nums1[nums1.count/2] + nums1[nums1.count/2 - 1])/2
        }
        
        let isEven:Bool = (nums2.count + nums1.count)%2 == 1
        let halfIndex:Int = (nums2.count + nums1.count - (isEven ? 1 : 0))/2  + 1
        var numArray:[Int] = [Int]()
        
        var m:Int = 0
        var n:Int = 0
        
        for _ in 0..<halfIndex {
            if m < nums1.count && n < nums2.count {
                if nums1[m] < nums2[n] {
                    numArray.append(nums1[m])
                    m += 1
                } else {
                    numArray.append(nums2[n])
                    n += 1
                }
            } else if m < nums1.count {
                numArray.append(nums1[m])
                m += 1
            } else if n < nums2.count {
                numArray.append(nums2[n])
                n += 1
            }
        }
        
        if(isEven) {
            return Double(numArray[numArray.count - 1])
        } else {
            return Double(numArray[numArray.count - 1] + numArray[numArray.count - 2])/2
        }
    }
//built-in sort. Poor preformance
//    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
//        var array : [Int] = [Int]()
//        array += nums1
//        array += nums2
//        let allNums = array.sorted { (a, b) -> Bool in
//            a <= b
//        }
//        if allNums.count == 0 {
//            return 0;
//        } else if allNums.count % 2 == 0 {
//            return Double(allNums[allNums.count/2] + allNums[allNums.count/2 - 1])/2
//        } else {
//            return Double(allNums[(allNums.count - 1)/2])
//        }
//    }
}
