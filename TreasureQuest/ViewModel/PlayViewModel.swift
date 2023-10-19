//
//  TreasureModelview.swift
//  TreasureQuest
//
//  Created by Salif DIOP on 19/10/2023.
//

import Foundation
import SwiftUI

class PlayViewModel: ObservableObject {
    
    private let dataMaganerRepository: DataManagerRepository
    @Published var goldPoint:Int
    @Published var diamondPoint:Int
    
    init() {
        self.dataMaganerRepository = DataManagerRepository()
        self.diamondPoint = 0
        self.goldPoint = 0
    }
    
    func digg() {
        let treasure = dataMaganerRepository.digg()
        if let treasure {
            print("treasure is \(treasure.name) and value is \(treasure.value)")
            
            switch treasure.type {
            case .Diamond:
                self.diamondPoint += treasure.value
            default:
                self.goldPoint += treasure.value
            }
        }
    }
}
