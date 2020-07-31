//
//  151_Reverse_Words_in_a_String.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _151_Reverse_Words_in_a_String: NSObject {
//    func reverseWords(_ s: String) -> String {
//        var tmpStr = ""
//
//        var stack: [String] = []
//
//        for c in Array(s) {
//            switch c {
//            case " ":
//                if tmpStr.count > 0 {
//                    stack.append(tmpStr)
//                    tmpStr = ""
//                }
//                break
//            default:
//                tmpStr += String(c)
//                break
//            }
//        }
//
//        if tmpStr.count > 0 {
//            stack.append(tmpStr)
//            tmpStr = ""
//        }
//
//        for i in 0..<stack.count {
//            if i == 0 {
//                tmpStr = stack[i]
//            } else {
//                tmpStr = stack[i] + " " + tmpStr
//            }
//        }
//
//        return tmpStr
//    }
    func reverseWords(_ s: String) -> String {
        var wordList = s.split(separator: " ")
        wordList.reverse()
        return wordList.joined(separator: " ")
    }
}
