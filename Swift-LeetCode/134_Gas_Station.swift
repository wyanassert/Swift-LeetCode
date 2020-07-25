//
//  134_Gas_Station.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/25.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _134_Gas_Station: NSObject {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        guard !gas.isEmpty && !cost.isEmpty else {
            return -1
        }
        var sumFromCurr = 0
        var sumTotal = 0
        
        var k = 0
        
        for i in 0..<gas.count {
            sumFromCurr += gas[i] - cost[i]
            sumTotal += gas[i] - cost[i]
            if sumFromCurr < 0 {
                sumFromCurr = 0
                k = i + 1
            }
        }
        if sumTotal >= 0 && k < gas.count {
            return k
        } else {
            return -1
        }
    }
}
