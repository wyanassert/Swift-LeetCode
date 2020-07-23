//
//  002_add_two_number.swift
//  Swift-LeetCode
//
//  Created by wyan on 2019/3/26.
//  Copyright © 2019 wyanassert. All rights reserved.
//

import Cocoa
public class ListNodeNumTwo {
    public var val: Int
    public var next: ListNodeNumTwo?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class _02_add_two_number: NSObject {
    func test() -> Void {
        let l1 = ListNodeNumTwo(5)
        let l2 = ListNodeNumTwo(5)
        addTwoNumbers(l1, l2)
        
    }
    func addTwoNumbers(_ l1: ListNodeNumTwo?, _ l2: ListNodeNumTwo?) -> ListNodeNumTwo? {
        let dummy:ListNodeNumTwo = ListNodeNumTwo(0)
        var curr:ListNodeNumTwo = dummy
        var tmpNode1 : ListNodeNumTwo? = l1
        var tmpNode2 : ListNodeNumTwo? = l2
        
        var sum:Int = 0
        while tmpNode1 != nil || tmpNode2 != nil {
            var res:Int = sum
            if let n = tmpNode1 {
                res += n.val
                tmpNode1 = n.next
            }
            
            if let n = tmpNode2 {
                res += n.val
                tmpNode2 = n.next
            }
            
            sum = res / 10
            res = res % 10
            
            curr.next = ListNodeNumTwo(res)
            
            if let n = curr.next {
                curr = n
            }
        }
        
        if(sum == 1) {
            curr.next = ListNodeNumTwo(1)
        }
        return dummy.next;
    }
}
