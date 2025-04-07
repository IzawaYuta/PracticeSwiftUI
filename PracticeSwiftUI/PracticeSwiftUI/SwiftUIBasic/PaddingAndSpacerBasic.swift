//
//  PaddingAndSpacerBasic.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/07.
//

import SwiftUI

struct PaddingAndSpacerBasic: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
//                .multilineTextAlignment(.center) // 中央揃え
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .shadow(color: .black.opacity(0.3), radius: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingAndSpacerBasic()
}
