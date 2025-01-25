//
//  OnboardingView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-25.
//

import SwiftUI
import TipKit

struct OnboardingView: View {
    var body: some View {
        VStack(spacing: 15) {

            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [.indigo,.red], startPoint: .trailing, endPoint: .leading))
                .overlay(alignment: .bottomLeading) {

                        Text("SVEA\nSOLAR")
                            .foregroundStyle(.white)
                            .font(.system(size: 40))
                            .padding([.leading,.bottom], 10)
                }

            Button {

            } label: {
                Text("Sign in")
                    .foregroundStyle(.white)
                    .padding(.vertical,10)
            }
            .frame(maxWidth: .infinity)
            .background(.black, in: Capsule())


            Button {

            } label: {
                Text("Create account")
                    .foregroundStyle(.black)
                    .padding(.vertical,10)
            }
            .frame(maxWidth: .infinity)
            .background(Capsule().stroke(style: .init(lineWidth: 1)))

            Text("By singning in or creating an account you accept our privacy policy")
                .font(.caption2)


        }
        .padding()
    }
}

#Preview {
    OnboardingView()
}
