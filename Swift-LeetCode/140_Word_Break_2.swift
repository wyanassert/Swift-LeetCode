//
//  140_Word_Break_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/25.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _140_Word_Break_2: NSObject {
    func backtrace(_ cList:[Character], _ wordMap:[String:Bool], _ dpList: [[Bool]], _ results: inout [String], _ start: Int, _ currRes: String) {
        guard start < cList.count else {
            results.append(currRes)
            return
        }

        for i in start..<cList.count {
            if dpList[start][i] {
                var alreadyRes = ""
                for k in start...i {
                    alreadyRes += String(cList[k])
                }
                if let _ = wordMap[alreadyRes] {
                    if currRes.count > 0 {
                        alreadyRes = currRes + " " + alreadyRes
                    }
                    backtrace(cList, wordMap, dpList, &results, i + 1, alreadyRes)
                }
            }
        }
    }
    
    func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
        guard !s.isEmpty else {
            return []
        }
        var wordMap:[String:Bool] = [:]
        
        var maxLength = 0
        for word in wordDict {
            maxLength = max(maxLength, word.count)
            wordMap[word] = true
        }
        maxLength = min(s.count, maxLength)
        
        var dpList:[[Bool]] = Array(repeating: Array(repeating: false, count: s.count), count: s.count)
        let cList = Array(s)
        //dp[i][j] 表示 s[i]到 s[j]是满足条件的, 比如 s="leetcode", wordDict=["leet", "code"], dp[0][4],dp[0][7], dp[4][7]是满足条件的
        for i in 0..<cList.count {
            for j in i..<cList.count {
                var k = j
                var currString = ""
                while k >= i && j - k + 1 <= maxLength {
                    currString = String(cList[k]) + currString
                    if k == i || dpList[i][k-1] {
                        if let find = wordMap[currString] {
                            dpList[i][j] = find
                            break
                        }
                    }
                    k -= 1
                }
            }
        }
        
        var results: [String] = []
        if dpList[0][cList.count-1] {
            backtrace(cList, wordMap, dpList, &results, 0, "")
        }
        
        return results
    }
}
