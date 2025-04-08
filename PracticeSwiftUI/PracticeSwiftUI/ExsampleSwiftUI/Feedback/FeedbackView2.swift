//
//  FeedbackView2.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/08.
//

import SwiftUI

struct FeedbackView2: View {
    @State private var feedbackOptions = [
        FeedbackOption(icon: "Awful"),
        FeedbackOption(icon: "Bad"),
        FeedbackOption(icon: "Good"),
        FeedbackOption(icon: "Excellent")
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
                ForEach(feedbackOptions) { feed in
                    HStack {
                        Image(feed.icon)
                            .renderingMode(.template)
                            .frame(width: 25, height: 25)
                            .foregroundStyle(feed.id == selectedOption ? .LD : .DL)
                        
                        if feed.id == selectedOption {
                            Text(feed.icon)
                                .foregroundStyle(.LD)
                                .transition(.scale(scale: 0, anchor: .trailing))
                        }
                    }
                    .padding(.horizontal)
                    .frame(height: 54)
                    .frame(maxWidth: feed.id == selectedOption ? nil : 54)
                    .background(feed.id == selectedOption ? .DL : .gray.opacity(0.3), in: Capsule())
                    .clipped()
                    .animation(.bouncy, value: selectedOption)
                    
                    .onTapGesture {
                        if selectedOption == feed.id {
                            selectedOption = nil
                        } else {
                            selectedOption = feed.id
                        }
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    FeedbackView2()
}
