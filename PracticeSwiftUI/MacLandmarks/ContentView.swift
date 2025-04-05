//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Engineer MacBook Air on 2025/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkListt()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
