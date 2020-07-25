//
//  135_Candy.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/25.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _135_Candy: NSObject {
    func candy(_ ratings: [Int]) -> Int {
        guard !ratings.isEmpty else {
            return 0
        }
        var candyList = Array(repeating: 1, count: ratings.count)
        
        var lastRate = ratings.first!
        for i in 1..<ratings.count {
            if ratings[i] > lastRate {
                candyList[i] = candyList[i-1] + 1
            }
            lastRate = ratings[i]
        }
        lastRate = ratings.last!
        for i in (0..<ratings.count-1).reversed() {
            if ratings[i] > lastRate {
                //可能本来就比后边一个多了
                candyList[i] = max(candyList[i+1]+1, candyList[i])
            }
            lastRate = ratings[i]
        }
        
        var candys = 0
        candyList.forEach {candys += $0}
        return candys
    }
}
