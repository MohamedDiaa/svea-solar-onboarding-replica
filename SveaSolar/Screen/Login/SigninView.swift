//
//  SigninView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-25.
//

import SwiftUI

struct SigninView: View {

    @State private var email: String = ""
    @State private var password: String = ""
    @State private var seePassword: Bool = false

    @FocusState var focusState: Focus?

    enum Focus {
        case email, password
    }

    var body: some View {

        VStack(alignment: .leading, spacing: 20) {
            Text("Sign in")

            VStack(alignment: .leading) {
                Text("Email")
                    .font(.caption)
                TextField("", text: $email)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).stroke(focusState == .email ? .black : .gray.opacity(0.3)))
                    .focused($focusState, equals: Focus.email)
            }

            VStack(alignment: .leading) {
                Text("Password")
                    .font(.caption)

                Group {
                    if seePassword {
                        TextField("", text: $password)
                    }
                    else {
                        SecureField("", text: $password)
                    }
                }
                .textInputAutocapitalization(.never)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(focusState == .password ? .black : .gray.opacity(0.3)))
                .focused($focusState, equals: Focus.password)
                .overlay(alignment: .trailing){

                    Image(systemName: seePassword ? "eye.fill" : "eye.slash.fill")
                        .onTapGesture {
                            seePassword.toggle()
                        }
                        .offset(x: -10)
                }
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
