//
//  ButtonView.swift
//  DataFlowSwiftUI
//
//  Created by Alex Kulish on 23.02.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let backgroundColor: Color
    let title: String
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .frame(width: 200, height: 50)
        .background(backgroundColor)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(backgroundColor: .blue, title: "Start", action: {})
    }
}
