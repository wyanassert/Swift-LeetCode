//
//  018_4Sum.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/21.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _18_4Sum: NSObject {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        if nums.count < 4 {
            return []
        }
    
        let sortedArray = nums.sorted { (num1, num2) -> Bool in
            return num1 < num2
        }
        
        var results = [[Int]]()
        
        for i in 0..<sortedArray.count-3 {
            if i > 0 && sortedArray[i] == sortedArray[i - 1] {
                continue
            }
            for j in i+1..<sortedArray.count-2 {
                if j > i + 1 && sortedArray[j] == sortedArray[j - 1] {
                    continue
                }
                var left = j + 1;
                var right = sortedArray.count - 1
                while left < right {
                    if sortedArray[i] + sortedArray[j] + sortedArray[left] + sortedArray[right] < target {
                        left += 1
                    } else if sortedArray[i] + sortedArray[j] + sortedArray[left] + sortedArray[right] == target {
                        results.append([sortedArray[i], sortedArray[j], sortedArray[left], sortedArray[right]])
                        repeat {
                            left += 1
                        } while left < right && sortedArray[left - 1] == sortedArray[left]
                        repeat {
                            right -= 1
                        } while left < right && sortedArray[right + 1] == sortedArray[right]
                    } else {
                        right -= 1
                    }
                }
            }
        }
        
        return results
    }
    // too Slow in this case, exactly 372ms, the function below is 112ms with less memory
//    class Pair {
//        var a: Int
//        var b: Int
//
//        var ai: Int
//        var bi: Int
//
//        let sum: Int
//
//        init(a: Int, b: Int, ai: Int, bi: Int) {
//            self.a = a
//            self.b = b
//            self.ai = ai
//            self.bi = bi
//
//            self.sum = a + b
//        }
//
//        func canBeUseWith(_ that: Pair) -> Bool {
//            return self.ai != that.ai
//                && self.ai != that.bi
//                && self.bi != that.ai
//                && self.bi != that.bi;
//        }
//
//    }
//
//    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
//        if nums.count < 4 {
//            return []
//        }
//
//        let sortedArray = nums.sorted { (num1, num2) -> Bool in
//            return num1 < num2
//        }
//
//        var pairMap = [Int: [Pair]]()
//        var pairSumArray = [Int]()
//        let size = sortedArray.count
//
//        for i in 0..<size-1 {
//            for j in i+1..<size {
//                let pair: Pair = Pair.init(a: sortedArray[i], b: sortedArray[j], ai: i, bi: j)
//                let num: Int = pair.sum;
//                if pairMap[num] != nil {
//                    pairMap[num]!.append(pair)
//                } else {
//                    pairMap[num] = [pair]
//                    pairSumArray.append(num)
//                }
//            }
//        }
//
//        var results = [[Int]]()
//        var sumMap = [Int: Int]()
//        for i in 0..<pairSumArray.count {
//            let num = pairSumArray[i]
//            let find: Int = target - num
//            let findIndex: Int? = sumMap[find]
//            if findIndex == nil {
//                sumMap[num] = i
//                if num * 2 == target {
//                    let pairListA: [Pair]? = pairMap[find]
//                    if(pairListA!.count > 1) {
//                        for i in 0..<pairListA!.count {
//                            for j in i + 1..<pairListA!.count {
//                                let pairA: Pair? = pairListA?[i]
//                                let pairB: Pair? = pairListA?[j]
//                                if pairA!.canBeUseWith(pairB!) {
//                                    results.append([pairA!.a, pairA!.b, pairB!.a, pairB!.b])
//                                }
//                            }
//                        }
//                    }
//                }
//            } else {
//                let pairListA: [Pair]? = pairMap[find]
//                let pairListB: [Pair]? = pairMap[num]
//                for pairA in pairListA! {
//                    for pairB in pairListB! {
//                        if pairA.canBeUseWith(pairB) {
//                            results.append([pairA.a, pairA.b, pairB.a, pairB.b])
//                        }
//                    }
//                }
//            }
//        }
//
//        results = results.map {$0.sorted(by: {$0 < $1})}
//
//        results = results.sorted(by: { (list1: [Int], list2: [Int]) -> Bool in
//            var small: Bool = false;
//            for i in 0..<min(list1.count, list2.count) {
//                if(list1[i] == list2[i]) {
//                    continue
//                } else {
//                    small = list1[i] > list2[i]
//                }
//            }
//            return small
//        })
//
//        var clearResults = [[Int]]()
//        if results.count > 0 {
//            clearResults.append(results.first!)
//            for i in 1..<results.count  {
//                let list = results[i]
//                if list != clearResults.last {
//                    clearResults.append(list)
//                }
//            }
//        }
//
//        return clearResults
//    }
}
