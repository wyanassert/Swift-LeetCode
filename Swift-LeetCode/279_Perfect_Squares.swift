//
//  279_Perfect_Squares.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _279_Perfect_Squares: NSObject {
    func numSquares(_ n: Int) -> Int {
        guard n > 0 else {
            return 0
        }
        var dp: [Int] = Array(repeating: Int.max, count: n + 1)
        dp[0] = 0
        for i in 0...n {
            var j = 1
            while i + j * j <= n {
                dp[i + j * j] = min(dp[i + j * j], dp[i] + 1)
                j += 1
            }
        }
        
        return dp[n]
    }
}
