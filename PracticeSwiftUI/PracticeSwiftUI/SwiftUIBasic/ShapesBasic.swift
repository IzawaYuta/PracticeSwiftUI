//
//  ShapesBasic.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/06.
//

import SwiftUI

struct ShapesBasic: View {
    var body: some View {
        ZStack {
            Circle()
            //            .fill(Color.green)
            //            .foregroundColor(.pink)
            //            .stroke(Color.red, lineWidth: 30)
            //            .stroke(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [10]))
            //            .trim(from: 0.2, to: 1.0)
            Ellipse()
        }
    }
}

#Preview {
    ShapesBasic()
}
