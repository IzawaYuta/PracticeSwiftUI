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
            .fill(Color.red)
            .frame(width: 200, height: 200)
    }
}

#Preview {
    ColorBasic()
}
