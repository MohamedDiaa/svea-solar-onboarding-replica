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
        }
        else {
            NavigationStack {

                TabView {
                    Tab {
                        HomeView()
                    }

                }
            }
            .transition(.move(edge: .bottom))
        }
    }
}

#Preview {
    ContentView()
}
