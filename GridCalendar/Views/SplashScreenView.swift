//
//  SplashScreenView.swift
//  GridCalendar
//
//  Created by Savo Asanin on 19.11.24.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        GeometryReader { geometry in
                VStack {
                    Spacer()
                    Text("Simple Calendar")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(AppColor.foreground)
                    Text("Your simple calendar app")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(AppColor.foreground)
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width * 0.2)
                        .padding()
                    Spacer()
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        .background(AppColor.background)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SplashScreenView()
}
