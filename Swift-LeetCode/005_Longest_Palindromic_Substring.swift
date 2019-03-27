//
//  005_Longest_Palindromic_Substring.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/27.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa

class _05_Longest_Palindromic_Substring: NSObject {
    var maxLen: Int = 0;
    var maxStr: String = ""
    var resMap:[[Int]] = [[Int]]()
    func judge(charArray:[Character], left : Int, right: Int) -> Bool {
        if resMap[left][right] == 2 {
            return true;
        } else if resMap[left][right] == 1 {
            return false;
        }
        if(left == right) {
            if maxLen == 0 {
                maxLen = 1;
                maxStr = String([charArray[left]])
            }
            resMap[left][right] = 2;
            return true;
        } else if (left + 1 == right) {
            let result:Bool = charArray[left] == charArray[right];
            if result {
                if maxLen < 2 {
                    maxLen = 2;
                    maxStr = String([charArray[left], charArray[left]])
                }
                resMap[left][right] = 2;
            } else {
                resMap[left][right] = 1;
            }
            return result;
        } else {
            if charArray[left] == charArray[right] {
                if judge(charArray: charArray, left: left + 1, right: right - 1) {
                    let currLen = right - left + 1;
                    if(currLen > maxLen) {
                        maxLen = currLen
                        var currStr:String = ""
                        for i in left..<(right+1) {
                            currStr = currStr + String(charArray[i])
                        }
                        maxStr = currStr
                    }
                    resMap[left][right] = 2;
                    return true;
                } else {
                    resMap[left][right] = 1;
                    return false;
                }
            } else {
                resMap[left][right] = 1;
                return false;
            }
        }
    }
    
    func judgeMore(charArray:[Character], left : Int, right: Int) -> Void {
        let isDouble:Bool = (left > 0 && right < charArray.count - 1) ? judge(charArray: charArray, left: left-1, right: right+1) : false
        if(isDouble) {
            judgeMore(charArray: charArray, left: left-1, right: right + 1)
        } else {
            let isLeft:Bool = left > 0 ? judge(charArray: charArray, left: left - 1, right: right) : false
            if isLeft {
                judgeMore(charArray: charArray, left: left-1, right: right)
            } else {
                let isRight:Bool = right < charArray.count - 1 ? judge(charArray: charArray, left: left, right: right + 1) : false
                if isRight {
                    judgeMore(charArray: charArray, left: left, right: right + 1)
                }
            }
        }
    }
    
    func longestPalindrome(_ s: String) -> String {
        if(s.count<=1) {
            return s
        }
        for i in 0..<s.count {
            resMap.append([Int]())
            for _ in 0..<s.count {
                resMap[i].append(0)
            }
        }
        
        let charArray:[Character] = Array(s)
        for i in 0..<s.count {
            if(i < maxLen) {
                continue;
            }
            if(i - maxLen > 2) {
                break
            }
            for j in 0..<s.count - i {
                if(judge(charArray: charArray, left: j, right: j+i)) {
                    judgeMore(charArray: charArray, left: j, right: j+i)
                    break
                }
            }
        }
        return maxStr
    }
}
