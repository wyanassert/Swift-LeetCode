//
//  231_Power_of_Two.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _231_Power_of_Two: NSObject {
    func isPowerOfTwo(_ n: Int) -> Bool {
        guard n > 0 else {
            return false
        }
        var x = n
        var result = false
        while x > 0 {
            if x & 1 > 0 {
                if result {
                    return false
                } else {
                    result = true
                }
            }
            x >>= 1
        }
        return result
    }
//    一直取余, 判断余数是否为 0 然后除以二, 以上是通过位运算, 二进制中只能有一个 1
//    func isPowerOfTwo(_ n: Int) -> Bool {
//        guard n > 0 else {
//            return false
//        }
//        var x = n
//        while x > 1 {
//            if x % 2 != 0 {
//                return false
//            }
//            x /= 2
//        }
//        return true
//    }
}
