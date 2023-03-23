//
//  GitHubActionsUITestApp.swift
//  GitHubActionsUITest
//
//  Created by admin on 3/23/23.
//

import SwiftUI

@main
struct GitHubActionsUITestApp: App {
    var user = User()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(user)
        }
    }
}
