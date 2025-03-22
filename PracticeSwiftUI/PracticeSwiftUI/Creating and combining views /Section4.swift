//
//  Section4.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/03/22.
//

import SwiftUI

// MARK: カスタム画像ビューを作成する
struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
