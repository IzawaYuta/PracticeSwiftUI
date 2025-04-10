//
//  TextView.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/10.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("title")
                .font(.title)
            Text("title2")
                .font(.title2)
            Text("title3")
                .font(.title3)
            Text("largeTitle")
                .font(.largeTitle)
            Text("callout")
                .font(.callout)
            Text("caption")
                .font(.caption)
            Text("caption2")
                .font(.caption2)
            Text("footnote")
                .font(.footnote)
            Text("headline")
                .font(.headline)
            Text("subheadline")
                .font(.subheadline)
        }
    }
}

#Preview {
    TextView()
}
