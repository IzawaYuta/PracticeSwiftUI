//
//  ForEachBasic.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/07.
//

import SwiftUI

struct ForEachBasic: View {
    var body: some View {
        VStack {
            ForEach(0..<10, id: \.self) { text in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    Text("\(text)")
                }
            }
        }
    }
}

#Preview {
    ForEachBasic()
}
