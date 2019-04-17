//
//  008_String_to_Interger.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/28.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _08_String_to_Interger: NSObject {
    func myAtoi(_ str: String) -> Int {
        var sign : Int?
        var base : Int = 0
        
        let nowMaxVal = INT32_MAX / 10;
        let nowMaxDelta = INT32_MAX % 10;
        
        for cStr in str {
            guard cStr != "+" else {
                if let unknowSign = sign {
                    return base * unknowSign;
                } else {
                    sign = 1
                    continue
                }
            }
            guard cStr != "-" else {
                if let unknowSign = sign {
                    return base * unknowSign;
                } else {
                    sign = -1
                    continue
                }
            }
            guard cStr != " " else {
                if sign == nil {
                    continue
                } else {
                    return base * sign!
                }
            }
            
            guard let intVal = Int(String(cStr)) else {
                var unknowSign = 1
                if sign == nil {
                    unknowSign = 1
                } else {
                    unknowSign = sign!
                }
                return base * unknowSign;
            }
            
            if sign == nil {
                sign = 1
            }
            
            if sign == -1 {
                if(base > nowMaxVal || (base == nowMaxVal && intVal > nowMaxDelta)) {
                    return Int(Int32.min)
                }
            } else {
                if(base > nowMaxVal || (base == nowMaxVal && intVal >= nowMaxDelta)) {
                    return Int(Int32.max)
                }
            }
            
            base = intVal + 10 * base
        }
        
        if sign == nil {
            sign = 1
        }
        
        
        return base * sign!;
    }
}
