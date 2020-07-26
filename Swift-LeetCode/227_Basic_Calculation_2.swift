//
//  227_Basic_Calculation_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/25.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _227_Basic_Calculation_2: NSObject {
    
//  将 + - 的结果直接入栈, 遇到 * / 则出栈最后一个数 跟当前数字计算再入栈, op 指的是上一个操作符, 然后把当前操作符赋值给 op, 在 s 的最后面增加一个+ 来让最后一个数字入栈, 最后用 reduce 计算结果即可
    func calculate(_ s: String) -> Int {
        var num = 0
        var stack = [Int]()
        var op = "+"

        for char in s+"+" where char != " " {
            if let number = char.wholeNumberValue {
                num = num * 10 + number
            } else {
                // handle + - * /
                switch op {
                    case "+":
                    stack.append(num)
                    case "-":
                    stack.append(-num)
                    case "*":
                    stack.append(stack.removeLast() * num)
                    case "/":
                    stack.append(stack.removeLast() / num)
                   default: break
                }
                num = 0
                op = String(char)
            }
        }
        return stack.reduce(0, +)
    }
}
