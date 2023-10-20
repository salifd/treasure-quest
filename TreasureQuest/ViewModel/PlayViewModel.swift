//
//  TreasureModelview.swift
//  TreasureQuest
//
//  Created by Salif DIOP on 19/10/2023.
//

import Foundation
import SwiftUI
import Combine

class PlayViewModel: ObservableObject {
    
    private let dataRepository: DataRepository
    private var cancellables: AnyCancellable?
    
    @Published var goldPoint:Int
    @Published var diamondPoint:Int
    @Published var displayedMessage:String
    
    init() {
        
        self.dataRepository = DataRepository()
        self.diamondPoint = 0
        self.goldPoint = 0
        self.displayedMessage = "Welcome to Treasure hunt, start playing by clicking on Huunt"
    }
    
    func digg() {
        
        cancellables = dataRepository.digg().sink(receiveCompletion: { completion in
            // Handle error
        }, receiveValue: { treasure in
            switch treasure.type {
            case .Diamond:
                self.diamondPoint += treasure.value
                self.displayedMessage = "Wow you found a rare gem \(treasure.name) for \(treasure.value) !!"
            default:
                self.goldPoint += treasure.value
                self.displayedMessage = "You found \(treasure.name) for \(treasure.value) !"
                
            }
        })
    }
}
