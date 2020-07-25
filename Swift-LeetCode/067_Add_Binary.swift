//
//  067_Add_Binary.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/25.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _067_Add_Binary: NSObject {
//    194 / 294 test cases passed. 长度过长..
//    "10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101"
//    "110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011"
//    func addBinary(_ a: String, _ b: String) -> String {
//        var aNum = 0
//        var bNum = 0
//
//        a.forEach { (c) in
//            aNum = aNum * 2 + Int(String(c))!
//        }
//        b.forEach { (c) in
//            bNum = bNum * 2 + Int(String(c))!
//        }
//
//        aNum += bNum
//        return String(aNum, radix: 2)
//    }
    func addBinary(_ a: String, _ b: String) -> String {

        var result = ""

        let aList = Array(a)
        let bList = Array(b)
        var add: Bool = false
        for i in 0..<(min(a.count, b.count)) {
            if let aNum = Int(String(aList[aList.count - 1 - i])), let bNum = Int(String(bList[bList.count - 1 - i])) {
                let tmpRes = aNum + bNum + (add ? 1 : 0)
                add = tmpRes >= 2
                let sumNum = tmpRes % 2
                result = String(sumNum) + result
            }
        }

        let longList = aList.count > bList.count ? aList : bList
        for i in (min(a.count, b.count))..<longList.count {
            if let num = Int(String(longList[longList.count - 1 - i])) {
                let tmpRes = num + (add ? 1 : 0)
                add = tmpRes >= 2
                let sumNum = tmpRes % 2
                result = String(sumNum) + result
            }
        }

        if add {
            result = "1" + result
        }

        return result
    }
}
