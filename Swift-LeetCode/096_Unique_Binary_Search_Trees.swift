//
//  096_Unique_Binary_Search_Trees.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _096_Unique_Binary_Search_Trees: NSObject {
    func numTrees(_ n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        
        var dp: [Int] = Array(repeating: 0, count: n + 1)
        dp[0] = 1
        for i in 1...n {
            for j in 0..<i {
                dp[i] += dp[j] * dp[i - 1 - j]
            }
        }
        return dp[n]
    }
}
