//
//  WebView.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-26.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    var url: URL
    @Binding var showWebView: Bool

    func makeUIView(context: Context) -> WKWebView {
        let wKWebView = WKWebView()
        return wKWebView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }

}

//#Preview {
//    WebView(url: <#URL#>, showWebView: <#Binding<Bool>#>)
//}
