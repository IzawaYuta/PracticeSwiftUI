//
//  FeedbackModel.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/08.
//

import SwiftUI

struct FeedbackOption: Identifiable {
    let id = UUID()
    let icon: String
    var isSelected: Bool = false
    var Color: Color = .clear
}
