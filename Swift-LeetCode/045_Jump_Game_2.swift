//
//  045_Jump_Game_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/25.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _045_Jump_Game_2: NSObject {
    func jump(_ nums: [Int]) -> Int {
        var step = 0
        var index = 0
        var currMax = 0
        var nextMax = 0
        
        while index < nums.count {
            if currMax >= nums.count - 1 {
                return step
            }
            while index <= currMax {
                nextMax = max(nextMax, index + nums[index])
                index += 1
            }
            currMax = nextMax
            step += 1
        }
        return step
    }
    
//    LeetCode 看到的答案 思路不是很容易理解
//    func jump(_ nums: [Int]) -> Int {
//        var maxPosition = 0
//        var levelMax = 0
//        var level = 0
//
//        for i in 0..<nums.count-1 {
//            maxPosition = max(maxPosition, i + nums[i]);
//            if i == levelMax {
//                level += 1
//                levelMax = maxPosition
//            }
//        }
//
//        return level
//    }
}
