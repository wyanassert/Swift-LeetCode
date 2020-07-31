//
//  JianZhiOffer_09_Two_Stack_For_Queue.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class JianZhiOffer_09_Two_Stack_For_Queue: NSObject {
    var stack0: [Int]
    var stack1: [Int]
    override init() {
        stack0 = [Int]()
        stack1 = [Int]()
    }
    
    func appendTail(_ value: Int) {
        stack0.append(value)
    }
    
    func deleteHead() -> Int {

        if stack1.isEmpty {
            while !stack0.isEmpty {
                stack1.append(stack0.removeLast())
            }
        }

        return stack1.isEmpty ? -1 : stack1.removeLast()
    }
}
