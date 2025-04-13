//
//  122BEstTimeToBuyStocks2.swift
//  SwiftAlgorithms
//
//  Created by SWAT on 13/04/25.
//

//MARK: - 122. Best time to buy and sell stocks 2
func maxProfit2(_ prices: [Int]) -> Int {
    var pointerOne = 0
    var pointerTwo = 0
    var totalProfit = 0
    var currentProfit = 0
    while pointerTwo < prices.count {
        let profit = prices[pointerTwo] - prices[pointerOne]
        if profit >= currentProfit {
            currentProfit = profit
        } else {
            pointerOne = pointerTwo
            totalProfit += currentProfit
            currentProfit = 0
        }
        print(currentProfit)
        pointerTwo += 1
    }
    totalProfit += currentProfit
    return totalProfit
}
