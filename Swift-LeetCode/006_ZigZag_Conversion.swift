//
//  006_ZigZag_Conversion.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/27.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _06_ZigZag_Conversion: NSObject {
    func convert(_ s: String, _ numRows: Int) -> String {
        if(numRows == 1) {
            return s
        }
        var resMap = [[Character]]()
        for _ in 0..<numRows {
            resMap.append([Character]())
        }
        
        let cArray = Array(s)
        
        for i in 0..<cArray.count {
            let m = i%(2*numRows-2)
            let n = m < numRows ? m : 2*numRows-2-m;
            resMap[n].append(cArray[i])
        }
        
        var resStr = String()
        for subArray in resMap {
            for c in subArray {
                resStr.append(String(c))
            }
        }
        
        return resStr
    }
}
