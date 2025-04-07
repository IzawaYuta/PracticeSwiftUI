//
//  ColorBasic.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/06.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.red
//                Color.primary
            )
            .frame(width: 200, height: 200)
//            .shadow(radius: 10)
            .shadow(color: .blue, radius: 10, x: -10, y: -10)
    }
}

#Preview {
    ColorBasic()
}
