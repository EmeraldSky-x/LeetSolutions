//
//  MaxProfit.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 06/04/25.
//


//MARK: - 121. Best timeto buy and sell stock
func maxProfit(_ prices: [Int]) -> Int {
        if (prices.count < 2) { return 0 }
        var minPrice = Int.max
        var result = 0

        for value in prices {
            minPrice = min(minPrice, value)
            result = max(result, value - minPrice)
        }
        return result
    }
