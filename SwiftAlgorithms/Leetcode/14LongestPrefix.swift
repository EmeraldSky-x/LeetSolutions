//
//  14LongestPrefix.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 18/04/25.
//

//MARK: - 14. Longest Prefix
func longestCommonPrefix(_ strs: [String]) -> String {
    var tempArray = strs
    var result: String = ""
    if tempArray.isEmpty { return result }
    if tempArray.count == 1 { return tempArray.first! }
    let firstWord = tempArray[0]
    let secondWord = tempArray[1]
    let charactersInFirstWord: [Character] = Array(firstWord)
    let charactersInSecondWord: [Character] = Array(secondWord)
    var index: Int = 0
    while index < charactersInFirstWord.count {
        if index > charactersInSecondWord.count - 1 {
            break
        }
        if charactersInFirstWord[index] == charactersInSecondWord[index] {
            result += String(charactersInFirstWord[index])
            index += 1
            continue
        }
        break
    }
    tempArray[1] = result
    tempArray.remove(at: 0)
    result = longestCommonPrefix(tempArray)
    return result
}
