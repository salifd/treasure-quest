//
//  ButtonStyle.swift
//  TreasureQuest
//
//  Created by Salif DIOP on 14/10/2023.
//

import Foundation
import SwiftUI

struct MaroonButton: ButtonStyle {
    
    var textSize: CGFloat = 15.0
    var textFont: Font = .system(size: 20)
    var borderColor: Color = Color(uiColor: TreasureColor.maroonDeep)
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(textFont)
            .fontWeight(.black)
            .frame(minWidth: 100, minHeight: 30)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 5).stroke(borderColor, lineWidth: 10).background(Color(uiColor: TreasureColor.maroon))
            )
            .foregroundColor(Color.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 5)
            )
    }
}
