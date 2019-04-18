//
//  014_Longest_Common_Prefix.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/4/18.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _14_Longest_Common_Prefix: NSObject {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        
        var shortestString = strs.first!
        var shortestLength = shortestString.count
        
        for string in strs {
            let charCount = string.count
            if charCount == 0 {
                return ""
            }
            if charCount < shortestLength {
                shortestLength = charCount
                shortestString = string
            }
        }
        
        var prefix = shortestString
        
        for string in strs {
            while !string.hasPrefix(prefix) {
                prefix = String(prefix[..<prefix.index(prefix.endIndex, offsetBy: -1)])
                
                if prefix.isEmpty {
                    return ""
                }
            }
        }
        
        return prefix
    }
}
