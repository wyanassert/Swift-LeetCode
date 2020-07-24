//
//  063_Unique_Paths_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _63_Unique_Paths_2: NSObject {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        let n = obstacleGrid.count
        guard n > 0 else {
            return 0
        }
        let m = obstacleGrid[0].count
        guard m > 0 else {
            return 0
        }
        
        var bp: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
        for i in 0..<n {
            for j in 0..<m {
                if obstacleGrid[i][j] == 0 {
                    if i * j == 0 {
                        if i == 0 && j == 0 {
                            bp[i][j] = 1
                        } else if i == 0 {
                            bp[i][j] = bp[i][j-1]
                        } else {
                            bp[i][j] = bp[i-1][j]
                        }
                    } else {
                        bp[i][j] = bp[i - 1][j] + bp[i][j - 1]
                    }
                } else {
                    bp[i][j] = 0
                }
                
            }
        }
        return bp[n-1][m-1]
    }
}
