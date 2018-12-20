//
//  TwoSum.swift
//  Algrithm
//
//  Created by Heeron on 2018/8/29.
//  Copyright © 2018年 HeeronChang. All rights reserved.
//

import Foundation

class TwoSum {
    
    /// 给一个整型数组和一个目标值，判断数组中是否有两个数字之和等于目标值
    func twoSum(nums: [Int], _ target: Int) -> Bool {
        var set = Set<Int>()
        for num in nums {
            if set.contains(target - num) {
                return true
            }
            set.insert(num)
        }
        return false
    }
    
    /// 给定一个整型数组中有且仅有两个数字之和等于目标值，求两个数字在数组中的序号
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (index, num) in nums.enumerated() {
            if let hasIndex = dict[target - num] {
                return [hasIndex, index]
            } else {
                dict[num] = index
            }
        }
        
        fatalError("No valid output!")
    }
}
