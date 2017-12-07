//
//  412FizzBuzz.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2017/12/7.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 Write a program that outputs the string representation of numbers from 1 to n.
 
 But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.
 
 Example:
 
 n = 15,
 
 Return:
 [
 "1",
 "2",
 "Fizz",
 "4",
 "Buzz",
 "Fizz",
 "7",
 "8",
 "Fizz",
 "Buzz",
 "11",
 "Fizz",
 "13",
 "14",
 "FizzBuzz"
 ]
 */

class Solution_412 {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        for index in 1...n {
            if index % 3 == 0 && index % 5 == 0 {
                result.append("FizzBuzz")
            } else if index % 3 == 0 {
                result.append("Fizz")
            } else if index % 5 == 0 {
                result.append("Buzz")
            } else {
                result.append(String(index))
            }
        }
        return result
    }
}

//let test = 15
//print(Solution_412().fizzBuzz(test))

