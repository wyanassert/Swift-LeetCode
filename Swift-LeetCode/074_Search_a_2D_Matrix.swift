//
//  074_Search_a_2D_Matrix.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _74_Search_a_2D_Matrix: NSObject {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let m = matrix.count
        guard m > 0 else { return false }
        let n = matrix[0].count
        guard n > 0 else { return false }
        var lo = 0, hi = m * n - 1
        while lo < hi {
            let mid = (lo+hi)/2
            let r = mid/n
            let c = mid%n
            let midV = matrix[r][c]
            if target == midV { return true }
            else if target < midV { hi = mid - 1 }
            else { lo = mid + 1}
        }
        let r = lo/n, c = lo%n, midV = matrix[r][c]
        return midV == target
    }
    
    // 从右上角向左下角找, 上面用二分法会快很多 84ms->64ms
//    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
//        if matrix.count == 0 {
//            return false
//        } else if matrix[0].count == 0 {
//            return false
//        }
//
//        var row: Int = 0
//        var col: Int = matrix[0].count - 1
//        while row < matrix.count && col >= 0 {
//            if matrix[row][col] < target {
//                row += 1
//            } else if  matrix[row][col] > target {
//                col -= 1
//            } else {
//                return true
//            }
//        }
//        return false
//    }
}
