//
//  010_Regular_Expression_Matching.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/4/17.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _10_Regular_Expression_Matching: NSObject {
    func subMatch(sArray : [Character], pArray : [Character], i : Int, j : Int) -> Bool {
        if i < 0 && j < 0 {
            return true
        } else if j < 0 {
            return false
        }
        if pArray[j] == "*" {
            if i >= 0 && (pArray[j-1] == sArray[i] || pArray[j-1] == ".") {
                if(subMatch(sArray: sArray, pArray: pArray, i: i - 1, j: j)) {
                    return true;
                }
            }
            return subMatch(sArray: sArray, pArray: pArray, i: i, j: j - 2)
        }
        if i >= 0 && (pArray[j] == "." || pArray[j] == sArray[i]) {
            return subMatch(sArray : sArray, pArray : pArray, i: i - 1, j: j - 1);
        }
        return false;
    }
    
    func isMatch(_ s: String, _ p: String) -> Bool {
        let m = s.count, n = p.count
        
        if m == 0 && n == 0 {
            return true
        } else if m == 0 {
            if n % 2 == 0 {
                var l = 0
                for cStr in p {
                    if l % 2 != 0 {
                        if cStr == "*" {
                            l += 1
                            continue
                        } else {
                            return false
                        }
                    } else {
                        l += 1
                        continue
                    }
                }
                return true
            } else {
                return false
            }
        } else if n == 0 {
            return false
        }
        
        let sArrray : [Character] = Array(s)
        let pArrray : [Character] = Array(p)
        
        
        
        return subMatch(sArray: sArrray, pArray: pArrray, i: sArrray.count - 1, j: pArrray.count - 1)
    }
}
