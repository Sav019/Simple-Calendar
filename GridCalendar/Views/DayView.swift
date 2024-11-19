//
//  DayView.swift
//  GridCalendar
//
//  Created by Savo Asanin on 19.11.24.
//

import SwiftUI

struct DayView: View {
    let day: Day

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Day \(day.value)")
                    .font(.largeTitle)
                    .padding()

                // Scrollable Grid
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(0..<24, id: \.self) { hour in
                            HStack(alignment: .top, spacing: 0) {
                                // Time Labels
                                Text("\(hour.militaryTimeFormat())")
                                    .frame(width: 50, alignment: .trailing)
                                    .font(.subheadline)
                                    .padding(.trailing, 5)

                                // Calendar Time Blocks
                                ZStack(alignment: .topLeading) {
                                    Rectangle()
                                        .fill(AppColor.background)
                                        .frame(height: 60)
                                    // Placeholder for events
                                    // Customize further to show event data
                                }
                                .frame(height: 60) // Each hour block height
                                .overlay(Divider(), alignment: .bottom) // Line separator
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Day Overview")
    }
}

#Preview {
    DayView(day: Day(value: 1))
}

// Extension for formatting hour display in military time
extension Int {
    func militaryTimeFormat() -> String {
        return String(format: "%02d:00", self)
    }
}



