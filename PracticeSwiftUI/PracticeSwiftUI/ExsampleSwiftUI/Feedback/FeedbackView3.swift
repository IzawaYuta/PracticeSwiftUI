//
//  FeedbackView3.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/08.
//

import SwiftUI

struct FeedbackView3: View {
    
    @State private var feedbackOptions = [
        FeedbackOption(icon: "Awful", Color: .red),
        FeedbackOption(icon: "Bad", Color: .yellow),
        FeedbackOption(icon: "Good", Color: .mint),
        FeedbackOption(icon: "Excellent", Color: .blue)
    ]
    
    @State var selectedOption: UUID? = nil
    var body: some View {
        VStack(spacing: 24) {
            VStack(spacing: 8) {
                Text("How was your experience?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("Your feedback helps us improve our service")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            HStack(spacing: 20) {
                ForEach(feedbackOptions.prefix(3)) { feed in
                    feedbackButton(for: feed)
                }
            }
            if let last = feedbackOptions.last {
                feedbackButton(for: last)
            }
        }
        .padding()
    }
    
    @ViewBuilder
    private func feedbackButton(for fead: FeedbackOption) -> some View {
        HStack {
            Image(fead.icon)
                .renderingMode(.template)
                .resizable()
                .scaledToFill()
                .frame(width: 25, height: 25)
                .foregroundStyle(fead.Color)
            Text(fead.icon)
        }
        .padding(.horizontal)
        .frame(height: 54)
        .overlay {
            Capsule()
                .stroke(lineWidth: 1.5)
                .foregroundStyle(fead.id == selectedOption ? Color.primary : .clear)
        }
        .background(fead.Color.opacity(0.15), in: Capsule())
        .animation(.linear, value: selectedOption)
        .onTapGesture {
            selectedOption = (selectedOption == fead.id) ? nil : fead.id
        }
    }
}

#Preview {
    FeedbackView3()
}
