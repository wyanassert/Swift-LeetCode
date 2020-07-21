//
//  119_Pascals_Triangle_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _119_Pascals_Triangle_2: NSObject {
    
    func getRow(_ rowIndex: Int) -> [Int] {
        var results = [Int]()
        
        for _ in 0..<rowIndex+1 {
            results.append(1)
        }
        
        if(rowIndex < 2) {
            return results
        }
        
        for i in 2..<rowIndex+1 {
            for j in (1..<i).reversed() {
                results[j] = results[j] + results[j-1]
            }
        }
        
        return results;
    }
    
    //Time Limit Exceeded when input 26
//    func getNumOfIndex(_ i: Int, _ j: Int) -> Int {
//        if i < 2 || i == j || j == 0 {
//            return 1
//        } else {
//            return getNumOfIndex(i - 1, j - 1) + getNumOfIndex(i - 1, j)
//        }
//    }
//
//    func getRow(_ rowIndex: Int) -> [Int] {
//        var results = [Int]()
//        let realIndex = rowIndex + 1
//        for i in 0..<realIndex {
//            results.append(getNumOfIndex(rowIndex, i))
//        }
//        return results;
//    }
}
