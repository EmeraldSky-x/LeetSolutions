//
//  ValidPalindrom.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 06/04/25.
//


//MARK: - 125.Valid Palidrome

func isPalindrome(_ s: String) -> Bool {
    let letters = s.lowercased().filter({ $0.isLetter || $0.isNumber })
    var leadingPointer: Int = 0
    var trailingPointer: Int = letters.count - 1
    while leadingPointer < trailingPointer {
        if letters[String.Index(utf16Offset: leadingPointer, in: letters)] != letters[String.Index(utf16Offset: trailingPointer, in: letters)] {
            return false
        } else {
            leadingPointer += 1
            trailingPointer -= 1
        }
    }
    return true
}
