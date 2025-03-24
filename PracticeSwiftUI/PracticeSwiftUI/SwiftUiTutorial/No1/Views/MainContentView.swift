//
//  MainContentView.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/03/22.
//

import SwiftUI

struct MainContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

#Preview {
    MainContentView()
        .environment(ModelData())
}
