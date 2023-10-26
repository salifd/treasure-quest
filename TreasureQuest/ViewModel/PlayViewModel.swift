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
        self.displayedMessage = "Welcome to Treasure hunt, start playing by clicking on Hunt"
    }
    
    func digg() {
        
        cancellables = dataRepository.digg().sink(receiveCompletion: { completion in
            // Improvement: handle error here
        }, receiveValue: { treasure in
            switch treasure.type {
            case .Diamond:
                self.diamondPoint += treasure.value
                self.displayedMessage = "Wow you discovered a rare gem \(treasure.name) worth \(treasure.value) unit !!"
            default:
                self.goldPoint += treasure.value
                self.displayedMessage = "You discovered a valuable \(treasure.name) worth \(treasure.value) unit !"
                
            }
        })
    }
}
