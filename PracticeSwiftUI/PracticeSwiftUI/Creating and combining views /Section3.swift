//
//  Section3.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/03/22.
//

import SwiftUI

// MARK: スタックを使用してビューを組み合わせる
struct Section3: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#Preview {
    Section3()
}
