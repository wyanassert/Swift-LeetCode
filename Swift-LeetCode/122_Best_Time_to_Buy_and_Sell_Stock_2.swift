//
//  122_Best_Time_to_Buy_and_Sell_Stock_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/24.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _122_Best_Time_to_Buy_and_Sell_Stock_2: NSObject {
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
