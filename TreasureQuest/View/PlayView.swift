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
                Image("mining")
                    .resizable()
                    .padding(20)
                    .aspectRatio(contentMode: .fit)
    
                Grid(alignment:.center) {
                    GridRow {
                        Text(playViewModel.goldPoint.description)
                            .bold()
                            .padding(5)
                        Image("gold_x2")
                        Text(playViewModel.diamondPoint.description)
                            .bold()
                            .padding(5)
                        Image("diamond_x2")
                    }
                }
                
                Text(playViewModel.displayedMessage)
                    .padding()
                    .multilineTextAlignment(.center)
                
                Button("Hunt", action: {
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
