//
//  728SelfDividingNumbers.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2017/11/29.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 A self-dividing number is a number that is divisible by every digit it contains.
 
 For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
 
 Also, a self-dividing number is not allowed to contain the digit zero.
 
 Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.
 
 Example 1:
 Input:
 left = 1, right = 22
 Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
 Note:
 
 The boundaries of each input argument are 1 <= left <= right <= 10000.
 */

/// 这题主要就是像 Hints 里说的，先把一个数拆开成一个 character 的数组，然后再根据这个数组来一一 % 一下就行，在 Int，String 还有怎么把 String 转成 char 数组上花了些时间，拼命在搜索 toString，toInt，Parse 这种 Java 中的东西..结果人家直接前面加个强转就行，看来真是需要刷一遍文档加深下印象了😂

/// Like Hints said, check whether it is self dividing by converting that number to a character array, then checking that each digit is nonzero and divides the original number.

class Solution_728 {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var array = [Int]()
        for index in left...right {
            if selfDividing(index) {
                array.append(index)
            }
        }
        return array
    }
    
    private func selfDividing(_ numberToDivide: Int) -> Bool {
        for index in Array(String(numberToDivide)) {
            if (index == "0") || (numberToDivide % Int(index.description)! != 0) {
                return false
            }
        }
        return true
    }
}

//let testSolution = Solution_728().selfDividingNumbers(1, 22)
//print(testSolution)

