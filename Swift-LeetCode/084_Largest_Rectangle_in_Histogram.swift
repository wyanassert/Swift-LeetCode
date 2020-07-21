//
//  084_Largest_Rectangle_in_Histogram.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _84_Largest_Rectangle_in_Histogram: NSObject {
    //参考 https://github.com/diwu/LeetCode-Solutions-in-Swift/blob/master/Solutions/Solutions/Hard/Hard_084_Largest_Rectangle_In_Histogram.swift
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
    
    //希望剪枝来暴力算, 结果 95 / 96 test cases passed. 最后一个超时.
//    func largestRectangleArea(_ heights: [Int]) -> Int {
//        var maxArea: Int = 0
//
//        for i in 0..<heights.count {
//            if i < heights.count - 1 && heights[i] < heights[i+1] {
//                continue
//            }
//
//            var minH = heights[i]
//            for j in (0..<i+1).reversed() {
//                minH = min(minH, heights[j])
//                maxArea = max(maxArea, (i - j + 1) * minH)
//            }
//        }
//
//        return maxArea;
//    }
}
