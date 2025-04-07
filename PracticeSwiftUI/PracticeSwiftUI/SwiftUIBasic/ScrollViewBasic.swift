//
//  ScrollViewBasic.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/07.
//

import SwiftUI

struct ScrollViewBasic: View {
    var body: some View {
        ScrollView {
            LazyVStack { // Lazy = 大量のデータを生成するときに使用
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: true) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 300, height: 100)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBasic()
}
