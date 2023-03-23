//
//  User.swift
//  GitHubActionsUITest
//
//  Created by admin on 3/23/23.
//

import Foundation
import Combine

class User: ObservableObject {
    @Published var isLoggedIn = false
    @Published var username = ""
    @Published var password = ""
 
    func login() -> Bool {
        guard username == "test" && password == "pass" else {
            return false
        }
 
        password = ""
        isLoggedIn = true
        return true
    }
}
