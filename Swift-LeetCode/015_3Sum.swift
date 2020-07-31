//
//  015_3Sum.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _15_3Sum: NSObject {
//    - [ ] 基本解法, 先排序, 然后I 从 0..<coun-2 遍历
//        - [ ] 每一次遍历中使用双指针, j = i+1, k = count-1
//        - [ ] 只要j<k, 判断 nums[i] + num[j] + nums[k] 与 0 的大小
//            - [ ] 若大于 0, k-=1, 若小于 0, j += 1
//            - [ ] 若等于 0, 记录 nums[i,j,k] 作为结果之一, 同时 j 右移, 跳过所有相同值来避免重复结果, k 左移, 也要避免重复值
//        - [ ] J < k 不满足, 这次遍历结束, i 右移, 同样要跳过重复值
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted { (_ num1: Int, _ num2: Int) -> Bool in
            return num1 < num2
        }
        
        var results: [[Int]] = []
        let size = nums.count
        
        if(size < 3) {
            return results
        }
        
        var i = 0;
        while i < size - 2 {
            var left = i + 1;
            var right = size - 1;
            while left < right {
                if sortedNums[i] + sortedNums[left] + sortedNums[right] < 0 {
                    left += 1
                } else if sortedNums[i] + sortedNums[left] + sortedNums[right] == 0 {
                    results.append([sortedNums[i], sortedNums[left], sortedNums[right]])
                    repeat {
                        left += 1
                    } while left < right && sortedNums[left - 1] == sortedNums[left]
                    repeat {
                        right -= 1
                    } while left < right && sortedNums[right + 1] == sortedNums[right]
                } else {
                    right -= 1
                }
            }
            
            repeat {
                i += 1
            } while i < size - 1 && sortedNums[i - 1] == sortedNums[i]
        }
        
        return results;
    }
}
