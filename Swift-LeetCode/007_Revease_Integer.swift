//
//  007_Revease_Integer.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/27.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _07_Revease_Integer: NSObject {
//  直接每次result *= 10 + input%10, input /= 10 知道 input==0 为止, 但是在计算 result *=10 的时候可能会溢出, Swift Int 是 64 位, 所以不能用 Int.max 判断溢出而应该用 Int32,max 判断溢出, 同时, 如果为了兼容 32 位机器, 那应该在 乘算之前就判断 res 是不是大于 Int32.max 如果大于肯定溢出, 如果等于那么判断要加的 input%7 是否比 7 大, 之所以是 7 是因为 Int32.max(2^31)尾数是7, 同理, 输入小于 0 的时候在判断溢出要跟-8 比较
    func reverse(_ x: Int) -> Int {
        var input:Int = x
        var res:Int = 0
        while input != 0 {
            res = 10 * res + input%10
            input /= 10
        }
        return (res > Int32.max || res < Int32.min) ? 0 : res
    }
}
