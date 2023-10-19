//
//  Treasure.swift
//  TreasureQuest
//
//  Created by Salif DIOP on 19/10/2023.
//

import Foundation


struct Treasure {
    
    let name:String // Treasure name
    let iconName:String // The icon name which represente the treasure
    let value:Int // The value of the treasure
    let probability:Int // The probability to get the treasure value are between 0 - 99. The higher is the value the hight is your chance to get it.
    
    init(name: String, iconName: String, value: Int, probability: Int) {
            self.name = name
            self.iconName = iconName
            self.value = value
            self.probability = probability
    }
}
