//
//  017_Letter_Combinations_of_a_Phone_Number.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _017_Letter_Combinations_of_a_Phone_Number: NSObject {
    let numMap:[String: String] = [
        "2":"abc",
        "3":"def",
        "4":"ghi",
        "5":"jkl",
        "6":"mno",
        "7":"pqrs",
        "8":"tuv",
        "9":"wxyz",
    ]
    
    func backtrace(_ digits: [Character], _ start: Int, _ currString: String, _ results: inout [String]) {
        guard start < digits.count else {
            if currString.count > 0 {
                results.append(currString)
            }
            return
        }
        if let range = numMap[String(digits[start])] {
            for c in range {
                let strNew = currString + String(c)
                backtrace(digits, start + 1, strNew, &results)
            }
        }
    }
    
    func letterCombinations(_ digits: String) -> [String] {
        
        var results: [String] = []
        
        backtrace(Array(digits), 0, "", &results)
        
        return results
    }
}
