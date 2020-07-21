//
//  066_Plus_One.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _66_Plus_One: NSObject {
    func plusOne(_ digits: [Int]) -> [Int] {
        var one: Int = 0
        var results = [Int]()
        for i in (0..<digits.count).reversed() {
            var currVal: Int = 0
            if(i == digits.count - 1) {
                currVal = digits[i] + 1
            } else {
                currVal = digits[i] + one
            }
            results.append(currVal%10)
            one = currVal >= 10 ? 1 : 0
        }
        if(one > 0) {
            results.append(1)
        }
        return results.reversed()
    }
//    too Large for instance [6,1,4,5,3,9,0,1,9,5,1,8,6,7,0,5,5,4,3]
//    func plusOne(_ digits: [Int]) -> [Int] {
//        var value: Int = 0
//        var scale: Int = 1;
//        for num in digits.reversed() {
//            value += scale * num
//            scale *= 10
//        }
//
//        value += 1
//
//        var results = [Int]()
//        while value != 0 {
//            results.append(value%10)
//            value /= 10
//        }
//        return results.reversed();
//    }
}
