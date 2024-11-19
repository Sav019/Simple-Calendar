//
//  GridCalendarApp.swift
//  GridCalendar
//
//  Created by Savo Asanin on 19.11.24.
//

import SwiftUI

@main
struct GridCalendarApp: App {
    
    @State private var isLoading: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isLoading {
                SplashScreenView()
                    .onAppear {
                        // Simulate a loading delay of 2 seconds and load sample recipes
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            self.isLoading = false
                        }
                    }
            }
                else {
                    YearView()
                }
            }
        }
    }




