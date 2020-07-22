//
//  191_Number_of_1_Bits.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _191_Number_of_1_Bits: NSObject {
    //本体尽量减少代码, 比如 这句话 count += x & 1 通常会写一个 if 判断x & 1 > 0 再让 count++, 但是这一部非常耗时, 直接将 x&1 加到 count 上时间由 20ms 降到了 0ms
    func hammingWeight(_ n: Int) -> Int {
        var x = n
        var count = 0
        while x > 0 {
            count += x & 1
            x >>= 1
        }
        return count
    }
}
