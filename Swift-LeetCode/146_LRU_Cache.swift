//
//  146_LRU_Cache.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/30.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _146_LRU_Cache: NSObject {
//    - [ ] 这一题 主要需要自己构建一个双向列表, 用来存储缓存的数据, 在 Cache 中建立 head 和 tail, 然后在 head 和 tail 之间维护这个双向列表
//    - [ ] 双向列表需要一个 add 方法和一个 remove 方法, add 方法首先将新 node插入到 head 和 head.nex 之间, remove 把 node 从 node.next 以及node.pre 之间拿掉
//    - [ ] 需要一个 Map 来维持缓存, 即达到 O(1)级别的存取效率, 每次 get 时候把 node 先 remove 再 add, 找不到就返回-1, put 的时候先根据 key 看找不找得到缓存,
//        - [ ] 如果找得到把对应的 node 暂时从双向列表中删掉, 之后再从新 add 让它处在第一位,
//        - [ ] 如果找不到缓存就要判断缓存池有没有满, 如果满了就把 tail.pre remove 掉, 然后根据 tail.pre.key 从缓存池删掉对应项
//    - [ ] 简而言之, 双向链表是为了实现 LRU同时兼顾存取效率, 缓存是为了实现快速取值
    class LeastRecentUseNode {
        
        var value: Int
        var key: Int
        
        var next: LeastRecentUseNode?
        var pre: LeastRecentUseNode?
        
        init(_ key: Int, _ value: Int) {
            self.key = key
            self.value = value
        }
    }
    
    var capacity: Int
    var cacheList: [Int: LeastRecentUseNode]
    var head: LeastRecentUseNode
    var tail: LeastRecentUseNode
    
    init(_ capacity: Int) {
        self.capacity = capacity
        self.cacheList = [Int: LeastRecentUseNode]()
        self.head = LeastRecentUseNode(Int.max, Int.max)
        self.tail = LeastRecentUseNode(Int.min, Int.min)
        self.head.next = self.tail
        self.tail.pre = self.head
    }
    
    func add(_ node: LeastRecentUseNode) {
        let next = self.head.next
        self.head.next = node
        node.next = next
        node.pre = self.head
        next?.pre = node
    }
    
    func remove(_ node: LeastRecentUseNode) {
        let next = node.next
        let pre = node.pre
        
        pre?.next = next
        next?.pre = pre
    }
    
    func get(_ key: Int) -> Int {
        if let node = self.cacheList[key] {
            remove(node)
            add(node)
            return node.value
        }
        return -1
    }
    
    func put(_ key: Int, _ value: Int) {
        if let node = cacheList[key] {
            remove(node)
        } else if cacheList.count >= self.capacity {
            if let lastNode = self.tail.pre {
                remove(lastNode)
                cacheList.removeValue(forKey: lastNode.key)
            }
        }
        
        let node = LeastRecentUseNode(key, value)
        add(node)
        cacheList[key] = node
    }
}
