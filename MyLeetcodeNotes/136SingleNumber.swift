//
//  136SingleNumber.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2018/1/15.
//  Copyright © 2018年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 Given an array of integers, every element appears twice except for one. Find that single one.
 
 Note:
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 */

/// use XOR
//  If we take XOR of zero and some bit, it will return that bit
//  a⊕0=a
//  If we take XOR of two same bits, it will return 0
//  a⊕a=0
//  a⊕b⊕a=(a⊕a)⊕b=0⊕b=b
/// 用异或
class Solution_136 {
    func singleNumber(_ nums: [Int]) -> Int {
        var a = 0;
        for number in nums {
            a ^= number
        }
        return a
    }
}

//let test = [1,2,1,3,4,4,2]
//print(Solution_136().singleNumber(test))

