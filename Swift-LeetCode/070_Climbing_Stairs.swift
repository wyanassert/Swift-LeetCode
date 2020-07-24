//
//  070_Climbing_Stairs.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _070_Climbing_Stairs: NSObject {
    func climbStairs(_ n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        guard n > 1 else {
            return 1
        }
        guard n > 2 else {
            return 2
        }
        
        var t0 = 1
        var t1 = 2
        var result = t0 + t1
        var i = n - 2
        while i > 0 {
            result = t0 + t1
            t0 = t1
            t1 = result
            i -= 1
        }
        return result
    }
}
