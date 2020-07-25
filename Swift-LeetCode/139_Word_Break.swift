//
//  139_Word_Break.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/25.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _139_Word_Break: NSObject {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        guard !s.isEmpty else {
            return false
        }
        
        var wordMap:[String:Bool] = [:]
        
        var maxLength = 0
        for word in wordDict {
            maxLength = max(maxLength, word.count)
            wordMap[word] = true
        }
        maxLength = min(s.count, maxLength)
        
        var dpList:[Bool] = Array(repeating: false, count: s.count)
        
        let cList = Array(s)
        for i in 0..<cList.count {
            var j = i
            var currStr: String = ""
            while j >= 0 && i - j + 1 <= maxLength {
                currStr = String(cList[j]) + currStr
                if j == 0 || dpList[j - 1] {
                    if let find = wordMap[currStr] {
                        dpList[i] = find
                        break
                    }
                }
                j -= 1
            }
        }
        
        return dpList.last!
    }
}
