//
//  561ArrayPartitionI.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2017/11/29.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 Given an array of 2n integers, your task is to group these integers into n pairs of integer, say (a1, b1), (a2, b2), ..., (an, bn) which makes sum of min(ai, bi) for all i from 1 to n as large as possible.
 
 Example 1:
 Input: [1,4,3,2]
 
 Output: 4
 Explanation: n is 2, and the maximum sum of pairs is 4 = min(1, 2) + min(3, 4).
 Note:
 n is a positive integer, which is in the range of [1, 10000].
 All the integers in the array will be in the range of [-10000, 10000].
 */

/// 这道题其实有个比较容易理解的点，因为要通过两个数中的最小数相加得到最大的值，那肯定就是两个只差1的数来比较，这样的话其实只要把数组排序下然后直接就隔两个取数就行，不过麻烦的是 Swift 中如何跳两个取数我忘记了..看了下 Paul 在 CS193p 中其实已经教过了，看来没学好呀😂
/// There's one tip out there, since the question is making maximum sum of min(ai, bi) for all i from 1 to n as large as possible, it's clear that bi = ai + 1, only in that way can get the maximum sum. So use sorted() to sort the array and add by jumping one number each time.

class Solution_561 {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let temp = nums.sorted()
        var result = 0;
        for index in stride(from: 0, to: temp.count, by: 2) {
            result += temp[index]
        }
        return result
    }
}

//let array = [1,4,3,2]
//print(Solution_561().arrayPairSum(array))

