//
//  ContentView.swift
//  GridCalendar
//
//  Created by Savo Asanin on 19.11.24.
//

import SwiftUI

struct YearView: View {
    let layout = [
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40)),
        GridItem(.flexible(minimum: 40))
    ]

    var body: some View {
        NavigationView {
            HStack {
                Spacer()
                    .frame(height: 20)
                ScrollView {
                    LazyVGrid(columns: layout) {
                        ForEach(year, id: \.name) { month in
                            Section(header: Text(verbatim: month.name).font(.headline)) {
                                ForEach(month.days) { day in
                                    NavigationLink(
                                        destination: DayView(day: day),
                                        label: {
                                            Capsule()
                                                .overlay(Text("\(day.value)").foregroundColor(AppColor.foreground))
                                                .foregroundColor(AppColor.background)
                                                .frame(height: 40)
                                        }
                                    )
                                }
                            }
                        }
                    }
                }
                Spacer()
                    .frame(height: 20)
            }
            .navigationTitle("Year Overview") // Navigation title
        }
    }
}

#Preview {
    YearView()
}
