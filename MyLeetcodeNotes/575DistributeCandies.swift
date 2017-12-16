//
//  575DistributeCandies.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2017/12/11.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 Given an integer array with even length, where different numbers in this array represent different kinds of candies. Each number means one candy of the corresponding kind. You need to distribute these candies equally in number to brother and sister. Return the maximum number of kinds of candies the sister could gain.
 
 Example 1:
 Input: candies = [1,1,2,2,3,3]
 Output: 3
 Explanation:
 There are three different kinds of candies (1, 2 and 3), and two candies for each kind.
 Optimal distribution: The sister has candies [1,2,3] and the brother has candies [1,2,3], too.
 The sister has three different kinds of candies.
 
 Example 2:
 Input: candies = [1,1,2,3]
 Output: 2
 Explanation: For example, the sister has candies [2,3] and the brother has candies [1,1].
 The sister has two different kinds of candies, the brother has only one kind of candies.
 Note:
 
 The length of the given array is in range [2, 10,000], and will be even.
 The number in given array is in range [-100,000, 100,000].
 */

/// Swift 中 Set 算是 HashSet 这样的了貌似，感觉有点方便
/// Use set (HashSet)
class Solution_575 {
    func distributeCandies(_ candies: [Int]) -> Int {
        var temp = Set<Int>()
        for candy in candies {
            temp.insert(candy)
        }
        return min(candies.count/2, temp.count)
    }
}

//let candies = [1,1,1,2,2,2]
//print(Solution_575().distributeCandies(candies))

