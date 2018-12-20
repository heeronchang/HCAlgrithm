//
//  Strings.swift
//  Algrithm
//
//  Created by Heeron on 2018/8/29.
//  Copyright © 2018年 HeeronChang. All rights reserved.
//

import Foundation

extension String {
    
    /// 检查字符串是否由数字构成
    ///
    /// - Returns: return value description
    func isNumberString() -> Bool {
        return Int(self) != nil
    }
    
    
    /// 给一个字符串，将其按照单词顺序进行反转。比如说 s 是 "the sky is blue",那么反转就是 "blue is sky the"
    ///
    /// - Returns: return value description
    func reversedByWords() -> String {
        var chars = Array(self)
        var start:Int = 0

        reverse(&chars, start, (chars.count-1))
        for i in 0 ..< chars.count {
            if i == chars.count-1 || chars[i+1] == " " {
                reverse(&chars, start, i)
                start = i + 2
            }
        }

        return String(chars)
    }
    
    private func reverse<T>(_ chars: inout [T], _ start: Int, _ end: Int) {
        var start = start, end = end
        while start < end {
            swap(&chars, start, q: end)
            start += 1
            end -= 1
        }
    }
    
    private func swap<T>(_ chars: inout [T], _ p: Int, q: Int) {
        (chars[p], chars[q]) = (chars[q], chars[p])
    }
}

