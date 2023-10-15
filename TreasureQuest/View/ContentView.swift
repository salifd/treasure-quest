//
//  ContentView.swift
//  TreasureQuest
//
//  Created by Salif DIOP on 13/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPresentingNewView = false
    
    var body: some View {
        ZStack {
            Image("mining_entrance")
                .resizable()
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Button("Play", action: {
                    isPresentingNewView = true
                })
                .buttonStyle(MaroonButton())
                .padding()
                Spacer().frame(height: 40)
            }
            .padding()
        }
        .sheet(isPresented: $isPresentingNewView) {
            PlayView()
        }
    }
}

#Preview {
    ContentView()
}
