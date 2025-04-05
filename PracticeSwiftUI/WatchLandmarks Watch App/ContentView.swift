//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Engineer MacBook Air on 2025/03/24.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
            LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
