//
//  ContentView.swift
//  Weather-SwiftUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isDarkMode: Bool = false
    
    let days: [Day] = [
        Day(name: "MON", imageName: "cloud.sun.fill", temperature: 26),
        Day(name: "TUE", imageName: "sun.haze.fill", temperature: 96),
        Day(name: "WED", imageName: "snow", temperature: 86),
        Day(name: "THUR", imageName: "sunset.fill", temperature: 46),
        Day(name: "FRI", imageName: "cloud.bolt.rain.fill", temperature: 56)
    ]
    
    var body: some View {
        ZStack {
            BackgroundView(isDarkMode: $isDarkMode)
            
            VStack {
                Text("Cupertino, CA")
                    .foregroundStyle(.white)
                    .font(.system(size: 32,
                                  weight: .bold,
                                  design: .default))
                    .padding()
                
                
               CityStatsView(isDarkMode: isDarkMode)
                
                Spacer()
                
                HStack(spacing: 32) {
                    ForEach(days) { day in
                        WeatherStatsView(day: day)
                    }
                }
                
                Spacer()
                
                Button {
                    isDarkMode.toggle()
                } label: {
                    WeatherButtonView(title: "Change Day time", textColor: .blue, backgroundColor: .white)
                        .padding(.bottom, 32)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
