//
//  760FindAnagramMappings.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2018/1/11.
//  Copyright © 2018年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 Given two lists Aand B, and B is an anagram of A. B is an anagram of A means B is made by randomizing the order of the elements in A.
 
 We want to find an index mapping P, from A to B. A mapping P[i] = j means the ith element in A appears in B at index j.
 
 These lists A and B may contain duplicates. If there are multiple answers, output any of them.
 
 For example, given
 
 A = [12, 28, 46, 32, 50]
 B = [50, 12, 32, 46, 28]
 We should return
 [1, 4, 3, 2, 0]
 
 as P[0] = 1 because the 0th element of A appears at B[1], and P[1] = 4 because the 1st element of A appears at B[4], and so on.
 Note:
 
 A, B have equal lengths in range [1, 100].
 A[i], B[i] are integers in range [0, 10^5].

 */

/// Use Dictionary (HashMap)
/// 使用字典就行

class Solution_760 {
    func anagramMappings(_ A: [Int], _ B: [Int]) -> [Int] {
        var dic = [Int: Int]()
        for i in 0..<B.count {
            dic[B[i]] = i
        }
        var result = [Int]()
        var t = 0
        for index in A {
            result.insert(dic[index]!, at: t)
            t += 1
        }
        return result
    }
}

//let A: [Int] = [12, 28, 46, 32, 50]
//let B: [Int] = [50, 12, 32, 46, 28]
//print(Solution_760().anagramMappings(A, B))


