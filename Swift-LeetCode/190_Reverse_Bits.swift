//
//  190_Reverse_Bits.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _190_Reverse_Bits: NSObject {
//    - [ ] 每次  先把 res 左移一位 再将跟 1 & 操作的结果加到 res 中, 再将 n右移一位
//    - [ ] 当 n 等于 0 时候结束循环, 左移 res 直到左移操作满 32 次 输出 res
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
