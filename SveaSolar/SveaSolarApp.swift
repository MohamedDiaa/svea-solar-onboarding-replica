//
//  SveaSolarApp.swift
//  SveaSolar
//
//  Created by Mohamed Alwakil on 2025-01-25.
//

import SwiftUI
import TipKit

@main
struct SveaSolarApp: App {

    init() {
       try? Tips.configure()
     }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
