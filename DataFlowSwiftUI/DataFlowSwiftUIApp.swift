//
//  DataFlowSwiftUIApp.swift
//  DataFlowSwiftUI
//
//  Created by Alex Kulish on 23.02.2022.
//

import SwiftUI

@main
struct DataFlowSwiftUIApp: App {
    
    @StateObject private var userManager = UserManager(user: DataManager.shared.loadUser())
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
