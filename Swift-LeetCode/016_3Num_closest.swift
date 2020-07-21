//
//  016_3Num_closest.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _16_3Num_closest: NSObject {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let sortedNums = nums.sorted { (num1, num2) -> Bool in
            return num1 < num2
        }
        
        var currDistance: Int = sortedNums[0] + sortedNums[1] + sortedNums[2]
        
        let size = nums.count
        
        for i  in 0..<size - 2 {
            var left =  i + 1;
            var right = size - 1
            while left < right {
                let tmpDistance: Int = sortedNums[left] + sortedNums[i] + sortedNums[right]
                if(abs(tmpDistance - target) == 0) {
                    return tmpDistance
                } else if abs(tmpDistance - target) < abs(currDistance - target) {
                    currDistance = tmpDistance;
                }
                
                if(tmpDistance < target) {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        
        return currDistance
    }
}
