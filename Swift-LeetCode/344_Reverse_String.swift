//
//  344_Reverse_String.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _344_Reverse_String: NSObject {
//    - [ ] 双指针, left right 往中间靠, 交换
//    - [ ] 甚至 right 直接用 count-left-1, left < count/2 表示只用一个指针即可
    func reverseString(_ s: inout [Character]) {
        for i: Int in 0..<s.count/2 {
            (s[i], s[s.count - 1 - i]) = (s[s.count - 1 - i], s[i])
        }
    }
}
