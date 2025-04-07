//
//  LinearBasic.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/07.
//

import SwiftUI

struct LinearBasic: View {
    var body: some View {
        VStack {
            // 放射グラデーション
            RoundedRectangle(cornerRadius: 50)
                .fill(RadialGradient(gradient: Gradient(colors: [.yellow, .green]), center: .leading, startRadius: 5, endRadius: 400))
                .frame(width: 300, height: 200)
            
            Rectangle()
            // 線形グラデーション
                .fill(LinearGradient(gradient: Gradient(colors: [.purple, .pink, .blue]), startPoint: .top, endPoint: .bottom))
                .frame(width: 300, height: 200)
            
            Capsule()
            // 角度によるグラデーション
                .fill(AngularGradient(gradient: Gradient(colors: [.red, .blue]),
                                      center: .topLeading,
                                      angle: .degrees(180 + 45)))
                .frame(width: 300, height: 200)
        }
    }
}

#Preview {
    LinearBasic()
}
