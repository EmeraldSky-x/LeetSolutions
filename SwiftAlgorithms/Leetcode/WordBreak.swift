//
//  Untitled.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 07/04/25.
//

//MARK: - 139. Word Break
class WordBreakSolution {
    var cache: [String: Bool] = [:]
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        if s.isEmpty { return true }
        if let result = cache[s] {
            return result
        }
        for word in wordDict {
            if s.hasPrefix(word) {
                var newWord = String(s.dropFirst(word.count))
                if wordBreak(newWord, wordDict) {
                    cache[s] = true
                    return true
                }
            }
        }
        cache[s] = false
        return false
    }
}
