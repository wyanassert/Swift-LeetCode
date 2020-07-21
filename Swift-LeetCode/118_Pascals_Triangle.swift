//
//  118_Pascals_Triangle.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _118_Pascals_Triangle: NSObject {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 0 {
            return []
        } else if numRows == 1 {
            return [[1]]
        } else if numRows == 2 {
            return [[1], [1, 1]]
        } else {
            var results = [[Int]]()
            results.append([1])
            results.append([1, 1])
            for i in 2..<numRows {
                var tmpList = [Int]()
                for j in 0..<i+1 {
                    if j == 0 || j == i {
                        tmpList.append(1)
                    } else {
                        tmpList.append(results[i-1][j-1] + results[i-1][j])
                    }
                }
                results.append(tmpList)
            }
            return results;
        }
    }
}
