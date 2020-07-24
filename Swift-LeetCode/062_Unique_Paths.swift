//
//  062_Unique_Paths.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _062_Unique_Paths: NSObject {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        guard m > 1, n > 1 else {
            return abs(m) * abs(n) > 0 ? 1 : 0
        }
        
        var bp: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
        for i in 0..<n {
            for j in 0..<m {
                if i * j == 0 {
                    bp[i][j] = 1
                } else {
                    bp[i][j] = bp[i - 1][j] + bp[i][j - 1]
                }
            }
        }
        
        return bp[n-1][m-1]
    }
}
