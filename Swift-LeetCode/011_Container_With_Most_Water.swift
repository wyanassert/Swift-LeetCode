//
//  011_Container_With_Most_Water.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/4/18.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _11_Container_With_Most_Water: NSObject {
    func maxArea(_ height: [Int]) -> Int {
        var res = 0
        var i = 0, j = height.count - 1
        while i < j {
            res = max(res, (j - i) * (min(height[i], height[j])))
            if(height[i] < height[j]) {
                i += 1
            } else {
                j-=1
            }
        }
        return res
    }
}
