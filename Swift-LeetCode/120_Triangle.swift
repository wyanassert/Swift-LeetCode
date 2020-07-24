//
//  120_Triangle.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _120_Triangle: NSObject {
    func minimumTotal(_ triangle: [[Int]]) -> Int {
        guard triangle.count > 0 else {
            return 0
        }
        
        let row = triangle.count
        var dp: [Int] = Array(repeating: 0, count: row)
        
        for i in (0..<row).reversed() {
            for j in 0...i {
                if i == row - 1 {
                    dp[j] = triangle[i][j]
                } else {
                    dp[j] = triangle[i][j] + min(dp[j], dp[j + 1])
                }
            }
        }
        
        return dp[0]
    }
}
