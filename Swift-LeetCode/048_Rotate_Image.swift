//
//  048_Rotate_Image.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/29.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _048_Rotate_Image: NSObject {
    func rotate(_ matrix: inout [[Int]]) {
        var i = 0
        for list in matrix.reversed() {
            for j in 0..<list.count {
                matrix[j][i] = list[j]
            }
            i += 1
        }
    }
}
