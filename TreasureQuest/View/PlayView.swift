//
//  PlayView.swift
//  TreasureQuest
//
//  Created by Salif DIOP on 15/10/2023.
//

import Foundation
import SwiftUI

struct PlayView: View{
    
    var body: some View {
        
        ZStack {
            VStack(alignment: .center) {
                Grid(alignment:.center) {
                    GridRow {
                        Text("0")
                            .bold()
                            .padding(5)
                        Image("gold_x1")
                        Text("0")
                            .bold()
                            .padding(5)
                        Image("diamond_x1")
                    }
                }.background(Color.blue)
                Text("Welcome")
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
