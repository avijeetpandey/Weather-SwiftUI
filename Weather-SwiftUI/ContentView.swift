//
//  ContentView.swift
//  Weather-SwiftUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(startColor: .blue, endColor: Color("lightBlue"))
            
            VStack {
                Text("Cupertino, CA")
                    .foregroundStyle(.white)
                    .font(.system(size: 32,
                                  weight: .bold,
                                  design: .default))
                    .padding()
                
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180)
                        .symbolRenderingMode(.multicolor)
                    
                    Text("76°")
                        .foregroundStyle(.white)
                        .font(.system(size: 70, weight: .medium))
                }
                
                Spacer()
                
                HStack(spacing: 32) {
                    WeatherStatsView(imageName: "cloud.sun.fill", temperature: 76, dayOfWeek: "MON")
                    WeatherStatsView(imageName: "sun.haze.fill", temperature: 76, dayOfWeek: "MON")
                    WeatherStatsView(imageName: "snow", temperature: 76, dayOfWeek: "MON")
                    WeatherStatsView(imageName: "sunset.fill", temperature: 76, dayOfWeek: "MON")
                    WeatherStatsView(imageName: "cloud.bolt.rain.fill", temperature: 76, dayOfWeek: "MON")
                }
                
                Spacer()
                
                WeatherButtonView(title: "Change Day time", textColor: .blue, backgroundColor: .white)
                    .padding(.bottom, 32)

            }
        }
    }
}

#Preview {
    ContentView()
}
