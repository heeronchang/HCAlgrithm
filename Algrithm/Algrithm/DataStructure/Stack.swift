//
//  Stack.swift
//  Algrithm
//
//  Created by Heeron on 2018/8/29.
//  Copyright © 2018年 HeeronChang. All rights reserved.
//

import Foundation

class Stack {
    var stack: [AnyObject]
    var isEmpty: Bool {
        return stack.isEmpty
    }
    
    var peek: AnyObject? {
        return stack.last
    }
    
    init() {
        stack = [AnyObject]()
    }
    
    func push(object: AnyObject) {
        stack.append(object)
    }
    
    func pop() -> AnyObject? {
        
        guard !isEmpty else {
            return nil;
        }
        
        return stack.removeLast()
    }
}
