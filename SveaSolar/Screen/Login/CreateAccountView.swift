//
//  CreateAccountView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-25.
//

import SwiftUI

struct CreateAccountView: View {

    @State var email: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""

    @State var seePassword: Bool = false
    @State var seeConfirmPassword: Bool = false

    @FocusState var focusState: Focus?

    enum Focus {
        case email,
             firstName,
             lastName,
             password,
             confirmPassword
    }

    var body: some View {

        ScrollView{
            VStack(alignment: .leading, spacing: 20) {
                Text("Create account")

                Text("Fill in your details below to create an account.\nUse the email you signed up with when buying our products.")

                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.caption)

                    TextField("", text: $email)
                        .textContentType(.emailAddress)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).stroke(focusState == .email ? .black : .gray.opacity(0.3)))
                        .focused($focusState, equals: Focus.email)


                }

                Text("Please enter the email address you used when buying your Svea Solar products.")

                VStack(alignment: .leading) {
                    Text("First name")
                        .font(.caption)


                    TextField("", text: $firstName)
                        .textContentType(.name)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).stroke(focusState == .firstName ? .black : .gray.opacity(0.3)))
                        .focused($focusState, equals: Focus.firstName)
                }

                VStack(alignment: .leading) {
                    Text("Last name")
                        .font(.caption)


                    TextField("", text: $lastName)
                        .textContentType(.name)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).stroke(focusState == .lastName ? .black : .gray.opacity(0.3)))
                        .focused($focusState, equals: Focus.lastName)
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

                Text("Password needs to be at least 8 characters and contain at least one capital letter, one number and one special charachter.")

                VStack(alignment: .leading) {
                    Text("Confirm password")
                        .font(.caption)

                    Group {
                        if seeConfirmPassword {
                            TextField("", text: $lastName)
                        }
                        else {
                            SecureField("", text: $confirmPassword)
                        }
                    }
                    .textInputAutocapitalization(.never)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).stroke(focusState == .confirmPassword ? .black : .gray.opacity(0.3)))
                    .focused($focusState, equals: Focus.confirmPassword)
                    .overlay(alignment: .trailing){

                        Image(systemName: seeConfirmPassword ? "eye.fill" : "eye.slash.fill")
                            .onTapGesture {
                                seeConfirmPassword.toggle()
                            }
                            .offset(x: -10)

                    }
                }

                Text("Create account")
                    .foregroundStyle(.white)
                    .padding(.vertical,10)
                    .frame(maxWidth: .infinity)
                    .background(Capsule().fill(.gray.opacity(0.8)))

            }
            .autocorrectionDisabled(true)
            .padding()
        }
    }
}

#Preview {
    CreateAccountView()
}
