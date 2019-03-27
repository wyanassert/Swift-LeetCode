//
//  007_Revease_Integer.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/27.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _07_Revease_Integer: NSObject {
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
