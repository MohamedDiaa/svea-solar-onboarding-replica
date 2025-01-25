//
//  AppInfoView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-25.
//

import SwiftUI

struct AppInfoView: View {
    var body: some View {


        VStack(alignment: .leading) {

            Text("App Info")
                .padding()

            VStack {
                Text("This app is for Svea Solar customers. If you have not yet started your journey towards a more sustainable life. you can do it here:")

                Button {
                    //TODO: visit sveasolar.com
                } label: {
                    Text("Visit our website")
                        .foregroundStyle(.white)
                        .padding(.vertical,10)
                }
                .frame(maxWidth: .infinity)
                .background(.black, in: Capsule())
            }
            .padding()
            .padding(.vertical, 20)
            .background(.gray.opacity(0.1), in: .rect(cornerRadius: 10))


            VStack(alignment: .leading,spacing: 20) {
                Text("This app is for Svea Solar customers. If you have not yet started your journey towards a more sustainable life. you can do it here:")

                Button {
                    //TODO: show modal view for contact support
                } label: {
                    Text("Contact supprt")
                        .foregroundStyle(.black)
                        .underline(true,color: .black)
                }

            }
            .padding()
            .padding(.vertical, 20)
            .background(.gray.opacity(0.1), in: .rect(cornerRadius: 10))

            Spacer(minLength: 0)
        }
        .padding()
        .safeAreaPadding()

    }
}

#Preview {
    AppInfoView()
}
