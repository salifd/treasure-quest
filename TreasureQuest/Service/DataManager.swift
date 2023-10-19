//
//  DataManager.swift
//  TreasureQuest
//
//  Created by Salif DIOP on 19/10/2023.
//

import Foundation

class DataManager: NSObject {
    
    private let treasureData:[Treasure]
    
    static let shared: DataManager = .init()
    
    override init() {
        
        self.treasureData = [
            Treasure(name: "Gold", iconName: "gold_x1", value: 10, probability: 50, type: .Gold),
            Treasure(name: "Gold x2", iconName: "gold_x2", value: 20, probability: 45, type: .Gold),
            Treasure(name: "Gold x3", iconName: "gold_x3", value: 30, probability: 40, type: .Gold),
            Treasure(name: "Gold x4", iconName: "gold_x4", value: 40, probability: 30, type: .Gold),
            Treasure(name: "Gold x5", iconName: "gold_x5", value: 50, probability: 20, type: .Gold),
            Treasure(name: "Gold x6", iconName: "gold_x6", value: 60, probability: 15, type: .Gold),
            Treasure(name: "Diamond", iconName: "diamond_x1", value: 30, probability: 10, type: .Diamond),
            Treasure(name: "Diamond x2", iconName: "diamond_x2", value: 60, probability: 5, type: .Diamond)
        ]
    }
    
    func digg() -> Treasure? {
        
        guard !self.treasureData.isEmpty else {
            return nil
        }
    
        let randomProbability = Int.random(in: 5...100) // Generate a random number between 5 and 100
        var closestTreasure = self.treasureData[0]
        var minDiff = abs(self.treasureData[0].probability - randomProbability)
        
        self.treasureData.forEach { treasure in
            let diff = abs(treasure.probability - randomProbability)
            
            if(diff < minDiff) {
                minDiff = diff
                closestTreasure = treasure
            }
        }
        
        return closestTreasure
    }
}
