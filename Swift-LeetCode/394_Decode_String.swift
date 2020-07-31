//
//  394_Decode_String.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _394_Decode_String: NSObject {
//    - [ ] 使用栈来解题
//        - [ ] 遍历每一个数字,
//            - [ ] 遇到数字, 就将数字入栈(数字可能不止一位数)
//            - [ ] 遇到 [, 将[ 入栈
//            - [ ] 遇到字母, 将字母入栈
//            - [ ] 遇到], 一直出站并将字母连起来知道]出栈, 然后读取栈顶的数字, 构造循环字符串, 将该字符串入栈
//        - [ ] 遍历结束, 一直出栈, 构造结果即可
    func decodeString(_ s: String) -> String {
        var stack: [String] = []
        
        var tmpNum = 0
        
        for c in Array(s) {
            if let number = c.wholeNumberValue {
                tmpNum = tmpNum * 10 + number
            } else {
                if tmpNum > 0 {
                    stack.append(String(tmpNum))
                    tmpNum = 0
                }
                if c == "[" {
                    stack.append(String(c))
                } else if c == "]" {
                    var tmpStr = ""
                    while !stack.isEmpty {
                        let top = stack.removeLast()
                        if top == "[" {
                            if let number = Int(stack.removeLast()) {
                                var loopStr = ""
                                if number > 0 {
                                    for _ in 0..<number {
                                        loopStr += tmpStr
                                    }
                                }
                                stack.append(loopStr)
                                break
                            }
                        } else {
                            tmpStr = top + tmpStr
                        }
                    }
                } else {
                    stack.append(String(c))
                }
            }
        }
        
        var tmpStr = ""
        while !stack.isEmpty {
            tmpStr = stack.removeLast() + tmpStr
        }
        
        return tmpStr
    }
}
