//
//  OnboardingView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-25.
//

import SwiftUI
import TipKit

struct OnboardingView: View {

    private let tip = OnboardingTip()
    @Binding var isLoggedIn: Bool

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

                TipView(tip)



                NavigationLink(destination: SigninView()) {
                    Text("Sign in")
                        .foregroundStyle(.white)
                        .padding(.vertical,10)
                }
                .frame(maxWidth: .infinity)
                .background(.black, in: Capsule())


                NavigationLink(destination: CreateAccountView(isLoggedIn: $isLoggedIn)) {
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
            .safeAreaPadding()
        }
    
}

fileprivate struct OnboardingTip: Tip {
    var title: Text {
        Text("Been using our old app?")
    }

    var message: Text? {
        Text("If you've only used our old app before, you'll need to create a new account")
    }
}

#Preview {
    OnboardingView(isLoggedIn: .constant(false))
}
