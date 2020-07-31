//
//  344_Reverse_String.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _344_Reverse_String: NSObject {
    func reverseString(_ s: inout [Character]) {
        for i: Int in 0..<s.count/2 {
            (s[i], s[s.count - 1 - i]) = (s[s.count - 1 - i], s[i])
        }
    }
}
