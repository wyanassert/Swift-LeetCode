//
//  121_Best_Time_to_Buy_and_Sell_Stock.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _121_Best_Time_to_Buy_and_Sell_Stock: NSObject {
//    - [ ] 迭代 贪心算法
//        - [ ] 维护一个变量记录当前天及之前最小的股票价格
//        - [ ] 从第二天开开始循环, 更新最大收益即可
//        - [ ] 系列第二题 可以买无数次, 思路是, 先找到第一个开始上升的数, 买入, 找到连续上升数中最后一个上升的数或者最后一天, 卖出, 一直这么操作, 收益叠加
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        
        var minPrice = prices[0]
        var profit = max(0, prices[1] - minPrice)
        for i in 2..<prices.count {
            minPrice = min(minPrice, prices[i - 1])
            profit = max(prices[i] - minPrice, profit)
        }
        
        return profit
    }
}
