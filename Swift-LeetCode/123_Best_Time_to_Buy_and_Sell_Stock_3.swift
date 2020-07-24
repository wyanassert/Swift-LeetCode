//
//  123_Best_Time_to_Buy_and_Sell_Stock_3.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _123_Best_Time_to_Buy_and_Sell_Stock_3: NSObject {
    
//  延续 122 dp 的思路, 增加数组一个维度 k(本题为 2)
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        let min = Int.min/2
        
        //每天有两个状态, 要么当天持有股票, 要么当天不持有, [k] 表示发生过多少次完整的交易, 即当天和以前卖了多少次
        var dpNot: [[Int]] = Array(repeating: [0,0,0], count: prices.count) //每一天当天不持有股票的收益, 可能是当天卖出, 也可能是昨天也没有持有
        var dpHas: [[Int]] = Array(repeating: [0,0,0], count: prices.count) //每一天当天持有股票的收益, 可能是当天买入了, 也可能是昨天持有的
        
        dpNot[0][0] = 0 //没有昨天, 第一天也不买
        dpNot[0][1] = min
        dpNot[0][2] = min
        dpHas[0][0] = -prices[0] //没有昨天, 只可能是第一天买入了, 收益为负数
        dpHas[0][1] = min
        dpHas[0][2] = min
        
        for i in 1..<prices.count  {
            for k in 0..<3 {
                if(k > 0) {
                    dpNot[i][k] = max(dpNot[i-1][k], dpHas[i-1][k - 1] + prices[i])
                } else {
                    dpNot[i][k] = dpNot[i-1][k]
                }
                dpHas[i][k] = max(dpNot[i-1][k] - prices[i], dpHas[i-1][k])
            }
        }
        
        return max(dpNot[prices.count-1][0], dpNot[prices.count-1][1], dpNot[prices.count-1][2])
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
