//
//  065_Jump_Game.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/25.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _065_Jump_Game: NSObject {
    func canJump(_ nums: [Int]) -> Bool {
        guard !nums.isEmpty else {
            return true
        }
        
        var leftStep = nums[0]
        for i in 1..<nums.count {
            if leftStep <= 0 {
                return false
            }
            if leftStep <= nums[i] {
                leftStep = nums[i]
            } else {
                leftStep -= 1
            }
        }
        return true
    }
}
