//
//  TextFieldView.swift
//  DataFlowSwiftUI
//
//  Created by Alex Kulish on 23.02.2022.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var name: String
    var nameIsValid = false
    
    var body: some View {
        HStack {
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            Text("\(name.count)")
                .font(.headline)
                .foregroundColor(nameIsValid ? .green : .red)
                .padding(.trailing)
        }
        .padding()
    }
    
    
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(name: .constant("asd"))
    }
}
