//
//  617MergeTwoBinaryTrees.swift
//  MyLeetcodeNotes
//
//  Created by VoiceBeer on 2017/11/29.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

/*
 Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.
 
 You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node. Otherwise, the NOT null node will be used as the node of new tree.
 
 Example 1:
 Input:
 Tree 1                     Tree 2
     1                         2
    / \                       / \
   3   2                     1   3
  /                           \   \
 5                             4   7
 Output:
 Merged tree:
    3
   / \
  4   5
 / \   \
 5  4   7
 Note: The merging process must start from the root nodes of both trees.
 */

// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

/// 递归，相当于同时着手于单独的一个节点，判断后相加，然后再对他的两个子节点做同样的操作
/// Recursion, deal with one node, add the numbers after judging whether it's nil, then operate its left and right node

class Solution_617 {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        if (t1 == nil) {
            return t2
        }
        if (t2 == nil) {
            return t1
        }
        t1?.val += (t2?.val)!
        t1?.left = mergeTrees(t1?.left, t2?.left)
        t1?.right = mergeTrees(t1?.right, t2?.right)
        return t1
    }
}

//let root1 = TreeNode(1)
//let root1_3 = TreeNode(3)
//let root1__2 = TreeNode(2)
//let root1_3_5 = TreeNode(5)
//root1.left = root1_3
//root1.right = root1__2
//root1_3.left = root1_3_5
//
//let root2 = TreeNode(2)
//let root2_1 = TreeNode(1)
//let root2__3 = TreeNode(3)
//let root2_1__4 = TreeNode(4)
//let root2__3__7 = TreeNode(7)
//root2.left = root2_1
//root2.right = root2__3
//root2_1.right = root2_1__4
//root2__3.right = root2__3__7
//
//let test = Solution_617().mergeTrees(root1, root2)

