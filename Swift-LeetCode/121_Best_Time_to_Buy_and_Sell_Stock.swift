//
//  121_Best_Time_to_Buy_and_Sell_Stock.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _121_Best_Time_to_Buy_and_Sell_Stock: NSObject {
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
