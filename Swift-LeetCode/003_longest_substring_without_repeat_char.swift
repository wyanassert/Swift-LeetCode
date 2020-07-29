//
//  003_longest_substring_without_repeat_char.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/26.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _03_longest_substring_without_repeat_char: NSObject {
//  redo problem 3
//  用一个 hash 表记录每一个字符最后出现的下标
//  设置 start 和 end 下标
//  start 为最左边一个没出现的重复字符串, 即最后一个出现的字符串的后一位, 初始为 0
//  end 每次后移一位, 即可以用 for 循环的 index 来代替, 如果当前字符没出现过, 直接更新结果(maxLength), 否则先更新 start, start 为该字符串上次出现的位置的后一位, 如果 start 已经比这个值大, 就不更新. 然后更新当前字符的位置为 i, 更新结果, 进入下一字符的判断
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var map: [Character : Int] = [:]
        var start: Int = 0
        var maxLength = 0
        
        let cList = Array(s)
        for i in 0..<cList.count {
            let c: Character = cList[i]
            let lastIndex: Int = map[c] ?? -1
            if lastIndex >= 0 {
                start = max(lastIndex + 1, start)
            }
            map[c] = i
            maxLength = max(i - start + 1, maxLength)
        }
        return maxLength
    }
    
//    func lengthOfLongestSubstring(_ s: String) -> Int {
//        var haspMap = [Character : Int]()
//        var maxLen = 0;
//        var tmpBlock = 0
//
//        var i:Int = 0
//
//        for curChar in s {
//            let n:Int = haspMap[curChar] ?? -1
//            if n != -1 && n >= tmpBlock {
//                tmpBlock = n + 1;
//                haspMap[curChar] = i;
//            } else {
//                maxLen = max(maxLen, i - tmpBlock + 1)
//                haspMap[curChar] = i;
//            }
//            i += 1
//        }
//
//        return maxLen
//    }
}
