//
//  DataManager.swift
//  DataFlowSwiftUI
//
//  Created by Alex Kulish on 23.02.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private let userDefaults = UserDefaults.standard
    private let userKey = "someUser"
    
    private init() {}
    
    func saveUser(user: User) {
        guard let userData = try? JSONEncoder().encode(user) else { return }
        userDefaults.set(userData, forKey: userKey)
    }
    
    func loadUser() -> User {
        guard let userData = userDefaults.object(forKey: userKey) as? Data else { return User() }
        guard let user = try? JSONDecoder().decode(User.self, from: userData) else { return User() }
        return user
    }
    
    func deleteUser(userManager: UserManager) {
        userManager.user.name = ""
        userManager.user.isRegister = false
        userDefaults.removeObject(forKey: userKey)
    }
    
}
