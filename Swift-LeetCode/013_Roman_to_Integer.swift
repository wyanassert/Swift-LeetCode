//
//  013_Roman_to_Integer.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/4/18.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _13_Roman_to_Integer: NSObject {
    func romanToInt(_ s: String) -> Int {
        let sArray = Array(s)
        var isSkip : Bool = false
        
        var res : Int = 0
        
        for i in 0..<sArray.count {
            if(isSkip) {
                isSkip = false
                continue
            }
            if(sArray[i] == "I") {
                if(i < sArray.count - 1) {
                    if(sArray[i+1] == "V") {
                        isSkip = true
                        res += 4
                    } else if(sArray[i+1] == "X") {
                        isSkip = true
                        res += 9
                    } else {
                        res += 1
                    }
                } else {
                    res += 1
                }
            } else if(sArray[i] == "X") {
                if(i < sArray.count - 1) {
                    if(sArray[i+1] == "L") {
                        isSkip = true
                        res += 40
                    } else if(sArray[i+1] == "C") {
                        isSkip = true
                        res += 90
                    } else {
                        res += 10
                    }
                } else {
                    res += 10
                }
            } else if(sArray[i] == "C") {
                if(i < sArray.count - 1) {
                    if(sArray[i+1] == "D") {
                        isSkip = true
                        res += 400
                    } else if(sArray[i+1] == "M") {
                        isSkip = true
                        res += 900
                    } else {
                        res += 100
                    }
                } else {
                    res += 100
                }
            } else if(sArray[i] == "V") {
                res += 5
            } else if(sArray[i] == "L") {
                res += 50
            } else if(sArray[i] == "D") {
                res += 500
            } else if(sArray[i] == "M") {
                res += 1000
            }
        }
        return res
    }
}
