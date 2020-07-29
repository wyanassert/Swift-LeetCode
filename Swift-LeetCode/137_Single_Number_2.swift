//
//  137_Single_Number_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/29.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _137_Single_Number_2: NSObject {
//  只考虑一位的情况, 本身是(0 个 1)状态, 加 1 进入 (1 个 1)状态, 再加1 进入(两个1)状态, 再加 1 进入 (3 个 1)状态, 四个状态下加 0 维持原状态, 同时考虑到状态 3 和状态 0 是一样的, 3/0 加一都到 2, 加 0 维持本身, 因此合并 0/3 两个状态
//有如下变化
//    状态    加 x    下个状态
//    0    1/0    1/0
//    1    1/0    2/1
//    2    1/0    0/2
//    因此定义两各个变量 one, two 来表示三种状态
//    状态    one    two
//    0    0    0
//    1    1    0
//    2    0    1
//    然后可知: one 变成 1 的情况
//    one=0 two=0 x=1 ==>one=1
//    one=1 two=0 x=0 ==>one=1
//
//    所以one = (x^one) & ~two
//
//    由于上面的运算 one 变了, 所以我用一个 tmp 来代表原本的 one
//    tmp=1 two=0 x=1 => two=1
//    tmp=0 two=1 x=0 => two=1
//    所以 two = (x^two) & (tmp^two)
//
//    考虑这两个状态下 one 的变化
//    tmp=1 two=0 => one(新)=0
//    mp=0 two=1  => one(新)=0
//    所以(tmp^two)简化为~one
//    所以得到新表达式
//    one = (x^one) & ~two
//    two = (x^two) & ~one
//
//    其他数字都出现了 3 次,  假设 1 个的最后加上上去,
//    就是 状态 0 到状态 1,
//    按公式: one = (x^one) & ~two 此时 one 和 two 都是 0(false)
//    所以one = (x^one) & ~two=(x^0)&~0 = x 即 最后加上来的数
//    以此证明 one == 唯一出现一次的数 返回 one 即可
    func singleNumber(_ nums: [Int]) -> Int {
        var one = 0
        var two = 0
        
        for x in nums {
//            let tmp = one
//            one = (one ^ x) & ~two
//            two = (two ^ x) & (tmp ^ two)
            one = (one ^ x) & ~two
            two = (two ^ x) & ~one
        }
        
        return one
    }
}
