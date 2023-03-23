//
//  ContentView.swift
//  GitHubActionsUITest
//
//  Created by admin on 3/23/23.
//

import SwiftUI

struct ContentView: View {
    @State var showLogin = false
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.title)
     
            Spacer().frame(height: 20)
     
            Button(action: {
                showLogin = true
            }, label: {
                Text("Login")
            })
            .sheet(isPresented: $showLogin) {
                LoginView()
            }
            .accessibilityIdentifier("loginButton")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
