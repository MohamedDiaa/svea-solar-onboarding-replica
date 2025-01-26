//
//  AppInfoView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-25.
//

import SwiftUI

struct AppInfoView: View {

    @State var visitSvea: Bool = false

    var body: some View {

        VStack(alignment: .leading) {

            Text("App Info")
                .padding()

            VStack {
                Text("This app is for Svea Solar customers. If you have not yet started your journey towards a more sustainable life. you can do it here:")

                Button {

                    visitSvea = true
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
        .sheet(isPresented: $visitSvea, content: {
            WebView(url:  URL(string: "https://sveasolar.com/en")!,
                    showWebView: $visitSvea)

        })
    }
}

#Preview {
    AppInfoView()
}
