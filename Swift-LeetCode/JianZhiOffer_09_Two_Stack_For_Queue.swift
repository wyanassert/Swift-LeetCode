//
//  JianZhiOffer_09_Two_Stack_For_Queue.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/31.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class JianZhiOffer_09_Two_Stack_For_Queue: NSObject {
//    - [ ] 构造两个栈, 第一个栈管理入栈, 第二个栈管理出栈
//    - [ ] 入队: 入第一个栈
//    - [ ] 出队: 若第二个栈为空, 则第一个一次出栈并如第二个栈
//        - [ ] 操作完  若第二个栈为依旧空 返回-1
//        - [ ] 若第二个栈不为空, 直接第二个栈出并返回
//    - [ ] 一定要搞明白: 第二个栈栈顶 早于 第二个栈栈底 早于 第一个栈栈底 早于第一个栈栈顶
    
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
