//
//  ViewController.swift
//  Algrithm
//
//  Created by Heeron on 2018/8/29.
//  Copyright © 2018年 HeeronChang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        textStack()
//        dicAndSet()
//        testTwoSum()
        testStrings()
    }
    
    /// 测试自定义栈
    func textStack() {
        let stack = Stack()
        stack.push(object: "1" as AnyObject)
        stack.push(object: "2" as AnyObject)
        print(stack.peek as Any)
        print(stack.pop() as Any)
        print(stack.pop()!)
        print(stack.pop() as Any)
    }
    
    /// 自定集合
    func dicAndSet () {
        let primeNums: Set = [3, 5, 7, 11, 13]
        let oddNums: Set = [1, 3, 5, 7, 9]
        
        // 交集 并集 差集
        let primeAndOddNum = primeNums.intersection(oddNums)
        print(primeAndOddNum)
        let primeOrOddNum = primeNums.union(oddNums)
        print(primeOrOddNum)
        let primeNotOddNum = primeNums.subtracting(oddNums)
        print(primeNotOddNum)
        
        // Question 用字典和高阶函数计算字符串中每个字符出现的频率
        let dic = Dictionary("hello".map { ($0, 1) }, uniquingKeysWith: +)
        print(dic)
    }
    
    /// twoSum
    func testTwoSum() {
        let twoSum = TwoSum()
        let nums: [Int] = [1, 2, 3]
    
        let has: Bool = twoSum.twoSum(nums: nums, 6)
        print(has)
        
        let indexs: [Int] = twoSum.twoSum(nums: nums, 3)
        print(indexs)
    }
    
    /// strings
    func testStrings() {
        // 字符串和数字间的转换
        var str  = "3"
        _ = Int(str)
        let number = 3
        _ = String(number)
        
        // 字符串长度
        let str2 = "helloworld"
        _ = str2.count
        
        // 访问字符串中的单个字符 时间复杂度O(1)
        let str3 = "hello, world!"
        let char = str[str.index(str.startIndex, offsetBy: 0)]
        print(char)
        let charOfindex = str3.index(str3.startIndex, offsetBy: 2)
        print(str3[charOfindex])
        
        // 修改字符串
        var str4 = "hello, world!"
        str4.remove(at: str.startIndex)
        str4.remove(at: str4.index(str4.startIndex, offsetBy: str4.count-1))
        str4.append("2")
        str4 += "hello world"
        
        // 判断字符串是否为数字组成
        let str5 = "123"
        let isNumberStr = str5.isNumberString()
        print(isNumberStr)
        
        // 字符串排序
        let str6 = "2339849349513590757518301uU80"
        let sortedStr = String(str6.sorted())
        print(sortedStr)
        
        // 字符串反转
        let str7 = "the sky is blue"
        let reversedStr = str7.reversedByWords()
        print(reversedStr)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

