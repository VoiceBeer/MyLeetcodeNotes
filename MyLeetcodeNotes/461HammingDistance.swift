//
//  461HammingDistance.swift
//  MyLeetcodeNotes
//
//  Created by 陈昊 on 2017/11/9.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers x and y, calculate the Hamming distance.
 
 Note:
 0 ≤ x, y < 231.
 
 Example:
 
 Input: x = 1, y = 4
 
 Output: 2
 
 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
        ↑   ↑
 
 The above arrows point to positions where the corresponding bits are different.
 */

/// 这个其实我题目没看懂，看了下例子后才明白是计算给定的两个数的二进制中的差异，其实我不会，看了 Discuss 中的一些提示后才想起能用 xor 也就是异或来处理，我竟然没有这种意识！看来还太菜了。异或后再用 Swift 中的 bitcount 来计算下有几个 1 就行

/// Actually, I dont know how to solve this, but in the Discuss area I realized that it's about XOR(^), So numb as I am, I didn't even realize it! After XOR the two given numbers, use Bitcount(see details in the documentation) will get the answer.

class Solution_461 {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        let xor = x ^ y
        return xor.nonzeroBitCount
    }
}

/*
 let num1 = 2
 let num2 = 5
 
 let test = Solution_461().hammingDistance(num1, num2)
 print(test)
 */
