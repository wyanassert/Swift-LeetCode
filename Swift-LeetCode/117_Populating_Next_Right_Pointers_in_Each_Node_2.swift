//
//  117_Populating_Next_Right_Pointers_in_Each_Node_2.swift
//  Swift-LeetCode
//
//  Created by wyan on 2020/7/23.
//  Copyright © 2020 wyanassert. All rights reserved.
//

import Cocoa

class _117_Populating_Next_Right_Pointers_in_Each_Node_2: NSObject {
    
//    Fastest and simple anser
//    func connect(_ root: Node?) -> Node? {
//        guard root != nil else {return nil}
//        var leftMost = root
//        let dummy = Node(0)
//        while leftMost != nil {
//            var cur = leftMost
//            var pre = dummy
//            while cur != nil {
//                if cur!.left != nil {
//                    pre.next = cur!.left!
//                    pre = pre.next!
//                }
//                if cur!.right != nil {
//                    pre.next = cur!.right!
//                    pre = pre.next!
//                }
//                cur = cur!.next
//            }
//            leftMost = dummy.next
//            dummy.next = nil
//        }
//        return root
//    }

//https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii/discuss/744974/Swift
//    func connect(_ root: Node?) -> Node? {
//        var nodes = [[Node]]()
//        helper(root, 0, &nodes)
//
//        for i in 0..<nodes.count {
//            for j in 0..<(nodes[i].count-1) {
//                nodes[i][j].next = nodes[i][j+1]
//            }
//        }
//        return root
//    }
//
//    private func helper(_ root: Node?, _ level: Int, _ nodes: inout [[Node]]) {
//        guard let root = root else { return }
//        level < nodes.count ? nodes[level].append(root) : nodes.append([root])
//        helper(root.left, level+1, &nodes)
//        helper(root.right, level+1, &nodes)
//    }
//    func connect(_ root: Node?) -> Node? {
//        guard let root = root else { return nil }
//
//        var tmp: Node? = root
//        var first: Node?
//
//        var notEnd: Bool = true
//
//        while tmp != nil {
//            if first == nil && notEnd {
//                if var tmp = tmp {
//                    while true {
//                        if let leftTmp = tmp.left {
//                            first = leftTmp
//                            break
//                        } else if let rightTmp = tmp.right {
//                            first = rightTmp
//                            break
//                        } else {
//                            if let nextTmp = tmp.next {
//                                tmp = nextTmp
//                            } else {
//                                notEnd = false
//                                break
//                            }
//                        }
//                    }
//                } //prepare to next level
//            }
//            if let left = tmp?.left {
//                if let right = tmp?.right {
//                    left.next = right
//                } else if var next = tmp?.next {
//                    while true {
//                        if let leftNext = next.left {
//                            left.next = leftNext
//                            break
//                        } else if let rightNext = next.right {
//                            left.next = rightNext
//                            break
//                        } else {
//                            if let nextNext = next.next {
//                                next = nextNext
//                            } else {
//                                break
//                            }
//                        }
//                    }
//                }
//            }
//            if let right = tmp?.right {
//                if var next = tmp?.next {
//                    while true {
//                        if let leftNext = next.left {
//                            right.next = leftNext
//                            break
//                        } else if let rightNext = next.right {
//                            right.next = rightNext
//                            break
//                        } else {
//                            if let nextNext = next.next {
//                                next = nextNext
//                            } else {
//                                break
//                            }
//                        }
//                    }
//                }
//            }
//            if let next = tmp?.next {
//                tmp = next
//                continue //to next point in the same level
//            } else {
//                tmp = first //go to next level
//                first = nil
//            }
//        }
//        return root
//    }
    
//    递归做法 先处理右边再处理左边 是对于下面错误的递归的修正以及优化
    func traversal(_ root: Node?) {
        guard let root = root else { return }
        
        var next = root.next
        while next != nil {
            if let leftNext = next?.left {
                next = leftNext
                break
            } else if let rightNext = next?.right {
                next = rightNext
                break
            } else {
                next = next?.next
            }
        }

        if let right = root.right {
            right.next = next
        }
        if let left = root.left {
            left.next = root.right == nil ? next : root.right
        }
        traversal(root.right)
        traversal(root.left)
    }

    func connect(_ root: Node?) -> Node? {
        guard let root = root else { return nil }

        traversal(root)

        return root
    }
    
//    递归做法, 如果先左后右会有问题 递归时候 node.next 节点还未处理, 所以想一直向右找 next 然后赋给子节点的 next 不现实
//    Error TestCase: [2,1,3,0,7,9,1,2,-1,1,0,-1,-1,8,8,-1,-1,-1,-1,7]
//    func traversal(_ root: Node?) {
//        guard let root = root else { return }
//
//        if let left = root.left {
//            if let right = root.right {
//                left.next = right
//            } else if var next = root.next {
//                while true {
//                    if let nextLeft = next.left {
//                        left.next = nextLeft
//                        break
//                    } else if let nextRight = next.right {
//                        left.next = nextRight
//                        break
//                    } else {
//                        if let nextNext = next.next {
//                            next = nextNext
//                        } else {
//                            break
//                        }
//                    }
//                }
//            }
//        }
//        if let right = root.right {
//            if var next = root.next {
//                while true {
//                    if let nextLeft = next.left {
//                        right.next = nextLeft
//                        break
//                    } else if let nextRight = next.right {
//                        right.next = nextRight
//                        break
//                    } else {
//                        //Error Here, <next> Not Deal until now, so next always be nil
//                        if let nextNext = next.next {
//                            next = nextNext
//                        } else {
//                            break
//                        }
//                    }
//                }
//            }
//        }
//        traversal(root.left)
//        traversal(root.right)
//    }
//
//    func connect(_ root: Node?) -> Node? {
//        guard let root = root else { return nil }
//
//        traversal(root)
//
//        return root
//    }
}
