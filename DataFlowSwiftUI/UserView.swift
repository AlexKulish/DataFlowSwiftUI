//
//  UserView.swift
//  DataFlowSwiftUI
//
//  Created by Alex Kulish on 23.02.2022.
//

import SwiftUI

struct UserView: View {
    
    @EnvironmentObject private var userManager: UserManager
    @StateObject private var timer = TimeCounter()
    
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 150)
                .padding()
            Text("\(timer.counter)")
                .font(.title)
                .offset(x: 0, y: 150)
            
            Spacer()
            
            VStack(spacing: 350) {
                ButtonView(backgroundColor: .blue,
                           title: timer.buttonTitle) {
                    timer.startTimer()
                }
                ButtonView(backgroundColor: .red,
                           title: "Log Out") {
                    DataManager.shared.deleteUser(userManager: userManager)
                }
            }
            
            
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
            .environmentObject(UserManager())
    }
}
