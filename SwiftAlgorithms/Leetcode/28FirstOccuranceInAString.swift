//
//  28FirstOccuranceInAString.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 03/05/25.
//

//MARK: - 28. Find the Index of the First Occurrence in a String
func strStr(_ haystack: String, _ needle: String) -> Int {
    var result: Int = -1
    var pointerOne = haystack.startIndex
    if needle.count > haystack.count {
        return result
    }
    if needle.count == haystack.count {
        if haystack == needle {
            return 0
        }
        return result
    }
    while pointerOne <= haystack.index(haystack.endIndex, offsetBy: -needle.count) {
        var pointerTwo = needle.startIndex
        var tempPointerOne = pointerOne
        while pointerTwo <= needle.endIndex {
            if haystack[tempPointerOne] == needle[pointerTwo] {
                tempPointerOne = haystack.index(after: tempPointerOne)
                pointerTwo = needle.index(after: pointerTwo)
            } else {
                break
            }
            if pointerTwo == needle.endIndex {
                result = haystack.distance(from: haystack.startIndex, to: pointerOne)
                return result
            }
        }
        pointerOne = haystack.index(after: pointerOne)
    }
    return result
}
