//
//  HomeView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-26.
//

import SwiftUI

struct HomeView: View {

    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false

    var body: some View {

        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)

        Button {
            isLoggedIn = false
        } label: {
            Text("Logout")
        }

    }
}

#Preview {
    HomeView()
}
