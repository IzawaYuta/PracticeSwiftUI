//
//  IconsBasic.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/07.
//

import SwiftUI

struct IconsBasic: View {
    var body: some View {
        Image(systemName: "person.fill")
            .resizable()
//            .renderingMode(.original)
//            .font(.largeTitle)
//            .font(.system(size: 100))
            .aspectRatio(contentMode: .fill) // fitはフレーム内に収め、fillは少しはみ出る
            .foregroundColor(.blue)
            .frame(width: 200, height: 200) // framで調整するならresizableを一番上に！
            .clipped() // どんなときもフレーム内に収める→切れる
    }
}

#Preview {
    IconsBasic()
}
