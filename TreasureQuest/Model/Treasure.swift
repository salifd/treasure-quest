//
//  Treasure.swift
//  TreasureQuest
//
//  Created by Salif DIOP on 19/10/2023.
//

import Foundation

struct Treasure : Codable {
    
    let name:String // Treasure name
    let iconName:String // The icon name which represente the treasure
    let value:Int // The value of the treasure
    let probability:Int // The probability to get the treasure value are between 0 - 99. The higher is the value the hight is your chance to get it.
    let type:TreasureType // Type of treeasure gold or diamond
    
    init(name: String, iconName: String, value: Int, probability: Int, type:TreasureType) {
        
        self.name = name
        self.iconName = iconName
        self.value = value
        self.probability = probability
        self.type = type
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        iconName = try container.decode(String.self, forKey: .iconName)
        value = try container.decode(Int.self, forKey: .value)
        probability = try container.decode(Int.self, forKey: .probability)
        type = try container.decode(TreasureType.self, forKey: .type)
    }
    
    private enum CodingKeys: String, CodingKey {
        case name, iconName, value, probability, type
    }
}

enum TreasureType: Codable {
    case Gold
    case Diamond
}


