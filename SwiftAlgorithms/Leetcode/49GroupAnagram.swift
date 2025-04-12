//
//  49GroupAnagram.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 12/04/25.
//

//MARK: - 49. Group Anagram
func groupAnagrams(_ strs: [String]) -> [[String]] {
    var hashMap: [[Int]: [String]] = [:]
    for word in strs {
        var alphabetArray = Array(repeating: 0, count: 26)
        for character in word {
            if let index = characterIndex(character) {
                alphabetArray[index] += 1
            }
        }
        hashMap[alphabetArray, default: []].append(word)
    }
    return Array(hashMap.values)
}
func characterIndex(_ letter: Character) -> Int? {
    guard let ascii = letter.uppercased().unicodeScalars.first?.value else {
        return nil
    }
    let index = Int(ascii) - Int(UnicodeScalar("A").value)
    return (0...25).contains(index) ? index : nil
}
