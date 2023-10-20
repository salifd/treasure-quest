//
//  PlayView.swift
//  TreasureQuest
//
//  Created by Salif DIOP on 15/10/2023.
//

import Foundation
import SwiftUI

struct PlayView: View {
    
    @ObservedObject var playViewModel = PlayViewModel()
    
    var body: some View {
        
        ZStack {
            VStack(alignment: .center) {
                Grid(alignment:.center) {
                    GridRow {
                        Text(playViewModel.goldPoint.description)
                            .bold()
                            .padding(5)
                        Image("gold_x1")
                        Text(playViewModel.diamondPoint.description)
                            .bold()
                            .padding(5)
                        Image("diamond_x1")
                    }
                }
                
                Text(playViewModel.displayedMessage)
                
                Button("Hunt treasure", action: {
                    playViewModel.digg()
                }).buttonStyle(TreasureQuest.MaroonButton())
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color(uiColor: TreasureColor.maroonLight))
    }
}

#Preview {
    PlayView()
}
