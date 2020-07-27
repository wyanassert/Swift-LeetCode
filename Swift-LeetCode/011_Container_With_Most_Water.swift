//
//  011_Container_With_Most_Water.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/4/18.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _011_Container_With_Most_Water: NSObject {
    
    //双指针解法 i 从左往右, j 从右往左, 然后更改较小的哪一个, 知道 i, j 相遇结束循环
    func maxArea(_ height: [Int]) -> Int {
        var res = 0
        var i = 0, j = height.count - 1
        while i < j {
            res = max(res, (j - i) * min(height[j], height[i]))
            if height[j] < height[i] {
                j -= 1
            } else {
                i += 1
            }
        }
        return res
    }
//    func maxArea(_ height: [Int]) -> Int {
//        var res = 0
//        var i = 0, j = height.count - 1
//        while i < j {
//            res = max(res, (j - i) * (min(height[i], height[j])))
//            if(height[i] < height[j]) {
//                i += 1
//            } else {
//                j -= 1
//            }
//        }
//        return res
//    }
}
