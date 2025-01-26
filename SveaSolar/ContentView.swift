//
//  ContentView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-25.
//

import SwiftUI

struct ContentView: View {

    @State var isLoggedIn: Bool = false

    var body: some View {

        if !isLoggedIn {
            NavigationStack {

                TabView {
                    OnboardingView(isLoggedIn: $isLoggedIn)
                    AppInfoView()
                }
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
            }
            .preferredColorScheme(.light)
            .tint(.black)
            .transition(.move(edge: .top))

        }
        else {
            NavigationStack {

                TabView {

                    Tab("Home", systemImage: "house.fill") {
                        HomeView(isLoggedIn: $isLoggedIn)
                    }

                }
                .tint(.black)
            }
            .transition(.move(edge: .bottom))
        }
    }
}

#Preview {
    ContentView()
}
