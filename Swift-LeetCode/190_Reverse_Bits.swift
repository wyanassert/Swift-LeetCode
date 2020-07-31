//
//  190_Reverse_Bits.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _190_Reverse_Bits: NSObject {
    func reverseBits(_ n: Int) -> Int {
        var result = 0
        var origin = n
        var step = 0
        while origin != 0 {
            result <<= 1
            result += origin & 1
            origin >>= 1
            step += 1
        }
        result <<= (32-step)
        return result
    }
}
