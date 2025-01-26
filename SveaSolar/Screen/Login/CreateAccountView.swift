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

    var body: some View {

        ScrollView{
            VStack(alignment: .leading, spacing: 20) {
                Text("Create account")

                Text("Fill in your details below to create an account.\nUse the email you signed up with when buying our products.")

                VStack(alignment: .leading) {
                    Text("Email")
                        .font(.caption)
                    TextField("", text: $email)
                        .textFieldStyle(.roundedBorder)
                }

                Text("Please enter the email address you used when buying your Svea Solar products.")

                VStack(alignment: .leading) {
                    Text("First name")
                        .font(.caption)
                    TextField("", text: $firstName)
                        .textFieldStyle(.roundedBorder)
                }

                VStack(alignment: .leading) {
                    Text("Last name")
                        .font(.caption)
                    TextField("", text: $lastName)
                        .textFieldStyle(.roundedBorder)
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
                    .textFieldStyle(.roundedBorder)

                    .overlay(alignment: .trailing){

                        Image(systemName: seePassword ? "eye.fill" : "eye.slash.fill")
                            .onTapGesture {
                                seePassword.toggle()
                            }
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
                    .textFieldStyle(.roundedBorder)
                    .overlay(alignment: .trailing){

                        Image(systemName: seeConfirmPassword ? "eye.fill" : "eye.slash.fill")
                            .onTapGesture {
                                seeConfirmPassword.toggle()
                            }

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
