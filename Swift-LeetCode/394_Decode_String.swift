//
//  394_Decode_String.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _394_Decode_String: NSObject {
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
