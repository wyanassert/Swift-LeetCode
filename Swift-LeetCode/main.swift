//
//  main.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/26.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Foundation

//NSLog("%@", _01_two_sum().twoSum([2, 7, 11, 15], 9))


//let res2 = _002_add_two_number().addTwoNumbers(TreeHelper().convertListToListNode([2,4,3]), TreeHelper().convertListToListNode([5,6,4]))
//print(res2)

//print(_03_longest_substring_without_repeat_char().lengthOfLongestSubstring("aabaab!bb"), "3")
//print(_03_longest_substring_without_repeat_char().lengthOfLongestSubstring(""), "0")
//print(_03_longest_substring_without_repeat_char().lengthOfLongestSubstring("abcabcbb"), "3")
//print(_03_longest_substring_without_repeat_char().lengthOfLongestSubstring("pwwkew"), "3")
//print(_03_longest_substring_without_repeat_char().lengthOfLongestSubstring("bbbbb"), "1")
//print(_03_longest_substring_without_repeat_char().lengthOfLongestSubstring("tmeamgt"), "5")
//print(_03_longest_substring_without_repeat_char().lengthOfLongestSubstring("aab"), "2")
//print(_03_longest_substring_without_repeat_char().lengthOfLongestSubstring("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~ abcdefghijklmnopqrstuvwxyzABCD"), "95")

//print(_04_median_of_two_sorrted_arrays().findMedianSortedArrays([], []), 0)
//print(_04_median_of_two_sorrted_arrays().findMedianSortedArrays([1, 2, 3], []), 2)
//print(_04_median_of_two_sorrted_arrays().findMedianSortedArrays([], [1]), 1)
//print(_04_median_of_two_sorrted_arrays().findMedianSortedArrays([], [1, 2]), 1.5)
//print(_04_median_of_two_sorrted_arrays().findMedianSortedArrays([1, 3], [2]), 2)
//print(_04_median_of_two_sorrted_arrays().findMedianSortedArrays([1, 2], [3, 4]), 2.5)
//print(_04_median_of_two_sorrted_arrays().findMedianSortedArrays([3, 4], [1, 2]), 2.5)


//print(_05_Longest_Palindromic_Substring().longestPalindrome("a"), "a")
//print(_05_Longest_Palindromic_Substring().longestPalindrome("aa"), "aa")
//print(_05_Longest_Palindromic_Substring().longestPalindrome("ac"), "a")
//print(_05_Longest_Palindromic_Substring().longestPalindrome("babad"), "bab")
//print(_05_Longest_Palindromic_Substring().longestPalindrome("cbbd"), "bb")
//print(_05_Longest_Palindromic_Substring().longestPalindrome("civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"), "ranynar")
//print(_05_Longest_Palindromic_Substring().longestPalindrome("aaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeeeffffffffffgggggggggghhhhhhhhhhiiiiiiiiiijjjjjjjjjjkkkkkkkkkkllllllllllmmmmmmmmmmnnnnnnnnnnooooooooooppppppppppqqqqqqqqqqrrrrrrrrrrssssssssssttttttttttuuuuuuuuuuvvvvvvvvvvwwwwwwwwwwxxxxxxxxxxyyyyyyyyyyzzzzzzzzzzyyyyyyyyyyxxxxxxxxxxwwwwwwwwwwvvvvvvvvvvuuuuuuuuuuttttttttttssssssssssrrrrrrrrrrqqqqqqqqqqppppppppppoooooooooonnnnnnnnnnmmmmmmmmmmllllllllllkkkkkkkkkkjjjjjjjjjjiiiiiiiiiihhhhhhhhhhggggggggggffffffffffeeeeeeeeeeddddddddddccccccccccbbbbbbbbbbaaaaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeeeffffffffffgggggggggghhhhhhhhhhiiiiiiiiiijjjjjjjjjjkkkkkkkkkkllllllllllmmmmmmmmmmnnnnnnnnnnooooooooooppppppppppqqqqqqqqqqrrrrrrrrrrssssssssssttttttttttuuuuuuuuuuvvvvvvvvvvwwwwwwwwwwxxxxxxxxxxyyyyyyyyyyzzzzzzzzzzyyyyyyyyyyxxxxxxxxxxwwwwwwwwwwvvvvvvvvvvuuuuuuuuuuttttttttttssssssssssrrrrrrrrrrqqqqqqqqqqppppppppppoooooooooonnnnnnnnnnmmmmmmmmmmllllllllllkkkkkkkkkkjjjjjjjjjjiiiiiiiiiihhhhhhhhhhggggggggggffffffffffeeeeeeeeeeddddddddddccccccccccbbbbbbbbbbaaaa"), "bb")

//print(_06_ZigZag_Conversion().convert("PAYPALISHIRING", 4), "PINALSIGYAHRPI")
//print(_06_ZigZag_Conversion().convert("PAYPALISHIRING", 3), "PAHNAPLSIIGYIR")
//print(_06_ZigZag_Conversion().convert("A", 1), "A")

//print(_07_Revease_Integer().reverse(123), 321)
//print(_07_Revease_Integer().reverse(-123), -321)
//print(_07_Revease_Integer().reverse(120), 21)
//print(_07_Revease_Integer().reverse(1000000009), 0)

//print(_08_String_to_Interger().myAtoi("42"), 42)
//print(_08_String_to_Interger().myAtoi("+42"), 42)
//print(_08_String_to_Interger().myAtoi("-42"), 42)
//print(_08_String_to_Interger().myAtoi("   +0 123"), 0)
//print(_08_String_to_Interger().myAtoi("2147483648"), 2147483647)
//print(_08_String_to_Interger().myAtoi("2147483647"), 2147483647)
//print(_08_String_to_Interger().myAtoi("   -42"), -42)
//print(_08_String_to_Interger().myAtoi("4193 with word"), 4193)
//print(_08_String_to_Interger().myAtoi("words and 987"), 0)
//print(_08_String_to_Interger().myAtoi("-91283472332"), -2147483648)
//print(_08_String_to_Interger().myAtoi("-2147483647"), -2147483647)

//print(_09_Palindrome_Number().isPalindrome(121), true)
//print(_09_Palindrome_Number().isPalindrome(-121), false)
//print(_09_Palindrome_Number().isPalindrome(10), false)


//print(_10_Regular_Expression_Matching().isMatch("", ""), true)
//print(_10_Regular_Expression_Matching().isMatch("aa", ""), false)
//print(_10_Regular_Expression_Matching().isMatch("", "aa"), false)
//print(_10_Regular_Expression_Matching().isMatch("", "a*"), true)
//print(_10_Regular_Expression_Matching().isMatch("", "a*b*"), true)
//print(_10_Regular_Expression_Matching().isMatch("aa", "a"), false)
//print(_10_Regular_Expression_Matching().isMatch("aa", "a*"), true)
//print(_10_Regular_Expression_Matching().isMatch("ab", ".*"), true)
//print(_10_Regular_Expression_Matching().isMatch("aaa", "aaaa"), false)
//print(_10_Regular_Expression_Matching().isMatch("aab", "c*a*b"), true)
//print(_10_Regular_Expression_Matching().isMatch("mississippi", "mis*is*p*."), false)

//print(_011_Container_With_Most_Water().maxArea([1,8,6,2,5,4,8,3,7]), 49)
//print(_011_Container_With_Most_Water().maxArea([1,2,4,3]), 4)
//print(_011_Container_With_Most_Water().maxArea([3719,9757,3686,4127,7071,909,817,8042,6497,4882,2865,258,8371,8741,119,5701,51,682,7030,1531,3257,2829,9396,7479,2174,5166,5589,1844,4655,3410,1252,8374,9519,1290,8854,6591,2199,6023,985,5049,7257,202,1659,5629,8943,1778,7682,8995,8813,1064,6878,2070,246,6274,9550,8772,7792,1491,616,8799,1253,8220,7174,772,9510,2380,3715,8062,8403,4700,3111,5661,4902,1122,7642,198,2900,1676,5545,8065,2740,2423,136,9338,5049,6038,8111,9193,3881,8727,7992,5134,6948,5166,2258,6458,3898,5974,872,2302,7026,335,4315,8281,1457,1957,8479,710,3633,4024,8775,2725,2799,8911,2064,7848,1301,175,7041,5182,5254,5033,316,2202,6552,2575,5013,450,4901,5885,9104,1927,2573,3419,6560,4030,5376,5039,4740,5361,5415,3516,8087,8214,8779,151,2414,81,6678,5807,1615,1932,7193,1932,487,3745,859,1852,547,2112,4089,9652,391,6662,9423,6952,693,4800,8343,5433,6513,3759,5301,952,8325,4081,7455,740,514,4133,6547,2129,6066,3740,413,2905,3837,7624,4757,737,9736,5198,389,6480,1861,6164,3432,8906,7316,1775,691,3830,1886,5993,4782,212,74,2238,952,6940,2723,3851,9069,5141,7592,9483,8046,7781,7107,9155,8518,3196,4354,5259,9676,2567,1424,9460,7825,8740,7587,8516,8922,9474,861,3705,9686,935,2295,6990,7875,5018,841,3297,160,4785,2780,4558,2567,6239,3714,1085,5787,4420,2697,1815,3339,4121,1275,1164,9213,5215,6032,8136,4689,6894,8193,727,4181,6840,7717,8409,8210,4910,1706,8370,9696,838,2929,2263,7077,2995,9700,9217,3767,8749,1032,7106,9222,8660,4622,8436,3875,654,2924,8564,7548,7469,5643,1730,661,3360,139,8871,4622,8197,7242,4318,9035,6523,2933,2464,5870,8986,1681,9637,7735,9066,6743,6958,7726,1365,1746,1601,2019,1022,6517,5920,4843,2160,7650,5504,1872,4141,4375,6494,2338,7969,813,1373,844,3746,3837,6714,9084,1871,6351,6820,937,9446,130,8663,811,8228,6616,9183,5602,3133,5103,445,5293,9105,5949,3517,9598,6676,11,1936,998,7176,9661,1842,923,9850,4909,6359,1721,1260,3179,2658,7059,9661,7673,4222,7889,4289,3405,3491,3774,4860,3936,9067,317,6237,2584,9915,9266,8948,8203,264,6124,7864,8458,3399,7715,3367,9759,9436,980,9290,8447,8039,8952,2472,8613,6841,3114,8371,6685,6888,3231,6973,2308,9901,9563,1244,6168,8829,192,4372,5445,6317,2236,255,9716,9951,9975,5827,5740,955,5118,4187,5346,4070,3011,3959,7263,6125,8682,3948,3014,8266,7274,5322,8167,6837,6566,4335,2018,6759,5059,3815,9428,7296,4070,5496,3599,4045,1324,9339,1352,2794,9878,3050,3216,2890,3362,479,9015,2044,780,8381,310,8054,3703,8477,4891,6622,9165,6909,9733,4224,724,5513,7872,1146,1009,1472,1544,8685,811,2896,7831,690,5947,1047,9932,5661,1527,5299,7705,2307,3681,8016,6713,3736,2845,1604,358,8362,4865,6443,2587,1941,1956,6811,9439,9318,8283,983,8003,5447,3880,5835,2489,6179,3234,2421,1840,4761,7720,5897,3420,7753,3913,133,1490,3111,8089,8200,1473,9306,996,412,7599,2952,7224,7039,2270,1859,8022,6626,7306,8254,8813,9795,4433,2047,8568,2625,3161,2641,8523,2933,394,8788,3067,8236,1899,7508,2789,3373,3167,3785,137,766,6737,3713,7805,5360,5573,2180,8338,2879,434,3503,9027,1220,1902,3947,3845,5063,6588,2368,7997,6983,7509,7416,1571,9408,1276,4360,9133,4443,8145,9271,1562,1235,2984,5719,6595,4909,7899,1285,4141,4686,4788,3168,5906,6690,3467,9751,8106,56,8472,2455,3391,5981,9871,4962,5389,7499,9323,875,8295,3820,146,9857,5055,9482,1928,8002,4392,6180,9287,4885,866,427,4405,6772,3470,7872,2875,1576,7928,1347,4031,1319,7328,254,2634,9070,7753,8309,6297,6048,2129,6443,2257,7185,2277,4186,5187,3021,366,827,7906,1232,1254,2311,4356,1076,184,7231,2652,4464,8579,3035,2136,2259,3289,4770,7681,7395,3079,3978,3443,5208,6773,5701,8745,5403,6239,285,8424,2957,7464,2683,4189,8718,4994,4897,6147,1530,2128,8799,5995,7059,8187,4483,5671,1476,9253,3352,8871,8684,3683,8667,244,6808,720,8990,2211,3311,5627,6988,6268,3091,9671,6809,8161,1017,1706,4308,2548,3834,3108,4895,7246,1295,9378,2917,9123,4983,2621,4347,3667,2656,3014,3911,9465,86,9253,8028,3397,4880,5016,9665,7971,4687,6474,2485,5705,4532,6793,4605,4718,6253,5852,1964,3900,1582,1233,9376,2917,207,3723,6584,2863,3089,6847,8680,9527,6101,6709,2924,7333,1725,8941,1657,2765,1767,4142,4822,6299,935,5779,1017,3541,1631,2982,7441,9565,567,6817,2482,774,6892,5418,3638,9981,8617,2318,9508,4718,5379,8784,8404,7105,7725,61,6222,9492,555,1044,5791,7842,6823,3161,1383,8454,6143,8825,4371,3062,1994,3205,3837,8887,8623,3827,5220,7240,2497,4729,8311,7877,9865,3067,1334,7591,3128,7556,3435,35,8600,9227,7877,5423,2388,9261,229,4883,4438,952,4297,6432,4157,8134,1671,9132,1961,6892,2724,811,7973,1035,8688,7838,454,22,1781,3582,3930,5217,3617,2530,4444,7847,4305,3184,7108,886,4419,1546,1838,8716,4330,2347,3203,6002,1479,5164,2894,4203,5975,7219,1591,1015,5057,2045,7389,6839,1980,1319,2056,1949,201,2852,9796,858,2388,6904,1744,6807,4802,9934,1875,9133,2281,5078,1487,112,6595,733,668,8922,7952,8611,9938,9361,656,3679,2552,8988,1351,960,938,1552,3812,7086,8763,2552,343,507,5711,1497,6794,7587,630,5427,9017,2117,1892,5612,2850,2560,4535,7154,1171,825,6516,8179,856,9068,7168,2207,29,4458,3760,193,1544,2523,2746,8239,9382,4809,9737,2528,8748,6719,7956,7766,8837,9848,9730,8039,8760,617,1546,9931,1442,8062,8110,8651,3482,1630,858,3511,6088,970,57,3985,9845,9155,2224,9228,3964,8313,8108,2713,5033,6064,6831,222,2264,6561,4613,1024,7179,6159,7307,4973,4221,5418,3624,7704,3400,4483,7567,9489,1805,7624,9826,1651,6779,8402,7231,7096,6716,5339,9809,1749,1404,6640,8323,20,9553,2936,1045,6732,5448,4704,8058,6021,6474,8034,77,9875,8869,7645,9364,675,1621,5542,2326,8401,3944,9557,1849,660,4896,1658,8761,2652,4650,3436,2673,555,6373,70,3640,8173,4774,1698,4194,1249,9732,4272,1124,4954,8269,6840,5629,9890,8734,4307,4643,2678,3864,6492,9691,5112,4502,8452,4117,9152,1889,6790,9708,4614,3212,3348,2787,4338,1398,3333,5587,7482,7605,3063,2436,5874,6255,4417,2117,4989,8724,6760,4020,8940,9605,3711,4053,4107,2163,8170,9612,404,1312,5672,1370,4524,9020,509,5214,6770,3843,802,4252,7800,217,3041,3675,2825,7458,2144,4166,6183,5256,8186,5123,4861,1897,5528,8969,413,3698,4933,7169,1362,605,8540,2238,9625,5401,7453,2747,9244,4607,6999,7045,4824,40,7072,4001,3851,5568,4520,34,824,9058,1509,5686,7308,7038,1007,7721,7088,5940,1242,8451,6545,6134,689,2522,1536,8142,5269,7132,2749,8620,529,3926,5013,7601,4279,8864,3169,8799,5250,346,7858,6759,6032,5166,3797,7039,9239,886,9331,481,9337,5876,2968,6378,8398,4504,4521,19,1636,3622,8639,8518,7548,3652,6119,1828,8868,5641,6979,4118,5987,4837,878,8371,3,4675,1762,5594,1913,1093,6076,7602,6969,9044,3981,1719,9900,4854,1738,7888,8476,377,6406,2377,382,8878,557,9250,871,7536,3369,3210,2374,599,1581,8729,5274,3343,4324,3540,4436,6752,1142,7757,2148,1475,9476,8400,2681,1214,6288,1158,7943,9047,9887,4677,7925,444,3928,8796,7980,3649,2006,6706,4248,9939,1788,5874,3282,2464,5766,4070,9216,6909,8179,7716,4736,4007,6116,7418,1573,8756,4928,9516,7803,4815,4194,5728,5259,4474,876,9591,4475,9234,6298,5075,9173,8086,949,8807,550,6716,9229,6118,9977,7408,186,1065,7767,2654,8483,9340,1410,3411,5209,5566,4578,9403,7646,9837,229,8523,9429,1056,7757,2079,6131,3283,6517,3432,2090,3419,148,7672,5889,6477,1432,6075,7543,9200,8729,2378,8540,6491,2142,3749,2057,6720,9504,9704,6558,9733,4579,2339,7141,2336,770,3272,1971,3639,6705,4062,7058,3205,8086,2947,9683,9518,9022,3578,8718,4103,2308,7259,594,4450,1008,9004,7523,513,8708,433,6598,3287,9124,3740,1975,9894,3364,3947,3533,69,4361,6943,3275,2447,9890,9310,1965,5264,9240,684,5719,7900,7943,6313,2351,5303,5317,9874,2168,377,307,5119,3664,9431,5211,1992,5677,8575,5939,5562,8645,6652,2505,8272,9099,8747,7582,7416,4011,3174,8100,9730,1074,2395,2395,9777,4051,4065,6003,6219,4442,2662,1338,4459,2093,2901,6451,4122,1477,8742,9684,6474,5394,8541,4746,845,7288,8680,8261,7651,1854,2714,3733,9280,5109,6129,9058,5512,6546,5061,1732,988,7724,9422,1799,6169,2324,4602,6644,153,3344,2680,6627,5090,1222,7725,5935,4862,2757,4197,2514,4611,3263,6247,243,8372,8728,9301,3885,5274,715,1969,2615,4791,7743,766,7312,6419,5369,3956,6572,5065,6637,9551,156,7859,7276,6091,9073,33,6640,1587,996,9903,4187,7592,4628,9267,3245,4865,894,3960,3186,9861,5103,929,627,2416,7349,2348,6372,273,7414,3009,9825,3922,7220,3453,6365,6294,9839,3006,4233,7187,9261,4772,4779,241,4040,8025,1458,1286,8337,4644,1147,3441,5574,8126,5857,9275,475,8581,9548,4241,7943,5725,8163,5163,5531,4528,7809,5370,3886,8395,8909,9500,3167,41,9741,3559,4418,1200,1197,2755,2196,2344,2548,4122,6823,4757,3397,7298,3339,9298,1539,7634,1375,6054,2797,6906,582,6959,8628,4469,1706,7538,3969,1225,7579,62,1137,8349,7614,2334,7456,9811,4679,5,3933,1502,1114,3683,5152,805,9333,3043,8439,708,9097,7589,7615,9679,4548,6243,4148,2606,133,4469,3831,4064,4532,4968,2413,2146,7303,9870,8309,8334,6227,8595,6188,7341,2278,1340,8147,7963,4383,2938,8671,9832,527,6286,9511,1427,8882,12,4033,5367,833,7865,9432,5365,2833,8197,3864,136,8067,8525,4822,646,7120,1010,7988,5750,2350,2487,3713,3085,5425,2385,2917,2305,5023,8781,3732,257,5145,7766,5625,5978,1983,5057,7696,4816,9606,7912,1305,7674,6437,6127,8320,3558,3490,2660,9308,2192,1499,9374,5278,6925,1759,4547,5582,3134,9680,9314,9744,1177,3432,5369,7156,5415,6778,4852,6584,6384,9116,7889,410,5553,368,5083,9111,3858,7743,4772,2403,9243,4146,4033,2520,2257,8580,8102,1743,4613,3768,1487,5790,3553,6856,9298,8968,9986,502,5552,2723,9618,9793,3133,5172,6514,8216,4283,6724,2312,5407,9127,7907,9553,3160,427,1810,8093,4881,3554,2706,5001,1393,4848,8554,4602,4147,3875,4588,4649,9427,3663,620,5573,6797,5792,2087,1365,6427,8811,29,1835,4291,7936,1388,7451,4715,9551,5544,5948,9457,4602,950,850,5803,5856,5452,9950,9731,6393,951,5511,56,1571,1084,3205,3715,9523,923,143,4686,952,1978,8977,8889,9718,2781,9956,5621,4677,5905,5078,9280,3207,2281,1435,5415,4085,7737,5147,6830,8688,7010,3239,6612,8094,6444,327,3969,3719,470,8655,4672,8800,7633,9913,4871,414,9869,492,1443,2126,1923,7075,5333,556,8510,749,993,6247,2248,7824,4936,9258,1063,7900,3704,3859,8227,7673,7579,5050,6328,8603,202,313,8516,5073,7079,4737,5566,8523,6864,3841,5598,8549,4397,4109,9298,5390,356,7898,9566,1644,7156,6981,5896,7212,841,4124,4885,4772,5526,1214,3375,5728,7879,1891,802,4959,6628,2720,3482,3492,2913,5432,2042,7310,5893,7692,9052,6250,1943,4971,4246,5451,1952,143,2664,2793,619,7549,3917,2497,5115,7292,8225,2995,5535,5379,4306,2164,4451,4140,2008,7364,9572,402,1026,5466,4447,6431,8068,6390,1402,8666,1841,3354,5161,857,2500,2132,4759,6417,4629,9874,62,9207,9221,5597,938,9879,7761,5390,4019,6122,2754,9944,2876,133,1762,7323,6564,6182,65,7966,4848,8259,7672,6362,9116,6524,8494,3875,9294,9476,102,9356,8683,5675,4953,9621,1907,9067,5011,5926,5189,4118,2222,4417,603,336,1741,7167,6518,1806,1485,7719,6417,5509,4081,5534,2034,2575,5761,1328,2051,2215,684,7086,4243,5637,6708,6150,1056,8071,8428,2597,8541,7003,7015,9144,7339,8756,6311,3858,6914,4148,1577,9684,9658,5658,1570,1692,4585,7331,9372,2989,5899,56,75,6494,2045,3135,2644,3102,1207,7424,5699,9748,4427,9066,5245,1767,7822,1556,1977,1089,5705,3554,773,1715,5564,2343,3407,149,6026,2779,9490,8277,9187,9566,4771,7584,2701,3767,686,260,1192,2738,6361,5619,1804,1606,3738,5979,9514,5715,3420,1571,5621,545,3286,1185,2888,3045,7687,5266,2176,7177,3544,1363,3095,4667,5300,2149,8435,5986,2409,9627,5076,5122,1598,3233,6728,5337,5564,2595,1052,8984,4166,6674,9529,3805,4211,8769,6850,1898,387,5379,9076,283,3094,2171,4951,8394,672,9738,733,3082,9365,5809,4556,7315,5394,7637,2652,958,232,57,6294,750,3083,2175,4555,7294,7296,1406,5545,7684,6785,973,7967,9879,9496,9270,4626,169,9008,5359,9603,4725,1168,4159,2041,2915,1796,1045,225,8380,1102,6520,9131,537,5047,3686,4184,2344,1444,9729,6380,4581,702,699,813,6550,9970,5439,6719,5330,798,6322,56,8318,6834,8449,1233,8630,9494,1459,7011,6949,4331,6142,7486,9378,6180,1670,8074,7625,7751,4454,2206,4805,5154,3019,1356,1476,8458,8075,3158,9256,750,3214,7575,7584,8015,5160,2566,7510,2971,9577,4459,7302,2071,8297,3033,8252,6320,1107,5877,4071,1914,8083,8877,3420,7455,233,4896,5913,4660,8054,1522,5410,7621,9097,9346,1988,609,1913,9498,3581,7842,309,7235,6266,4959,268,4518,1279,7728,6747,5350,9642,1182,4227,9414,8637,812,4310,4551,5473,8716,2425,7235,2689,7874,2934,4678,8483,4847,528,2064,9041,7190,9300,5307,2149,5920,9825,9780,3648,2924,5130,9642,4107,5710,9056,2744,6522,9718,3647,8347,4787,6072,1935,7476,3946,4869,8506,8782,6068,5387,7198,5109,8929,2850,417,1078,8771,6594,7210,8771,9519,2340,4766,9978,4402,3822,2722,925,9893,2722,5624,4680,5146,7559,8508,5445,8780,3367,4227,4848,8754,1425,9958,7683,628,6727,5113,9399,3321,2323,4522,9192,1015,9288,9170,5418,9463,8245,2695,9356,7319,8319,4036,2465,2231,8896,4262,1011,2263,8489,5860,1017,6267,2170,5052,3247,8897,165,2646,8570,2488,3520,4115,3504,2809,9637,8922,2272,7882,1617,1628,1553,6288,2016,4019,4871,912,4633,5883,3176,9475,8095,545,5742,6617,5598,8989,1866,5763,7987,436,4604,7859,903,4460,668,541,9734,9292,4775,7703,7272,6329,3991,5640,6700,8863,6553,1333,1098,6081,808,5545,2978,2902,2162,8576,8243,4028,692,2582,816,1648,442,1720,6108,7462,8613,5842,6755,3388,3545,4027,9717,3888,9668,2769,2751,2573,4103,201,5006,4911,5746,7984,4166,7908,2913,2409,8288,3605,4992,9105,5253,1786,7177,7713,9248,5790,3555,6003,5530,7100,6383,1600,7340,2403,4369,92,1328,8472,293,6334,9736,6040,670,3902,300,3583,2663,8589,3540,4007,4046,8793,5793,1223,6506,1394,3365,6413,7397,8895,9865,132,6847,7206,8887,1217,3650,215,9689,3943,2901,5777,6335,9924,6031,2988,9859,8695,7929,3400,9054,1975,8545,4848,9550,1404,6242,2915,7817,9991,8162,4035,6476,5010,1241,5363,6227,4891,1931,2268,5186,1184,4398,7874,7460,429,7214,7320,5476,5143,720,4531,7118,9265,9379,6668,7021,1973,5935,4839,8316,4097,8874,4792,5459,6467,6508,8038,7710,4791,6659,2896,5975,1057,7122,9788,7838,4336,7108,3315,9479,7828,7846,6597,3445,3577,9617,467,1902,5552,1658,218,6002,6884,5011,7813,9703,7871,5852,7413,2662,2511,309,4989,9920,7432,4777,7758,8120,1885,1073,7600,6065,8919,549,5863,8848,6519,2682,750,2071,692,969,4425,7576,2332,2239,7279,203,8091,4692,9217,6954,1353,4206,6874,5137,5336,4632,3258,3573,2058,7210,5991,7329,7759,1854,6178,630,888,3280,9054,1580,4249,3479,5508,2933,5718,2787,9488,161,3831,8705,3467,1536,9264,341,6674,952,1326,6284,877,9736,3494,6868,7065,7605,5074,9595,8236,5962,2876,3642,7542,3477,7121,3050,2763,9192,2189,2251,5705,2372,7309,9173,261,2925,5866,6935,229,3544,9571,1106,3280,9417,7975,6698,3374,9401,6293,7962,5364,5521,1604,9258,5351,8726,8661,8114,4270,7202,6717,9975,9575,378,9148,9836,9655,5015,3123,9884,4911,9046,7343,8192,8463,1670,4890,1837,1071,7535,6152,2787,9409,7756,2046,1112,6482,7059,5578,752,4261,2295,7080,188,9026,6228,6376,8681,7595,5851,4918,2507,4897,2261,699,9712,3931,1941,7902,5002,5828,4054,7790,1589,1810,6188,2701,4645,3247,8279,1749,3860,6927,8829,4049,5953,1410,425,4634,9005,2629,9552,1512,7526,1813,8563,3591,2096,6856,1493,7099,9037,5547,1241,626,3709,7429,9680,8354,7028,7959,6456,888,4886,5285,1289,839,3047,8067,1826,2053,696,7730,9917,4574,5896,4833,8165,7992,8041,9658,1443,7078,1557,2684,4057,5267,6465,3737,3621,9845,1696,6429,7086,2935,8067,8375,126,1114,2794,1952,3167,3490,6035,9437,4417,1931,4270,2582,6275,8663,2241,7719,5742,3798,6755,9799,5417,9573,3536,5391,5770,1584,1820,9208,4519,9887,3936,4646,1002,6730,2950,521,6573,8985,6310,990,7268,6932,3572,9896,5596,2165,3967,7690,2316,722,7489,7733,6647,7377,9476,8770,5313,1297,7978,9833,7536,1914,831,4890,4997,133,1764,1570,9119,8074,8912,2739,1359,2484,2635,6955,1002,6602,4645,9670,3677,8486,3755,6676,2215,3232,1798,7528,881,9777,7361,8417,8043,4544,3308,3040,4678,5072,962,149,3146,9874,2888,857,8711,1876,7812,9713,4830,8809,5735,4859,7295,9490,7888,5862,9074,9686,3391,9955,5815,7104,8373,3859,1649,8033,3251,6327,3105,4214,2828,2603,4088,2068,3461,2799,3944,7625,8864,5127,6435,951,9986,82,6794,4226,5945,5868,3913,5688,2176,9728,2792,6901,9939,4441,4934,3191,7120,4391,3757,9948,6994,4197,2017,6807,6997,2313,4433,2213,7440,7220,3165,3779,3654,9959,8005,5951,2179,8270,1639,4355,7999,4432,1256,4290,5225,2542,3833,2346,6933,7590,8646,280,1788,7015,7087,5137,9329,7872,3702,3121,1444,3219,6900,5099,3178,1258,1050,1710,9528,9042,6065,3879,3474,3674,8170,5051,6216,2003,7397,9502,5946,2396,9782,4086,9411,3221,5575,8740,7446,9277,8214,8890,2497,5114,341,2027,6372,7744,3737,2253,6786,6155,6132,6612,6181,4302,1663,2397,2658,5413,1899,8604,4161,8033,9042,3572,7607,4617,8665,5053,246,6879,295,9095,8345,6989,7475,1070,4733,7564,3323,7871,3719,9455,835,9900,110,8850,8650,2768,4263,6901,7724,4776,1287,3118,8349,8894,4087,3366,3947,4333,6597,4242,9781,4942,7583,3608,2364,2316,1172,2039,6539,1244,7847,7374,7496,7957,6225,6146,7077,6840,9400,1153,1617,687,4271,6318,9581,4710,9684,3528,5395,2633,4122,5176,3927,1706,8784,6292,374,6309,4683,3266,7553,2530,640,5049,6839,3217,7548,3916,6410,6948,1421,8027,7635,2044,697,7216,6754,381,7096,2150,9366,7570,7326,3293,5628,2463,9585,2355,8772,621,5621,2677,3151,2613,7726,9991,5831,5274,259,2241,2222,1681,6620,6209,3725,7317,9777,480,4050,6873,8982,3416,796,6308,6709,2776,5123,2647,5131,247,3268,752,2924,6419,3366,7003,2762,5549,8629,3022,7790,852,4703,4410,3413,4780,1727,3191,1612,2129,6416,594,5545,7212,3255,2254,9989,4730,1253,5120,4978,4521,2225,4254,7293,1943,1257,55,7492,9887,3077,1634,7091,4132,6044,504,5265,4123,3695,6877,6252,6464,3824,1797,3676,7079,403,17,1809,1657,1490,3139,2530,3715,7394,9823,5658,5003,9879,9502,4890,9308,1136,1981,9793,3532,8838,5058,7655,8885,8287,259,5349,8463,8408,5378,1894,5163,5395,56,6820,6885,3195,5703,6952,6941,5526,8962,1945,1757,8464,3187,1066,9600,1521,859,9484,359,2269,3491,5596,6908,3750,946,1724,8510,2676,3618,26,8071,26,3198,1309,3222,8901,8261,6515,4428,7224,8460,6185,2040,8000,7251,7993,9521,4462,7477,9880,3083,969,5476,6344,1071,2774,4420,5934,5450,8038,5960,9874,8065,9158,1183,7639,8060,5796,506,2488,9372,8967,5025,1413,6967,2277,9406,2840,3091,3235,2720,2527,4204,4548,5223,5276,3675,9643,1210,5477,4033,7170,1703,2098,2680,9238,6089,740,5035,6596,3228,4407,1915,8254,2172,5234,6883,1578,8074,6326,4814,7146,5205,5370,8046,6780,6998,1721,6423,8208,3551,457,1730,5254,8907,4411,4493,1349,1503,5880,4297,1084,287,6212,9338,2460,7798,2573,390,5872,5251,1556,9370,6809,6927,7416,3589,3925,5490,6365,8486,9041,3174,6568,647,2081,7331,1492,9782,8835,7372,4079,9919,4012,6643,5609,6472,4441,8182,6862,6665,9785,4771,6035,6594,1698,9804,184,5623,5294,2901,4109,687,6075,7030,7686,4508,4361,9179,4291,3196,2903,4722,3115,6915,1366,8724,3387,2159,3258,6602,5177,9396,1373,1212,5990,9423,7368,2526,5046,9014,5427,5508,9701,1502,8890,3740,6011,3251,9271,6654,6448,2174,1376,5915,9090,9094,992,8829,1254,4250,1783,6431,3646,3156,3995,5989,8931,7716,4867,330,6730,295,2190,2784,8149,1080,6524,4160,4331,5795,7166,7131,7969,8543,3047,3411,7637,391,2241,5243,4641,4024,8026,4640,3533,8374,6981,2464,6090,1848,2794,2820,8495,4984,5604,6645,6064,2128,7157,6748,4275,4324,3879,8597,9219,3278,2008,3208,3669,601,4804,4663,4626,2830,5655,4511,1204,2636,3327,7294,836,6122,115,5684,7458,2071,2329,9875,4200,5838,2975,4827,6514,6854,3424,2085,6485,1785,5294,154,2386,98,1169,3364,9280,6824,4227,485,5812,7555,4131,3001,29,598,8685,7487,2670,7366,3714,3222,3204,6689,8049,6071,9896,7826,8156,2733,5963,9802,2887,4701,6252,409,4418,5533,7233,8645,2370,9398,6200,6501,2399,6229,3452,7436,69,6122,4802,135,9344,4358,3177,3745,429,3073,7923,8586,5806,3886,4740,5045,4940,993,5454,9358,6526,9040,8003,8896,4790,556,1749,7189,3137,5201,4625,3206,7675,5779,9694,3371,137,2871,7117,567,2296,1392,5505,4454,1631,245,9499,6571,1238,1306,2281,4116,6698,6636,9364,1488,7192,1114,5029,330,2667,6006,9888,6695,1785,9582,66,1922,8805,3535,8841,1101,4928,4346,5555,2911,944,1407,5834,2182,9065,8115,6299,5763,4751,2015,3603,8296,9481,4984,4978,2149,990,1218,5196,9127,7153,5262,7401,5958,5150,6243,7060,6430,6941,8967,9341,7885,374,1527,6420,9439,9642,9071,1554,745,1086,1509,5393,568,2845,371,9069,187,1590,4265,9314,5095,5879,3068,1053,1029,9311,4465,7459,6252,3433,3152,490,159,4679,6910,5951,673,5981,3857,1419,7067,1719,6812,7635,4564,3536,6704,4752,1478,7321,418,6573,3201,3486,3978,582,9149,8444,4394,1754,8229,7546,2244,4740,8578,9154,691,9251,1487,901,7022,8554,2620,187,2542,7184,75,5598,8288,1553,2920,5059,4478,6121,4897,8456,6703,4047,3252,7449,2153,1481,4996,4397,6222,9926,9903,3265,5529,1390,4166,8904,6296,6786,9091,8838,323,5518,4437,4963,7071,3709,6374,1549,6182,1272,5,9237,1671,3258,6687,3824,1091,8035,4573,3665,7961,4476,6931,3490,2218,1097,2394,8514,4236,7837,3705,911,3355,8142,5874,6778,8203,2249,8327,4385,9873,4685,3622,1544,4295,6661,1720,1738,4696,6293,5404,2657,7121,2335,2500,9339,9784,4894,7853,372,9084,1558,1283,8791,6052,3510,5570,607,2111,3897,4992,8336,4934,4967,6232,5581,1628,7952,7320,6325,597,2724,5334,7718,1411,7834,7057,7547,9081,1262,7920,8165,9173,5555,6956,5225,5417,2526,2185,3880,2776,7177,2216,7710,8496,8448,3292,125,2752,6964,2802,3349,9688,8136,1067,1099,5971,8124,8646,5052,9387,2918,9569,4912,8474,6525,6489,3891,5404,8674,4124,4532,2204,6340,8594,700,1141,8238,7177,3893,5202,9979,7243,4890,4468,8310,2341,439,2787,988,1843,8526,3906,1412,3438,8732,4289,9927,8976,6045,8602,3100,577,806,9440,9172,7858,581,7410,5036,4475,2613,5015,8070,3855,9483,6380,6197,6274,5519,7185,4469,4045,7443,2233,7483,2528,6523,3763,1504,8920,2365,4604,9498,9523,396,5022,7381,7330,8784,8769,8157,1397,3785,6227,5253,9620,8959,7802,2247,4479,1339,6716,8524,8782,8950,2360,7662,1825,6123,9166,745,4840,122,6595,715,519,7969,8096,4201,6754,3218,2358,8151,3355,8585,9756,2975,7544,3910,1574,8375,5249,4643,6900,384,3593,9260,8046,1770,1735,7213,8867,6575,3687,5463,7290,558,3432,1738,4759,186,4956,7117,4690,8311,2054,798,7639,5951,4709,9213,4326,9958,3856,7578,342,3801,6838,8389,5571,8573,1954,4439,1500,5641,6254,5142,2552,6038,6881,7311,2577,8189,781,7267,2853,9187,8065,492,5138,9126,6057,5817,9085,6266,3395,5779,6419,6586,520,8343,1511,8826,9134,3012,820,5388,8154,3372,7778,1387,683,355,9577,7816,7622,2430,7004,2040,9274,8494,7518,1683,4311,2955,7949,4059,8735,4369,645,5607,9064,8508,4434,8198,7872,5254,3586,6027,4978,1364,3766,2013,8072,9695,9830,5694,8477,6834,4086,4103,5328,1605,5787,5992,4560,88,51,9647,809,7048,5255,9873,5556,6041,8071,3429,7647,1657,5808,2625,9374,5926,4638,7446,5622,4468,9492,451,7654,9931,4555,2983,7888,342,8975,2448,430,5378,8448,1240,2426,55,1113,4334,6096,9185,4115,3743,7194,9923,6368,2920,5850,1006,6718,7824,1827,2563,4627,9481,2494,9182,8816,382,5876,4143,9182,6307,9521,3982,3899,8299,4037,1364,2634,133,6901,6749,3876,448,3025,6596,3368,5227,3955,6439,9403,5782,9002,4030,5263,7848,3213,432,4582,9089,4575,3764,1748,4097,4099,1999,2396,8136,3364,1382,8270,265,4484,8498,713,7509,5095,434,9088,9050,3225,8491,1184,8579,8873,2799,6427,2086,3231,1009,7528,7807,1125,5628,8256,5224,7628,7004,9713,992,8387,7983,7609,9223,6481,4675,3084,7928,5109,2172,6978,4686,7015,8162,3265,5888,962,9692,4327,4193,7053,1855,8352,4530,7483,6608,6107,5111,3613,5820,2455,8352,155,65,7575,6636,4740,659,4565,6201,9183,7895,7239,6198,2410,504,2086,3372,6548,6413,3917,9953,4620,8622,4483,8456,5230,6942,9919,5195,9114,2375,3547,9269,8792,1122,5906,3532,1781,6823,6085,964,1070,3324,3514,3480,180,1953,3204,6728,8366,3474,3033,9339,2096,3868,7795,3678,811,7714,8874,9925,6441,2421,9195,5233,9896,1453,5117,8029,4628,7554,5346,5698,7230,8860,5531,7410,813,8735,490,5532,2209,3523,4871,657,7392,9018,4336,4555,3084,9562,4480,9526,8335,27,4759,8231,7832,6229,6261,2460,3783,1607,4511,1014,6819,42,8424,7633,8777,8915,9517,7339,8790,4388,7996,2534,9758,8684,7089,9194,8246,7922,8720,2934,7949,9832,1165,2134,6061,7426,4594,9844,5385,5457,7210,2205,5499,5635,6190,629,902,5707,4320,6044,6447,2316,8579,6205,7353,5668,5399,1951,3590,472,4885,7892,304,2403,26,2717,9829,4620,8913,1567,6430,6124,3772,1929,8111,9962,8910,9013,2021,3230,5057,8468,1899,9988,4673,5604,5657,6424,7555,9247,3248,8793,7139,9904,1196,3517,2621,7377,4490,1535,8944,920,4011,9068,9201,2122,5382,8112,7487,7403,7694,2544,5871,9593,8885,6896,5197,4542,9673,9105,141,2921,7898,3633,2826,5446,7150,5447,2823,1640,3334,8120,2560,7345,7188,1762,5819,8923,6226,3306,6326,3920,5851,8550,9866,1088,5446,5063,5630,5119,520,5771,4393,4770,9404,7219,216,2907,9018,3040,4547,2353,1160,7108,6050,4700,5222,1870,3623,1448,5176,6302,1720,7379,4852,1586,8467,6650,3002,449,1770,9874,6221,6163,4645,1977,9734,4861,4884,8752,7901,5784,1105,5413,2892,3508,6466,4466,5378,89,2266,6906,6391,338,638,7595,1925,9105,4246,1279,9555,2368,1153,2128,4883,5798,457,4617,7012,5342,3369,1265,7478,827,6679,6722,687,9497,1188,2417,9586,9806,9323,2330,144,9961,6277,8421,5419,523,9700,1326,9243,7206,3454,4126,9356,263,5095,6368,5605,4817,7634,9435,5644,665,6157,2683,162,7345,5100,6100,7151,775,4782,7296,7089,1060,2069,2508,1583,1770,3834,7179,5328,3640,1305,1036,3903,6401,7405,5861,1218,1391,5296,3214,8408]), 48267879)

//print(_12_Integer_to_Roman().intToRoman(3), "III")
//print(_12_Integer_to_Roman().intToRoman(4), "IV")
//print(_12_Integer_to_Roman().intToRoman(9), "IX")
//print(_12_Integer_to_Roman().intToRoman(45), "XLV")
//print(_12_Integer_to_Roman().intToRoman(58), "LVIII")
//print(_12_Integer_to_Roman().intToRoman(99), "XCIX")
//print(_12_Integer_to_Roman().intToRoman(900), "CM")
//print(_12_Integer_to_Roman().intToRoman(1437), "MCDXXXVII")
//print(_12_Integer_to_Roman().intToRoman(1994), "MCMXCIV")

//print(_13_Roman_to_Integer().romanToInt("III"), 3)
//print(_13_Roman_to_Integer().romanToInt("IV"), 4)
//print(_13_Roman_to_Integer().romanToInt("IX"), 9)
//print(_13_Roman_to_Integer().romanToInt("XLV"), 45)
//print(_13_Roman_to_Integer().romanToInt("LVIII"), 58)
//print(_13_Roman_to_Integer().romanToInt("XCIX"), 99)
//print(_13_Roman_to_Integer().romanToInt("CM"), 900)
//print(_13_Roman_to_Integer().romanToInt("MCDXXXVII"), 1437)
//print(_13_Roman_to_Integer().romanToInt("MCMXCIV"), 1994)

//print(_14_Longest_Common_Prefix().longestCommonPrefix(["flower","flow","flight"]), "fl");
//print(_14_Longest_Common_Prefix().longestCommonPrefix(["dog","racecar","car"]), "");

//print(_15_3Sum().threeSum([-1, 0, 1, 2, -1, -4]))
//print(_15_3Sum().threeSum([0, 0, 0]))

//print(_16_3Num_closest().threeSumClosest([-1,2,1,-4], 1))

//print(_017_Letter_Combinations_of_a_Phone_Number().letterCombinations("23"))
//print(_017_Letter_Combinations_of_a_Phone_Number().letterCombinations(""))

//print(_18_4Sum().fourSum([1, 0, -1, 0, -2, 2], 0))
//print(_18_4Sum().fourSum([], 0))
//print(_18_4Sum().fourSum([0, 0, 0, 0], 0))
//print(_18_4Sum().fourSum([-3,-2,-1,0,0,1,2,3], 0))
//print(_18_4Sum().fourSum([-5,-4,-3,-2,-1,0,0,1,2,3,4,5], 0))

//let l21_1 = TreeHelper().convertListToListNode([1,2,4])
//let l21_2 = TreeHelper().convertListToListNode([1,3,4])
//_021_Merge_Two_Sorted_Lists().mergeTwoLists(l21_1, l21_2)
//let l21_3 = TreeHelper().convertListToListNode([1])
//let l21_4 = TreeHelper().convertListToListNode([2])
//_021_Merge_Two_Sorted_Lists().mergeTwoLists(l21_3, l21_4)

//print(_022_Generate_Parentheses().generateParenthesis(3))
//print(_022_Generate_Parentheses().generateParenthesis(5))

//let l23_1 = TreeHelper().convertListToListNode([1,4,5])
//let l23_2 = TreeHelper().convertListToListNode([1,3,4])
//let l23_3 = TreeHelper().convertListToListNode([2,6])
//let res23 = _023_Merge_k_Sorted_Lists().mergeKLists([l23_1, l23_2, l23_3])
//print(res23)

//let list24 = TreeHelper().convertListToListNode([1,2,3,4])
//let res = _024_Swap_Nodes_in_Pairs().swapPairs(list24)
//print(res)

//let list25 = TreeHelper().convertListToListNode([1,2,3,4,5])
//let list25_1 = TreeHelper().convertListToListNode([1,2,3,4,5])
//let res = _025_Reverse_Nodes_in_k_Group().reverseKGroup(list25, 2)
//let res_1 = _025_Reverse_Nodes_in_k_Group().reverseKGroup(list25_1, 3)
//print(res)

//var arr26_1 = [1, 2, 2, 3]
//print(_026_Remove_Duplicates_from_Sorted_Array().removeDuplicates(&arr26_1))
//print(arr26_1)

//var arr27_1 = [3, 2, 2, 3]
//print(_27_Remove_Element().removeElement(&arr27_1, 3))

//print(_34_Find_First_and_Last_Position_of_Element_in_Sorted_Array().searchRange([5,7,7,8,8,10], 8))
//print(_34_Find_First_and_Last_Position_of_Element_in_Sorted_Array().searchRange([5,7,7,8,8,10], 6))

//print(_35_Search_Insert_Position().searchInsert([1,3,5,6], 5))
//print(_35_Search_Insert_Position().searchInsert([1,3,5,6], 2))
//print(_35_Search_Insert_Position().searchInsert([1,3,5,6], 7))
//print(_35_Search_Insert_Position().searchInsert([1,3,5,6], 0))

//print(_039_Combination_Sum().combinationSum([2,3,6,7], 7))
//print(_039_Combination_Sum().combinationSum([2,3,5], 8))

//print(_040_Combination_Sum_2().combinationSum2([10,1,2,7,6,1,5], 8))
//print(_040_Combination_Sum_2().combinationSum2([2,5,2,1,2], 5))
//
//print(_045_Jump_Game_2().jump([0]), 0)
//print(_045_Jump_Game_2().jump([2,1]), 1)
//print(_045_Jump_Game_2().jump([2,3,1]), 1)
//print(_045_Jump_Game_2().jump([2,3,1,1,4]), 2)
//print(_045_Jump_Game_2().jump([1,2,1,1,4]), 3)
//print(_045_Jump_Game_2().jump([7,0,9,6,9,6,1,7,9,0,1,2,9,0,3]), 2)

//print(_046_Permutations().permute([]))
//print(_046_Permutations().permute([1]))
//print(_046_Permutations().permute([1,2,3]))

//print(_047_Permutations_2().permuteUnique([]))
//print(_047_Permutations_2().permuteUnique([1]))
//print(_047_Permutations_2().permuteUnique([1,1,3]))

//var martix48 = [[1,2,3],[4,5,6],[7,8,9]];
//_048_Rotate_Image().rotate(&martix48)
//print(martix48)

//print(_053_Maximum_Subarray().maxSubArray([-2,1,-3,4,-1,2,1,-5,4]), 6)

//let list61 = TreeHelper().convertListToListNode([1,2,3,4,5])
//let list61_1 = TreeHelper().convertListToListNode([0,1,2])
//let list61_2 = TreeHelper().convertListToListNode([1,2])
//let res61 = _061_Rotate_List().rotateRight(list61, 2)
//let res61_1 = _061_Rotate_List().rotateRight(list61_1, 4)
//let res61_2 = _061_Rotate_List().rotateRight(list61_2, 2)
//print(res61_2)


//print(_062_Unique_Paths().uniquePaths(3, 2))

//print(_63_Unique_Paths_2().uniquePathsWithObstacles([[0]]), 1)
//print(_63_Unique_Paths_2().uniquePathsWithObstacles([[1]]), 0)
//print(_63_Unique_Paths_2().uniquePathsWithObstacles([[1, 0]]), 0)
//print(_63_Unique_Paths_2().uniquePathsWithObstacles([[0,0,0],[0,1,0],[0,0,0]]), 2)

//print(_64_Minimum_Path_Sum().minPathSum([[1,3,1],[1,5,1],[4,2,1]]), 7)
//print(_64_Minimum_Path_Sum().minPathSum([[1,2],[1,1]]), 3)

//print(_065_Jump_Game().canJump([0]), true)
//print(_065_Jump_Game().canJump([2,3,1,1,4]), true)
//print(_065_Jump_Game().canJump([3,2,1,0,4]), false)

//print(_66_Plus_One().plusOne([1, 2, 3]))
//print(_66_Plus_One().plusOne([4, 3, 2, 1]))
//print(_66_Plus_One().plusOne([9]))
//print(_66_Plus_One().plusOne([9, 9]))
//print(_66_Plus_One().plusOne([9, 9, 9]))
//print(_66_Plus_One().plusOne([6,1,4,5,3,9,0,1,9,5,1,8,6,7,0,5,5,4,3]))

//print(_067_Add_Binary().addBinary("1", "1"), "10")
//print(_067_Add_Binary().addBinary("11", "11"), "110")
//print(_067_Add_Binary().addBinary("11", "1"), "100")
//print(_067_Add_Binary().addBinary("1010", "1011"), "10101")
//print(_067_Add_Binary().addBinary("100", "110010"), "110110")

//print(_070_Climbing_Stairs().climbStairs(2),2)
//print(_070_Climbing_Stairs().climbStairs(3),3)
//print(_070_Climbing_Stairs().climbStairs(4),5)
//print(_070_Climbing_Stairs().climbStairs(5),8)

//print(_74_Search_a_2D_Matrix().searchMatrix([[1,  3,  5,  7], [10, 11, 16, 20], [23, 30, 34, 50]], 3))
//print(_74_Search_a_2D_Matrix().searchMatrix([[1,  3,  5,  7], [10, 11, 16, 20], [23, 30, 34, 50]], 13))

//print(_077_Combinations().combine(4, 2))
//print(_077_Combinations().combine(1, 1))

//print(_078_Subsets().subsets([1, 2, 3]))

//var arr80_1 = [1, 2, 2, 2, 3, 3]
//print(_80_Remove_Duplicates_from_Sorted_Array_2().removeDuplicates(&arr80_1))
//print(arr80_1)
//var arr80_2 = [0,0,1,1,1,1,2,3,3]
//print(_80_Remove_Duplicates_from_Sorted_Array_2().removeDuplicates(&arr80_2))
//print(arr80_2)

//let head82_1 = TreeHelper().convertListToListNode([1, 2, 3, 3,4,4,5])
//_082_Remove_Duplicates_from_Sorted_List_2().deleteDuplicates(head82_1)

//let head83_1 = TreeHelper().convertListToListNode([1, 1, 2])
//let head83_2 = TreeHelper().convertListToListNode([1, 1, 2, 3, 4])
//print(_083_Remove_Duplicates_from_Sorted_List().deleteDuplicates(head83_1)?.val)
//print(_083_Remove_Duplicates_from_Sorted_List().deleteDuplicates(head83_2)?.val)
//print(_083_Remove_Duplicates_from_Sorted_List().deleteDuplicates(head83_2)?.val)

//print(_84_Largest_Rectangle_in_Histogram().largestRectangleArea([1]))
//print(_84_Largest_Rectangle_in_Histogram().largestRectangleArea([1, 2]))
//print(_84_Largest_Rectangle_in_Histogram().largestRectangleArea([2, 1, 2]))
//print(_84_Largest_Rectangle_in_Histogram().largestRectangleArea([2,1,5,6,2,3]))

//print(_85_Maximal_Rectangle().maximalRectangle([["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]))
//print(_85_Maximal_Rectangle().maximalRectangle([]))

//let list86 = TreeHelper().convertListToListNode([1,4,3,2,5,2])
//let res86 = _086_Partition_List().partition(list86, 3)
//print(res86)


//var arr88_1 = [1,2,3,0,0,0]
//var arr88_2 = [2, 5, 6]
//_88_Merge_Sorted_Array().merge(&arr88_1, 3, arr88_2, 3)
//print(arr88_1)

//print(_090_Subsets_2().subsetsWithDup([1, 2, 2]))

//let list92 = TreeHelper().convertListToListNode([1,2,3,4,5])
//let res92 = _092_Reverse_Linked_List().reverseBetween(list92, 2, 4)
//print(res92)

//var root94 = TreeHelper().buildTreeWithBreathFirstSearch([1,-1,2,3])
//print(_094_Binary_Tree_Inorder_Traversal().inorderTraversal(root94))

//let rootList95_1 = _095_Unique_Binary_Search_Trees_2().generateTrees(1)
//let rootList95_2 = _095_Unique_Binary_Search_Trees_2().generateTrees(2)
//let rootList95_3 = _095_Unique_Binary_Search_Trees_2().generateTrees(3)
//let rootList95_4 = _095_Unique_Binary_Search_Trees_2().generateTrees(4)

//print(_096_Unique_Binary_Search_Trees().numTrees(1),1)
//print(_096_Unique_Binary_Search_Trees().numTrees(2),2)
//print(_096_Unique_Binary_Search_Trees().numTrees(3),5)
//print(_096_Unique_Binary_Search_Trees().numTrees(19),1767263190)

//var root98_1 = TreeHelper().buildTreeWithBreathFirstSearch([2,1,3])
//var root98_2 = TreeHelper().buildTreeWithBreathFirstSearch([5,1,4,-1,-1,3,6])
//print(_098_Validate_Binary_Search_Tree().isValidBST(root98_1))
//print(_098_Validate_Binary_Search_Tree().isValidBST(root98_2))
var root98_3 = TreeHelper().buildTreeWithBreathFirstSearch([3,1,5,0,2,4,6])
print(_098_Validate_Binary_Search_Tree().isValidBST(root98_3))


//let root99 = TreeHelper().buildTreeWithBreathFirstSearch([1, 3, -1, -1, 2])
//_099_Recover_Binary_Search_Tree().recoverTree(root99)

//var root100_1_1 = TreeHelper().buildTreeWithBreathFirstSearch([1,2,3])
//var root100_1_2 = TreeHelper().buildTreeWithBreathFirstSearch([1,2,3])
//var root100_2_1 = TreeHelper().buildTreeWithBreathFirstSearch([1,2])
//var root100_2_2 = TreeHelper().buildTreeWithBreathFirstSearch([1,-1,2])
//var root100_3_1 = TreeHelper().buildTreeWithBreathFirstSearch([1,2,1])
//var root100_3_2 = TreeHelper().buildTreeWithBreathFirstSearch([1,1,2])
//
//print(_100_Same_Tree().isSame(root100_1_1, root100_1_2))
//print(_100_Same_Tree().isSame(root100_2_1, root100_2_2))
//print(_100_Same_Tree().isSame(root100_3_1, root100_3_2))

//var root101 = TreeHelper().buildTreeWithBreathFirstSearch([3, 9, 20, -1, -1, 15, 7])
//var root101_1 = TreeHelper().buildTreeWithBreathFirstSearch([1,2,2,3,4,4,3])
//var root101_2 = TreeHelper().buildTreeWithBreathFirstSearch([1,2,2,-1,3,-1,3])
//print(_101_Symmetric_Tree().isSymmetric(root101))
//print(_101_Symmetric_Tree().isSymmetric(root101_1))
//print(_101_Symmetric_Tree().isSymmetric(root101_2))

//var root102 = TreeHelper().buildTreeWithBreathFirstSearch([3, 9, 20, -1, -1, 15, 7])
//print(_102_Binary_Tree_Level_Order_Traversal().levelOrder(root102))

//var root103 = TreeHelper().buildTreeWithBreathFirstSearch([3, 9, 20, -1, -1, 15, 7])
//print(_103_Binary_Tree_Zigzag_Level_Order_Traversal().zigzagLevelOrder(root103))

//var root104 = TreeHelper().buildTreeWithBreathFirstSearch([3, 9, 20, -1, -1, 15, 7])
//var root104_1 = TreeHelper().buildTreeWithBreathFirstSearch([1, 2, 3, -1, 4, -1, 5])
//print(_104_Maximum_Depth_of_Binary_Tree().maxDepth(root104), 3)
//print(_104_Maximum_Depth_of_Binary_Tree().maxDepth(root104_1), 3)

//var root105 = _105_Construct_Binary_Tree_from_Preorder_and_Inorder_Traversal().buildTree([3, 9, 20, 15, 7], [9,3,15,20,7])
//print(root105?.val as Any)

//var root106 = _106_Construct_Binary_Tree_from_Inorder_and_Postorder_Traversal().buildTree([9,3,15,20,7], [9,15,7,20,3])
//print(root106?.val as Any)

//var root107 = TreeHelper().buildTreeWithBreathFirstSearch([3, 9, 20, -1, -1, 15, 7])
//print(_107_Binary_Tree_Level_Order_Traversal_2().levelOrderBottom(root107))

//var root109 = TreeHelper().convertListToListNode([-10,-3,0,5,9])
//_109_Convert_Sorted_List_to_Binary_Search_Tree().sortedListToBST(root109)

//_108_Convert_Sorted_Array_to_Binary_Search_Tree().sortedArrayToBST([-10,-3,0,5,9])


//var root110 = TreeHelper().buildTreeWithBreathFirstSearch([3,9,20,-1,-1,15,7])
//var root110_1 = TreeHelper().buildTreeWithBreathFirstSearch([1,2,2,3,3,-1,-1,4,4])
//print(_110_Balanced_Binary_Tree().isBalanced(root110))
//print(_110_Balanced_Binary_Tree().isBalanced(root110_1))

//var root111 = TreeHelper().buildTreeWithBreathFirstSearch([3, 9, 20, -1, -1, 15, 7])
//var root111 = TreeHelper().buildTreeWithBreathFirstSearch([1, 2, 3, -1, 4, -1, 5])
//var root111 = TreeHelper().buildTreeWithBreathFirstSearch([1, 2])
//print(_111_Minimum_Depth_of_Binary_Tree().minDepth(root111))

//var root112 = TreeHelper().buildTreeWithBreathFirstSearch([5, 4, 8, 11, -1, 13, 4, 7, 2, -1, -1, -1, 1])
//var root112_1 = TreeHelper().buildTreeWithBreathFirstSearch([1,2])
//print(_112_Path_Sum().hasPathSum(root112, 22))
//print(_112_Path_Sum().hasPathSum(root112_1, 1))
//print(_112_Path_Sum().hasPathSum(root112_1, 3))

//var root113 = TreeHelper().buildTreeWithBreathFirstSearch([5, 4, 8, 11, -1, 13, 4, 7, 2, -1, -1, 5, 1])
//print(_113_Path_sum_2().pathSum(root113, 22))

//var root114 = TreeHelper().buildTreeWithBreathFirstSearch([1,2,5,3,4,-1,6])
//_114_Flatten_Binary_Tree_to_Linked_List().flatten(root114)

//var root116 = TreeHelper().buildTreeForPopulatingNextRightPointersWithBreathFirstSearch([1,2,3,4,5,6,7])
//_116_Populating_Next_Right_Pointers_in_Each_Node().connect(root116)

//var root117 = TreeHelper().buildTreeForPopulatingNextRightPointersWithBreathFirstSearch([1,2,3,4,5,-1,7])
//var root117_1 = TreeHelper().buildTreeForPopulatingNextRightPointersWithBreathFirstSearch([2,1,3,0,7,9,1,2,-1,1,0,-1,-1,8,8,-1,-1,-1,-1,7])
//var root117_2 = TreeHelper().buildTreeForPopulatingNextRightPointersWithBreathFirstSearch([9,3,2,-1,4,4,0,6,-1,5])
//_117_Populating_Next_Right_Pointers_in_Each_Node_2().connect(root117)
//_117_Populating_Next_Right_Pointers_in_Each_Node_2().connect(root117_1)
//_117_Populating_Next_Right_Pointers_in_Each_Node_2().connect(root117_2)

//print(_118_Pascals_Triangle().generate(5))
//print(_118_Pascals_Triangle().generate(0))
//print(_118_Pascals_Triangle().generate(1))
//print(_118_Pascals_Triangle().generate(2))
//print(_118_Pascals_Triangle().generate(3))

//print(_119_Pascals_Triangle_2().getRow(0))
//print(_119_Pascals_Triangle_2().getRow(1))
//print(_119_Pascals_Triangle_2().getRow(2))
//print(_119_Pascals_Triangle_2().getRow(3))
//print(_119_Pascals_Triangle_2().getRow(5))
//print(_119_Pascals_Triangle_2().getRow(33))

//print(_120_Triangle().minimumTotal([[2],[3,4],[6,5,7],[4,1,8,3]]), 11)

//print(_121_Best_Time_to_Buy_and_Sell_Stock().maxProfit([7,1,5,3,6,4]))
//print(_121_Best_Time_to_Buy_and_Sell_Stock().maxProfit([7,6,4,3,1]))

//print(_122_Best_Time_to_Buy_and_Sell_Stock_2().maxProfit([1,2,3,4,5]))
//print(_122_Best_Time_to_Buy_and_Sell_Stock_2().maxProfit([7,6,4,3,1]))
//print(_122_Best_Time_to_Buy_and_Sell_Stock_2().maxProfit([7,1,5,3,6,4]))
//print(_122_Best_Time_to_Buy_and_Sell_Stock_2().maxProfit_dp([1,2,3,4,5]))
//print(_122_Best_Time_to_Buy_and_Sell_Stock_2().maxProfit_dp([7,6,4,3,1]))
//print(_122_Best_Time_to_Buy_and_Sell_Stock_2().maxProfit_dp([7,1,5,3,6,4]))

//print(_123_Best_Time_to_Buy_and_Sell_Stock_3().maxProfit([2,1,2,0,1]))
//print(_123_Best_Time_to_Buy_and_Sell_Stock_3().maxProfit([3,5,0,3,1,4]))
//print(_123_Best_Time_to_Buy_and_Sell_Stock_3().maxProfit([3,3,5,0,0,3,1,4]))
//print(_123_Best_Time_to_Buy_and_Sell_Stock_3().maxProfit([1,2,3,4,5]))
//print(_123_Best_Time_to_Buy_and_Sell_Stock_3().maxProfit([7,6,4,3,1]))
//
//print(_123_Best_Time_to_Buy_and_Sell_Stock_3().maxProfit_direct([2,1,2,0,1]))
//print(_123_Best_Time_to_Buy_and_Sell_Stock_3().maxProfit_direct([3,5,0,3,1,4]))
//print(_123_Best_Time_to_Buy_and_Sell_Stock_3().maxProfit_direct([3,3,5,0,0,3,1,4]))
//print(_123_Best_Time_to_Buy_and_Sell_Stock_3().maxProfit_direct([1,2,3,4,5]))
//print(_123_Best_Time_to_Buy_and_Sell_Stock_3().maxProfit_direct([7,6,4,3,1]))

//let root129_1 = TreeHelper().buildTreeWithBreathFirstSearch([1,2,3])
//let root129_2 = TreeHelper().buildTreeWithBreathFirstSearch([4,9,0,5,1])
//print(_129_Sum_Root_to_Leaf_Numbers().sumNumbers(root129_1))
//print(_129_Sum_Root_to_Leaf_Numbers().sumNumbers(root129_2))

//print(_134_Gas_Station().canCompleteCircuit([1,2,3,4,5], [3,4,5,1,2]), 3)
//print(_134_Gas_Station().canCompleteCircuit([2,3,4], [3,4,3]), -1)

//print(_135_Candy().candy([1,3,4,5,2]), 11)
//print(_135_Candy().candy([1,0,2]), 5)
//print(_135_Candy().candy([1,2,2]), 4)
//print(_135_Candy().candy([1,2,3]), 6)
//print(_135_Candy().candy([1,2,1,3,3]), 7)
//print(_135_Candy().candy([3,2,1]), 6)

//print(_136_Single_Number().singleNumber([1,2,2,3,3]), 1)
//print(_136_Single_Number().singleNumber([1]),1)
//print(_136_Single_Number().singleNumber([5,3,4,3,5]),4)

//print(_137_Single_Number_2().singleNumber([2,1,3,2,2,3,3]), 1)
//print(_137_Single_Number_2().singleNumber([1]),1)
//print(_137_Single_Number_2().singleNumber([5,5,3,3,4,3,5]),4)

//let list138 = _138_Copy_List_with_Random_Pointer().createTest()
//let res138 = _138_Copy_List_with_Random_Pointer().copyRandomList(list138)
//print(res138)

//print(_139_Word_Break().wordBreak("leetcode", ["leet", "code"]), true)
//print(_139_Word_Break().wordBreak("applepenapple", ["apple", "pen"]), true)
//print(_139_Word_Break().wordBreak("catsandog", ["cats", "dog", "sand", "and", "cat"]), false)

//print(_140_Word_Break_2().wordBreak("leetcode", ["leet", "code"]), ["leet code"])
//print(_140_Word_Break_2().wordBreak("catsanddog", ["cat", "cats", "and", "sand", "dog"]), ["cats and dog","cat sand dog"])
//print(_140_Word_Break_2().wordBreak("pineapplepenapple", ["apple", "pen", "applepen", "pine", "pineapple"]), [ "pine apple pen apple","pineapple pen apple","pine applepen apple"])

//let head141_1 = TreeHelper().convertListToListNode([3,2,0,-4], 1)
//let head141_2 = TreeHelper().convertListToListNode([1, 2], 0)
//let head141_3 = TreeHelper().convertListToListNode([1], -1)
//let head141_4 = TreeHelper().convertListToListNode([1, 2], -1)
//print(_141_Link_List_Cycle().hasCycle(head141_1), true)
//print(_141_Link_List_Cycle().hasCycle(head141_2), true)
//print(_141_Link_List_Cycle().hasCycle(head141_3), false)
//print(_141_Link_List_Cycle().hasCycle(head141_4), false)

//let head142_1 = TreeHelper().convertListToListNode([3,2,0,-4], 1)
//let head142_2 = TreeHelper().convertListToListNode([1, 2], 0)
//let head142_3 = TreeHelper().convertListToListNode([1], -1)
//let head142_4 = TreeHelper().convertListToListNode([1, 2], -1)
//print(_142_Link_List_Cycle_2().detectCycle(head142_1)?.val ?? -1, 2)
//print(_142_Link_List_Cycle_2().detectCycle(head142_2)?.val ?? -1, 1)
//print(_142_Link_List_Cycle_2().detectCycle(head142_3)?.val ?? -1, -1)
//print(_142_Link_List_Cycle_2().detectCycle(head142_4)?.val ?? -1, -1)

//let list143_1 = TreeHelper().convertListToListNode([1,2,3,4])
//let list143_2 = TreeHelper().convertListToListNode([1,2,3,4,5])
//_143_Reorder_List().reorderList(list143_1)
//_143_Reorder_List().reorderList(list143_2)
//print(143)

//var root144 = TreeHelper().buildTreeWithBreathFirstSearch([1,-1,2,3])
//print(_144_Binary_Tree_Preorder_Traversal().preorderTraversal(root144))

//var root145 = TreeHelper().buildTreeWithBreathFirstSearch([1,-1,2,3])
//print(_145_Binary_Tree_Inorder_Traversal().postorderTraversal(root145))


//let cache = _146_LRU_Cache(2)
//cache.put(1, 1);
//cache.put(2, 2);
//print(cache.get(1), "1");       // returns 1
//cache.put(3, 3);    // evicts key 2
//print(cache.get(2), "-1");       // returns -1 (not found)
//cache.put(4, 4);    // evicts key 1
//print(cache.get(1), "-1")       // returns -1 (not found)
//print(cache.get(3), "3");       // returns 3
//print(cache.get(4), "4");

//let root147 = TreeHelper().convertListToListNode([4,2,1,3])
//let res147 = _147_Insertion_Sort_List().insertionSortList(root147)
//print(147)

//let root148 = TreeHelper().convertListToListNode([4,2,1,3])
//let res148 = _148_Sort_List().sortList(root148)
//print(res148)

//print(_152_Maximum_Product_Subarray().maxProduct([2,3,-2,4]), 6)
//print(_152_Maximum_Product_Subarray().maxProduct([-2,0,-1]), 0)

//print(_153_Find_Minimum_in_Rotated_Sorted_Array().findMin([3,4,5,1,2]))
//print(_153_Find_Minimum_in_Rotated_Sorted_Array().findMin([4,5,6,7,1,2,3]))
//print(_153_Find_Minimum_in_Rotated_Sorted_Array().findMin([1,2]))
//print(_153_Find_Minimum_in_Rotated_Sorted_Array().findMin([2,1]))

//print(_154_Find_Minimum_in_Rotated_Sorted_Array_2().findMin([3,4,5,1,2]))
//print(_154_Find_Minimum_in_Rotated_Sorted_Array_2().findMin([4,5,6,7,1,2,3]))
//print(_154_Find_Minimum_in_Rotated_Sorted_Array_2().findMin([4,5,6,1,2,3,4]))
//print(_154_Find_Minimum_in_Rotated_Sorted_Array_2().findMin([3,3,3,1]))
//print(_154_Find_Minimum_in_Rotated_Sorted_Array_2().findMin([1,3,5]))
//print(_154_Find_Minimum_in_Rotated_Sorted_Array_2().findMin([10,1,10,10,10]))

//print(_162_Find_Peak_Element().findPeakElement([3,4,3,2,1]))
//print(_162_Find_Peak_Element().findPeakElement([1,2,3,1]))
//print(_162_Find_Peak_Element().findPeakElement([1,2,1,3,5,6,4]))
//print(_162_Find_Peak_Element().findPeakElement([1]))
//print(_162_Find_Peak_Element().findPeakElement([2, 1]))
//print(_162_Find_Peak_Element().findPeakElement([]))
//print(_162_Find_Peak_Element().findPeakElement([0,1,3]))

//print(_164_Maximum_Gap().maximumGap([3,6,9,1]), 3)
//print(_164_Maximum_Gap().maximumGap([3]), 0)

//print(_188_Best_Time_to_Buy_and_Sell_Stock().maxProfit(2, [2,1,2,0,1]))
//print(_188_Best_Time_to_Buy_and_Sell_Stock().maxProfit(2, [3,5,0,3,1,4]))
//print(_188_Best_Time_to_Buy_and_Sell_Stock().maxProfit(2, [3,3,5,0,0,3,1,4]))
//print(_188_Best_Time_to_Buy_and_Sell_Stock().maxProfit(2, [1,2,3,4,5]))
//print(_188_Best_Time_to_Buy_and_Sell_Stock().maxProfit(2, [7,6,4,3,1]))

//print(_191_Number_of_1_Bits().hammingWeight(0b00000000000000000000000000001011))
//print(_191_Number_of_1_Bits().hammingWeight(0b00000000000000000000000010000000))
//print(_191_Number_of_1_Bits().hammingWeight(0b11111111111111111111111111111101))

//let list206 = TreeHelper().convertListToListNode([1,2,3,4,5])
//let res206 = _206_Reverse_Linked_List().reverseList(list206)
//print(res206?.val as Any)

//print(_215_Kth_Largest_Element_in_an_Array().findKthLargest([3,2,1,5,6,4], 2))
//print(_215_Kth_Largest_Element_in_an_Array().findKthLargest([3,2,3,1,2,4,5,5,6], 4))

//print(_227_Basic_Calculation_2().calculate("3+2*2 + 1"), 7)
//print(_227_Basic_Calculation_2().calculate(" 3/2 "), 1)
//print(_227_Basic_Calculation_2().calculate(" 3+5 / 2"), 5)

//print(_231_Power_of_Two().isPowerOfTwo(0))
//print(_231_Power_of_Two().isPowerOfTwo(1))
//print(_231_Power_of_Two().isPowerOfTwo(16))
//print(_231_Power_of_Two().isPowerOfTwo(218))

//let root257 = TreeHelper().buildTreeWithBreathFirstSearch([1, 2, 3, -1, 5])
//print(_257_Binary_Tree_Paths().binaryTreePaths(root257))

//print(_268_Missing_Number().missingNumber([0,1]))
//print(_268_Missing_Number().missingNumber([3,0,1]))
//print(_268_Missing_Number().missingNumber([9,6,4,2,3,5,7,0,1]))

//print(_279_Perfect_Squares().numSquares(12), 3)
//print(_279_Perfect_Squares().numSquares(13), 2)

//var list283_1 = [0,1,0,3,12]
//_283_Move_Zeroes().moveZeroes(&list283_1)
//print(list283_1, [1,3,12,0,0])
