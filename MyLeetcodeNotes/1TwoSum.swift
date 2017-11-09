//
//  1TwoSum.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2017/11/2.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

/*
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
*/

/// 主要是两个 for 循环，第一层选定一个数，第二层来找符合两者相加等于 target 的第二个数，Java 的 Map 能快一些，Swift 的话好像也有，现在还不知道以后说不定会加。
/// Two (for-loop)s. The first loop is to choose a number in the given array, the second loop is to find the number that fits the numToFind which is Target minus first number. In Java, use Map() can improve the efficency, I don't know how to use Map() in Swift, maybe recode this answer in the future.

class Solution_1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexs = [Int]()
        for index in 0 ..< nums.count {
            let numToFind = target - nums[index]
            for index2 in index+1 ..< nums.count {
                if nums[index2] == numToFind {
                    indexs.append(index)
                    indexs.append(index2)
                }
            }
        }
        return indexs
    }
}

/* main()
let nums = [3,2,4]
let target = 6

let test = Solution_1().twoSum(nums, target)
print(test)
*/
