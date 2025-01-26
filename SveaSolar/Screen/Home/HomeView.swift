//
//  HomeView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-26.
//

import SwiftUI

struct HomeView: View {

    @Binding var isLoggedIn: Bool

    var body: some View {


        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [.indigo,.red], startPoint: .trailing, endPoint: .leading))
                .overlay(alignment: .bottomLeading) {

                    Text("SVEA\nSOLAR")
                        .foregroundStyle(.white)
                        .font(.system(size: 40))
                        .padding([.leading,.bottom], 10)
                }


            Button {
                withAnimation(.smooth(duration: 0.5, extraBounce: 0)) {
                    isLoggedIn = false
                }
            } label: {
                Text("Logout")
                    .padding()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .background(.black, in: Capsule())
            }
        }
        .padding()
        .safeAreaPadding()
    }
}

#Preview {
    HomeView(isLoggedIn: .constant(false))
}
