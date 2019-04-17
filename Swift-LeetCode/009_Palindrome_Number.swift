//
//  009_Palindrome_Number.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/4/17.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _09_Palindrome_Number: NSObject {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        } else if x == 0 {
            return true;
        } else {
            var y = x
            var z = 0
            while y != 0 {
                z = z * 10 + y % 10
                y = y / 10
            }
            return z == x
        }
    }
}
