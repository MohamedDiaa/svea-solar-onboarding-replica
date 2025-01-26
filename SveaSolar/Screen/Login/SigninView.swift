//
//  SigninView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-25.
//

import SwiftUI

struct SigninView: View {

    @State var email: String = ""
    @State var password: String = ""

    //@FocusState var focus:
    var body: some View {

        VStack(alignment: .leading, spacing: 20) {
            Text("Sign in")

            VStack(alignment: .leading) {
                Text("Email")
                    .font(.caption)
                TextField("", text: $email)
                    .textFieldStyle(.roundedBorder)
            }

            VStack(alignment: .leading) {
                Text("Password")
                    .font(.caption)
                SecureField("", text: $password)
                    .textFieldStyle(.roundedBorder)
            }

            Button {

            } label: {
                Text("Forget password?")
                    .foregroundStyle(.black)
                    .underline(true,color: .black)
            }

            Button {

            } label: {
                Text("Sign in")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.gray.opacity(0.8), in: .capsule)
            }

            Spacer(minLength: 0)
        }
        .padding()
        .safeAreaPadding()
    }
}

#Preview {
    SigninView()
}
