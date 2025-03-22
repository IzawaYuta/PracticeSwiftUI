//
//  PracticeSwiftUIApp.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/03/21.
//

import SwiftUI

//@main
//struct PracticeSwiftUIApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}

// MARK: SwiftUITutorial用
@main
struct PracticeSwiftUIApp: App {
    @State private var modelData = ModelData()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
