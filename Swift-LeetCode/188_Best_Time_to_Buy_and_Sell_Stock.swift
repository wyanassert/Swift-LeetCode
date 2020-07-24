//
//  188_Best_Time_to_Buy_and_Sell_Stock.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _188_Best_Time_to_Buy_and_Sell_Stock: NSObject {
    func maxProfit(_ k: Int, _ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        if k * 2 >= prices.count {
            var minPrice = prices[0]
            var profit = 0
            for i in 1..<prices.count {
                if prices[i] < minPrice {
                    minPrice = prices[i]
                } else if prices[i] > minPrice {
                    if(i < prices.count - 1 && prices[i + 1] < prices[i] || i == prices.count - 1) {
                        profit += prices[i] - minPrice
                        minPrice = Int.max
                    }
                }
            }
            return profit
        }
        
        let min = Int.min/2
        
//      dp[天数 days][0...k 购买总次数]
        var dpNot: [[Int]] = Array(repeating: Array(repeating: 0, count: k+1), count: prices.count)
        var dpHas: [[Int]] = Array(repeating: Array(repeating: 0, count: k+1), count: prices.count)
        for i in 0...k {
            dpNot[0][i] = i == 0 ? 0 : min
            dpHas[0][i] = i == 0 ? -prices[0] : min
        }
        
        var maxProfit = 0
        
        for i in 1..<prices.count  {
            for j in 0...k {
                if(j > 0) {
                    dpNot[i][j] = max(dpNot[i-1][j], dpHas[i-1][j - 1] + prices[i])
                } else {
                    dpNot[i][j] = dpNot[i-1][j]
                }
                dpHas[i][j] = max(dpNot[i-1][j] - prices[i], dpHas[i-1][j])
                
                if i == prices.count - 1 {
                    maxProfit = max(maxProfit, dpNot[i][j])
                }
            }
        }
        
        return maxProfit
    }
}
