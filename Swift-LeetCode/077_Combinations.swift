//
//  077_Combinations.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _077_Combinations: NSObject {
    func traversal(_ n: Int, _ k: Int, _ start: Int, _ currList: inout [Int], _ results: inout [[Int]]) {
        guard k > 0 else {
            results.append(currList)
            return
        }

        for i in (start+1)...(n-k+1) {
            currList.append(i)
            traversal(n, k-1, i, &currList, &results)
            currList.removeLast()
        }
    }

    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        guard n >= k else { return [] }

        var currList: [Int] = []
        var results: [[Int]] = []

        traversal(n, k, 0, &currList, &results)

        return results
    }
}
