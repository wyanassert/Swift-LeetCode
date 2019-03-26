//
//  001_two_sum.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/26.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _01_two_sum: NSObject {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int : Int]()
        var result = [Int]()
        
        for i in 0..<nums.count {
            let num = nums[i]
            let find = target - num
            let findIndex = hashMap[find]
            if findIndex == nil {
                hashMap[num] = i
            } else {
                result.append(findIndex ?? 0)
                result.append(i)
            }
        }
        
        return result
    }
}
