//
//  146_LRU_Cache.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/30.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _146_LRU_Cache: NSObject {
    
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
