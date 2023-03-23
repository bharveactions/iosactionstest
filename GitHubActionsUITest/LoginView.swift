//
//  LoginView.swift
//  GitHubActionsUITest
//
//  Created by admin on 3/23/23.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var user: User
    @Environment(\.presentationMode) var presentationMode

var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Username", text: $user.username)
                    SecureField("Password", text: $user.password)
                }

                Button {
                    if user.login() {
                        presentationMode.wrappedValue.dismiss()
                    }
                } label: {
                    Text("Login")
                }
                .accessibilityIdentifier("loginNow")
            }
            .navigationTitle(Text("Login"))
            .navigationBarItems(trailing: Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark.circle")
                    .accessibilityLabel("Dismiss")
            })
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
