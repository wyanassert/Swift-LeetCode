//
//  TreeHelper.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/22.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

public class Node {
    public var val: Int
    public var left: Node?
    public var right: Node?
    public var next: Node?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.next = nil
    }
}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class TreeHelper: NSObject {
    var index = -1
    
    func reload() -> Void {
        self.index = -1
    }
    
    func buildTreeWithBreathFirstSearch(_ nodes: [Int]) -> TreeNode? {
        guard nodes.count > 0 else {
            return nil
        }
        
        var queue = [TreeNode]()
        var root: TreeNode? = nil
        
        for i in 0..<nodes.count {
            if nodes[i] < 0 {
                if queue.count == 0 {
                    break
                } else {
                    if let curr = queue.last {
                        if let left = curr.left, left.val < 0 {
                            curr.left = nil
                            continue
                        }
                        if let right = curr.right, right.val < 0 {
                            curr.right = nil
                            queue.removeLast()
                            continue
                        }
                        break
                    }
                }
            } else {
                let curr = TreeNode.init(nodes[i], TreeNode.init(-1), TreeNode.init(-1))
                if(queue.isEmpty) {
                    if root == nil {
                        root = curr
                        queue.insert(curr, at: 0)
                    } else {
                        break
                    }
                } else {
                    let last = queue.last!
                    if last.left != nil && last.left!.val < 0 {
                        last.left = curr
                        queue.insert(curr, at: 0)
                    } else if last.right != nil && last.right!.val < 0 {
                        last.right = curr
                        
                        queue.removeLast()
                        queue.insert(curr, at: 0)
                    } else {
                        break
                    }
                }
            }
        }
        
        for node in queue {
            if node.left != nil && node.left!.val < 0 {
                node.left = nil
            }
            if node.right != nil && node.right!.val < 0 {
                node.right = nil
            }
        }
        
        return root
    }
    
    func buildTreeWithDeepFirstSearch(_ nodes: [Int]) -> TreeNode? {
        guard nodes.count > 0 else {
            return nil
        }
        
        self.index += 1
        
        if self.index < nodes.count && index >= 0 {
            let value = nodes[self.index]
            if value < 0 {
                return nil
            } else {
                let node = TreeNode.init(value)
                node.left = buildTreeWithDeepFirstSearch(nodes)
                node.right = buildTreeWithDeepFirstSearch(nodes)
                return node
            }
        }
        return nil
    }
    
    public func height(_ r: TreeNode?) -> Int {
        return r != nil ? 1 + max(height(r?.left), height(r?.right)) : 0
    }
    
    func buildTreeForPopulatingNextRightPointersWithBreathFirstSearch(_ nodes: [Int]) -> Node? {
        guard nodes.count > 0 else {
            return nil
        }
        
        var queue = [Node]()
        var root: Node? = nil
        
        for i in 0..<nodes.count {
            if nodes[i] < 0 {
                if queue.count == 0 {
                    break
                } else {
                    if let curr = queue.last {
                        if let left = curr.left, left.val < 0 {
                            curr.left = nil
                            continue
                        }
                        if let right = curr.right, right.val < 0 {
                            curr.right = nil
                            queue.removeLast()
                            continue
                        }
                        break
                    }
                }
            } else {
                let curr = Node.init(nodes[i])
                curr.left = Node.init(-1)
                curr.right = Node.init(-1)
                curr.next = nil
                if(queue.isEmpty) {
                    if root == nil {
                        root = curr
                        queue.insert(curr, at: 0)
                    } else {
                        break
                    }
                } else {
                    let last = queue.last!
                    if last.left != nil && last.left!.val < 0 {
                        last.left = curr
                        queue.insert(curr, at: 0)
                    } else if last.right != nil && last.right!.val < 0 {
                        last.right = curr
                        
                        queue.removeLast()
                        queue.insert(curr, at: 0)
                    } else {
                        break
                    }
                }
            }
        }
        
        for node in queue {
            if node.left != nil && node.left!.val < 0 {
                node.left = nil
            }
            if node.right != nil && node.right!.val < 0 {
                node.right = nil
            }
        }
        
        return root
    }
}
