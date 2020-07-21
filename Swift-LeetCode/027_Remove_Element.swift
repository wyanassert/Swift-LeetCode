//
//  027_Remove_Element.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/20.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _27_Remove_Element: NSObject {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var begin: Int = 0
        for i in 0 ..< nums.count {
            if nums[i] != val {
                nums[begin] = nums[i]
                begin += 1
            }
        }
        return begin
    }
}
