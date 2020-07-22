//
//  268_Missing_Number.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _268_Missing_Number: NSObject {
    func missingNumber(_ nums: [Int]) -> Int {
        var x: Int = 0
        for i in 0...nums.count {
            x ^= i
            if i < nums.count {
                x ^= nums[i]
            }
        }
        return x
    }
//    直接用 (n+1)*n - nums[0..<n] 上面的解法异或运算比下面的加减运算更快 都是 O(n)
//    func missingNumber(_ nums: [Int]) -> Int {
//        var sum = (nums.count + 1)*nums.count/2
//        nums.forEach { (num) in
//            sum -= num
//        }
//        return sum
//    }
}
