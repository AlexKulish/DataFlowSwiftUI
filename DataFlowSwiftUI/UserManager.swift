//
//  UserManager.swift
//  DataFlowSwiftUI
//
//  Created by Alex Kulish on 23.02.2022.
//

import Foundation
import Combine

class UserManager: ObservableObject {
    
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count >= 3
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
    
}

class User: Codable {
    var name = ""
    var isRegister = false
}
