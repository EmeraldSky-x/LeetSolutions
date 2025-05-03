//
//  58LengthOfLastWord.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 03/05/25.
//

//MARK: - 58. Length of last word
func lengthOfLastWord(_ s: String) -> Int {
    var lastNonSpaceIndex = s.endIndex
    var trailingSpacesIgnored = false
    for index in stride(from: s.distance(from: s.startIndex, to: s.endIndex) - 1, to: -1, by: -1) {
        let stringIndex = s.index(s.startIndex, offsetBy: index)
        if s[stringIndex] == " " && !trailingSpacesIgnored {
            continue
        }
        if s[stringIndex] != " " && !trailingSpacesIgnored{
            trailingSpacesIgnored = true
            lastNonSpaceIndex = stringIndex
            if index == 0 {
                return 1
            }
        } else if s[stringIndex] == " " && trailingSpacesIgnored {
            let wordLength = s.distance(from: stringIndex, to: lastNonSpaceIndex)
            return wordLength
        }
    }
    return s.trimmingCharacters(in: .whitespaces).count
}
