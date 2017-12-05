//
//  500KeyboardRow.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2017/12/5.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
 
 
 American keyboard
 
 
 Example 1:
 Input: ["Hello", "Alaska", "Dad", "Peace"]
 Output: ["Alaska", "Dad"]
 Note:
 You may use one character in the keyboard more than once.
 You may assume the input string will only contain letters of alphabet.
 */

/// 不会做，看了 Discuss 里的，发现可以用 Set，学到了。当集合元素顺序不重要时或者希望确保每个元素只出现一次时可以使用集合而不是数组。
/// Use Set. You can use a set instead of an array when the order of items is not important, or when you need to ensure that an item only appears once.

class Solution500 {
    func findWords(_ words: [String]) -> [String] {
        let line1 = ["q","w","e","r","t","y","u","i","o","p"]
        let line2 = ["a","s","d","f","g","h","j","k","l"]
        let line3 = ["z","x","c","v","b","n","m"]
        var result = [String]()
        for word in words {
            var temp = Set<String>()
            for index in word.lowercased().characters {
                temp.insert(index.description)
            }
            if temp.isSubset(of: line1) || temp.isSubset(of: line2) || temp.isSubset(of: line3) {
                result.append(word)
            }
        }
        return result
    }
}

//let test = ["Hello", "Alaska", "Dad", "Peace"]
//print(Solution500().findWords(test))

