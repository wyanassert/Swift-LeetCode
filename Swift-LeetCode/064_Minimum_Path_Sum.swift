//
//  064_Minimum_Path_Sum.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _64_Minimum_Path_Sum: NSObject {
    func minPathSum(_ grid: [[Int]]) -> Int {
        let n = grid.count
        guard n > 0 else {
            return 0
        }
        let m = grid[0].count
        guard m > 0 else {
            return 0
        }
        
        var bp: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
        for i in 0..<n {
            for j in 0..<m {
                bp[i][j] = grid[i][j]
                if i == 0 && j == 0 {
                    bp[i][j] = grid[i][j]
                } else if i == 0 {
                    bp[i][j] = grid[i][j] + bp[i][j-1]
                } else if j == 0 {
                    bp[i][j] = grid[i][j] + bp[i-1][j]
                } else {
                    bp[i][j] = grid[i][j] + min(bp[i][j-1], bp[i-1][j])
                }
            }
        }
        return bp[n-1][m-1]
    }
}
