//
//  557ReverseWordsInAStringIII.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2017/12/4.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
 
 Example 1:
 Input: "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 Note: In the string, each word is separated by single space and there will not be any extra space in the string.
 */

/// 第一个方法是根据中间的空格删减出所有字符串后给 result，然后 result 里的每个 reserve 一下给 resultString。第二个方法是根据 Leetcode 里的一个方案，首先把每个 character 存入一个 string 后，碰到一个空格就 reverse 一下给 result，然后继续循环。
/// Method1: Put the value before the blank(" ") to the array result. Then reverse the array and assign the value to the resultString. Method2: In the for-loop, put the characters to the word, if the character is " ", reserve the word and assign it to the result, then clear the word, continue the loop

class Solution_557 {
    func reverseWords(_ s: String) -> String {
        var resultString = String()
        var result = [String]()
        var nowString = s
        while nowString.count > 0 {
            let blankIndex = nowString.index(of: " ") ?? nowString.endIndex
            let tempString = nowString[..<blankIndex]
            if blankIndex != nowString.endIndex {
                nowString.removeSubrange(nowString.startIndex...blankIndex)
            } else {
                nowString.removeSubrange(nowString.startIndex..<blankIndex)
            }
            result.append(String(tempString))
        }
        for index in 0..<result.count {
            resultString += result[index].reversed() + " "
        }
        if resultString.count > 0{
            resultString.removeLast(1)
        }
        return resultString
    }
    
    func reverseWordsA(_ s: String) -> String {
        var result = String()
        var word = String()
        for index in s.characters {
            if index != " " {
                word.append(String(index))
            } else {
                result += word.description.reversed() + " "
                word.removeAll()
            }
        }
        result += word.description.reversed()
        return result
    }
}
