//
//  Section6.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/03/22.
//

import SwiftUI

// MARK: 詳細ビューを作成する
struct Section6: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                
                Divider()
                
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            
            Spacer()
        }
    }
}

#Preview {
    Section6()
}
