//
//  ContentView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationStack {

            TabView {
                OnboardingView()
                AppInfoView()
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        .tint(.black)
    }
}

#Preview {
    ContentView()
}
