//
//  003_longest_substring_without_repeat_char.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/26.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _03_longest_substring_without_repeat_char: NSObject {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var haspMap = [Character : Int]()
        var maxLen = 0;
        var tmpBlock = 0
        
        var i:Int = 0
        
        for curChar in s {
            let n:Int = haspMap[curChar] ?? -1
            if n != -1 && n >= tmpBlock {
                tmpBlock = n + 1;
                haspMap[curChar] = i;
            } else {
                maxLen = max(maxLen, i - tmpBlock + 1)
                haspMap[curChar] = i;
            }
            i += 1
        }
        
        return maxLen
    }
}
