//
//  912_Sort_an_Array.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/8/18.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _912_Sort_an_Array: NSObject {
//  双路快排
    func quickSort(_ array: inout [Int], _ left: Int, _ right: Int) {
        guard left < right else {
            return
        }
        
//        let random = Int.random(in: left...right)
//        array.swapAt(left, random)
        
        let key = array[left]
        var i = left
        var j = right
        
        while i < j {
            while i < j && array[j] >= key {
                j -= 1
            }
            array.swapAt(i, j)
            
            while i < j && array[i] <= key {
                i += 1
            }
            array.swapAt(i, j)
        }
        
    
        quickSort(&array, left, i - 1)
        quickSort(&array, i + 1, right)
    }
    
    func sortArray(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else {
            return nums
        }
        var array = nums
        quickSort(&array, 0, array.count-1)
        return array
    }

//    选择排序 Time Limit Exceeded 10/11
//    func sortArray(_ nums: [Int]) -> [Int] {
//        guard nums.count > 1 else {
//            return nums
//        }
//        var array = nums
//        for i in 0..<array.count {
//            var minVal = Int.max
//            var minIndex = Int.max
//            for j in i..<array.count {
//                if array[j] < minVal {
//                    minVal = array[j]
//                    minIndex = j
//                }
//            }
//            if minVal < Int.max && minIndex < array.count {
//                array.swapAt(i, minIndex)
//            }
//        }
//        return array
//    }
    
//    插入排序 Time Limit Exceeded 9/11
//    func sortArray(_ nums: [Int]) -> [Int] {
//        guard nums.count > 1 else {
//            return nums
//        }
//        var array = nums
//        for i in 0..<array.count {
//            let tmp = array[i]
//            for j in (0..<i).reversed() {
//                if array[j] > tmp {
//                    array.swapAt(j, j + 1)
//                } else {
//                    array[j + 1] = tmp
//                    break
//                }
//            }
//        }
//        return array
//    }
    
//    冒泡排序 Time Limit Exceeded 10/11
//    func sortArray(_ nums: [Int]) -> [Int] {
//        guard nums.count > 1 else {
//            return nums
//        }
//        var array = nums
//        for i in 0..<(array.count-1) {
//            for j in 0..<(array.count - i - 1) {
//                if array[j] > array[j + 1] {
//                    (array[j], array[j + 1]) = (array[j + 1], array[j])
//                }
//            }
//        }
//        return array
//    }
}
