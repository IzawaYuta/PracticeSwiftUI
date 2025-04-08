//
//  FeedbackView1.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/08.
//

import SwiftUI

struct FeedbackView1: View {
    
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
                    ZStack {
                        Circle()
                            .frame(width: 54, height: 54)
                            .foregroundStyle(feed.id == selectedOption ? .DL : .gray.opacity(0.3))
                        Image(feed.icon)
                            .renderingMode(.template)
                            .frame(width: 25, height: 25)
                            .foregroundStyle(feed.id == selectedOption ? .LD : .DL)
                    }
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
    FeedbackView1()
}
