//
//  1TwoSum.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2017/11/2.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

class Solution {
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

let test = Solution().twoSum(nums, target)
print(test)
*/
