//
//  MonthView.swift
//  PracticeSwiftUI
//
//  Created by Engineer MacBook Air on 2025/04/08.
//

import SwiftUI

struct MonthView: View {
    
    let month: Month
    let dragProgress: CGFloat
    
    @Binding var focused: Week
    @Binding var selectedDate: Date?
    
    var body: some View {
        VStack(spacing: .zero) {
            ForEach(month.weeks) { week in
                WeekView(week: week, dragProgress: dragProgress, hideDifferentMonth: true, selectedDate: $selectedDate)
                    .opacity(focused == week ? 1 : dragProgress)
                    .frame(height: Constants.monthHeight / CGFloat(month.weeks.count))
            }
        }
    }
}

#Preview {
    MonthView(month: .init(from: .now, order: .current), dragProgress: 1, focused: .constant(.current), selectedDate: .constant(nil))
}
