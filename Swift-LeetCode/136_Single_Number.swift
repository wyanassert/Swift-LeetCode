//
//  136_Single_Number.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/29.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _136_Single_Number: NSObject {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            result ^= num
        }
        return result
    }
}
