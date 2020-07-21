//
//  085_Maximal_Rectangle.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _85_Maximal_Rectangle: NSObject {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var stack:[Int] = []
        var maxArea = 0
        var topOfStack: Int
        var areaWithTop: Int
        var i = 0
        while i < heights.count {
            if stack.isEmpty || heights[stack.last!] <= heights[i] {
                stack.append(i)
                i += 1
            } else {
                topOfStack = stack.last!
                stack.removeLast()
                areaWithTop = heights[topOfStack] * (stack.isEmpty ? i : i - stack.last! - 1)
                if maxArea < areaWithTop {
                    maxArea = areaWithTop
                }
            }
        }
        while stack.isEmpty == false {
            topOfStack = stack.last!
            stack.removeLast()
            areaWithTop = heights[topOfStack] * (stack.isEmpty ? i : i - stack.last! - 1)
            if maxArea < areaWithTop {
                maxArea = areaWithTop
            }
        }
        return maxArea
    }
    func maximalRectangle(_ matrix: [[Character]]) -> Int {
        if(matrix.count == 0) {
            return 0
        }
        var maxArea = 0
        
        let m: Int = matrix.count
        let n: Int = matrix[0].count
        
        var heights: [Int] = []
        for _ in 0 ..< n {
            heights.append(0)
        }
        
        for i in 0 ..< m {
            for j in 0 ..< n {
                let c: Character = matrix[i][j]
                if c == "0" {
                    heights[j] = 0
                } else {
                    heights[j] += 1
                }
            }
            maxArea = max(maxArea, largestRectangleArea(heights))
        }
        
        return maxArea
    }
}
