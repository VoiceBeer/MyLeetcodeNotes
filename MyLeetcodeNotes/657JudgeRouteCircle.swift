//
//  657JudgeRouteCircle.swift
//  MyLeetcodeNotes
//
//  Created by 陈昊 on 2017/11/10.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 Initially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.
 
 The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.
 
 Example 1:
 Input: "UD"
 Output: true
 
 Example 2:
 Input: "LL"
 Output: false
 */

/// 刚看到我还以为要用堆来 push 进去然后碰到对应的再 push 出来，看了下讨论区有一个 Python 的直接 count 对应步骤的数量对比更快一些，但如果数据量大的话是不是还是堆好一些？用了两种方法，应该是第二种空间复杂度小

/// Thinking about use Heap at first, but in Discuss Area there's one guy using count() to count the numbers of steps and judge. Don't know which one is better. I use two methods, thought second one is better.

class Solution_657 {
    func judgeCircle(_ moves: String) -> Bool {
//        First method
//        let moves = " " + moves + " "
//        return (moves.split(separator: "U").count == moves.split(separator: "D").count) && (moves.split(separator: "L").count == moves.split(separator: "R").count)
        
//        Second method
        var v = 0, h = 0
        for char in moves {
            switch(char) {
            case "U": v += 1
            case "D": v -= 1
            case "L": h += 1
            case "R": h -= 1
            default:
                break
            }
        }
        return v==0 && h==0
    }
}

//let test = "UDLRR"
//let testSolution = Solution_657().judgeCircle(test)
//print(testSolution)

