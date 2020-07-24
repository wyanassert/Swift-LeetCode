//
//  123_Best_Time_to_Buy_and_Sell_Stock_3.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _123_Best_Time_to_Buy_and_Sell_Stock_3: NSObject {
    
    func maxProfit(_ prices: [Int]) -> Int {
        return 0
    }
    
// 直接调用 121 题的解法  too Slow, O(N^2) 时间复杂度太高, TestCase199超时, 输入数组 length10000
    func onceOperate(_ prices: [Int], _ start: Int, _ end: Int) -> Int {
        guard end - start > 1 && start >= 0 && end <= prices.count else {
            return 0
        }
        
        var minPrice = prices[start]
        var profit = max(0, prices[1 + start] - minPrice)
        for i in start+2..<end {
            minPrice = min(minPrice, prices[i - 1])
            profit = max(prices[i] - minPrice, profit)
        }
        
        return profit
    }
    
    func maxProfit_use121(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        var result = 0
        
        guard prices.count > 3 else {
            return onceOperate(prices, 0, prices.count)
        }
        
        for i in 1...prices.count {
            let leftRes = onceOperate(prices, 0, i)
            let rightRes = onceOperate(prices, i, prices.count)
            
            result = max(result, rightRes + leftRes)
        }
        
        return result
    }
    
//  最开始想到的解法  too Slow, O(N^3) 时间复杂度太高, TestCase198超时, 输入数组 length1000
    func maxProfit_direct(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        var result = 0
        
        var resultMap: [[Int]] = Array(repeating: Array(repeating: 0, count: prices.count), count: prices.count);
        for i in 0..<(prices.count - 1) {
            resultMap[i][i+1] = prices[i+1] - prices[i]
            result = max(result, resultMap[i][i+1])
        }
        guard prices.count > 2 else {
            return result
        }
        
        for i in 0..<(prices.count - 1) {
            for j in (i+2)..<prices.count {
                resultMap[i][j] = resultMap[i][j-1] + resultMap[j-1][j]
                result = max(result, resultMap[i][j])
            }
        }
        
        guard prices.count > 3 else {
            return result
        }
        
        for i in 1..<prices.count-2 {
            var leftRes = 0
            for j in 0...i {
                for k in j+1..<(i + 1) {
                    leftRes = max(leftRes, resultMap[j][k])
                }
            }
            var rightRes = 0
            for j in i+1...prices.count-1 {
                for k in j+1..<prices.count {
                    rightRes = max(rightRes, resultMap[j][k])
                }
            }
            
            result = max(result, rightRes + leftRes)
        }
        
        return result
    }
}
