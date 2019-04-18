//
//  012_Integer_to_Roman.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/4/18.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _12_Integer_to_Roman: NSObject {
    func intToRoman(_ num: Int) -> String {
        var n = num
        let numMap:[Int : String] = [1:"I", 5:"V", 10:"X", 50:"L", 100:"C", 500:"D", 1000:"M"];
        let numArr:[Int] = [1, 5, 10, 50, 100, 500, 1000]
        var res : String = ""
        while n != 0 {
            var tmpNum = 0
            var largeNum = 0
            var smallNum = 0
            var canUseMax = false
            for i in (0..<numArr.count).reversed() {
                let maxNum = numArr[i]
                if(n >= maxNum) {
                    tmpNum = maxNum
                    if(i > 0) {
                        smallNum = numArr[i - 1]
                    }
                    break
                } else {
                    largeNum = maxNum
                    canUseMax = i%2 == 0
                }
            }
            if canUseMax && largeNum > 0 && n + smallNum >= largeNum {
                res += numMap[smallNum]! + numMap[largeNum]!
                n -= (largeNum - smallNum)
            } else {
                let tmpRepeat = n / tmpNum
                if tmpRepeat < 4 {
                    for _ in 0..<tmpRepeat {
                        res += numMap[tmpNum]!
                    }
                } else {
                    res += numMap[tmpNum]! + numMap[largeNum]!
                }
                n -= tmpRepeat * tmpNum
            }
        }
        
        return res;
    }
}
