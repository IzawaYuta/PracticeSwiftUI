//
//  BackgroundAndOverlayBasic.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/07.
//

import SwiftUI

struct BackgroundAndOverlayBasic: View {
    var body: some View {
        Image(systemName: "person.fill")
            .font(.system(size: 100))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                         )
                    .frame(width: 150, height: 150)
                    .shadow(color: .red, radius: 15, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 50, height: 50)
                            .overlay(
                                Image(systemName: "star.fill")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            ), alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    BackgroundAndOverlayBasic()
}
