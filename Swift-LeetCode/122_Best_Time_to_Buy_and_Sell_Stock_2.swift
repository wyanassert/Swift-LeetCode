//
//  122_Best_Time_to_Buy_and_Sell_Stock_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _122_Best_Time_to_Buy_and_Sell_Stock_2: NSObject {
    // DP 解法
    func maxProfit_dp(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        //每天有两个状态, 要么当天持有股票, 要么当天不持有
        var dpNot: [Int] = Array(repeating: 0, count: prices.count) //每一天当天不持有股票的收益, 可能是当天卖出, 也可能是昨天也没有持有
        var dpHas: [Int] = Array(repeating: 0, count: prices.count) //每一天当天持有股票的收益, 可能是当天买入了, 也可能是昨天持有的
        
        dpNot[0] = 0 //没有昨天, 第一天也不买
        dpHas[0] = -prices[0] //没有昨天, 只可能是第一天买入了, 收益为负数
        
        for i in 1..<prices.count {
            dpNot[i] = max(dpHas[i-1] + prices[i], dpNot[i-1])
            dpHas[i] = max(dpHas[i-1], dpNot[i] - prices[i])
        }
        
        return dpNot.last!
    }
    
    //直观解法, 先找到第一个开始上升的数, 买入, 找到连续上升数中最后一个上升的数, 卖出, 一直这么操作, 收益叠加
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
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
}
