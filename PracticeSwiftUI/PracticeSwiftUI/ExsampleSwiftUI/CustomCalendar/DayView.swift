//
//  DayView.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/08.
//

import SwiftUI

struct DayView: View {
    
    let date: Date
    @Binding var selectedDate: Date?
    
    var body: some View {
        VStack(spacing: 12) {
            Text(Calendar.dayNumber(from: date))
                .background {
                    if date == selectedDate {
                        Circle()
                            .foregroundStyle(.blue.opacity(0.3))
                            .frame(width: 40, height: 40)
                    } else if Calendar.current.isDateInToday(date) {
                        Circle()
                            .foregroundStyle(.secondary.opacity(0.3))
                            .frame(width: 40, height: 40)
                    }
                }
        }
        .foregroundStyle(selectedDate == date ? .blue : .primary)
        .font(.system(.body, design: .rounded, weight: .medium))
        .onTapGesture {
            withAnimation(.bouncy) {
                selectedDate = date
            }
        }
    }
}

#Preview {
    DayView(date: .now, selectedDate: .constant(nil))
}
