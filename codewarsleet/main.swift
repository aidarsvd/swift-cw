//
//  main.swift
//  codewarsleet
//
//  Created by Айдар Чакиев on 22/3/21.
//

import Foundation

let problem = Solution()
print(problem.findDeletedNumber([1,2,3,4,5,6,7,8,9],[3,2,4,6,7,8,1,9]))

class Solution{
    func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
        var newArray = mixArray
        var res = 0
        newArray.sort()
        for i in newArray.indices {
            if newArray[i] != array[i] {
                res = array[i]
                break
            }
        }
        return res
    }
}
