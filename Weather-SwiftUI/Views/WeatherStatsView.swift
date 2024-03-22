//
//  WeatherStatsView.swift
//  Weather-SwiftUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct WeatherStatsView: View {
    var day: Day
    
    var body: some View {
        VStack(spacing: 10) {
            
            Text(day.name)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            
            Image(systemName: day.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .symbolRenderingMode(.multicolor)
            
            Text("\(day.temperature)")
                .font(.system(size: 28,weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    WeatherStatsView(day: .init(name: "MON", imageName: "cloud.fill",temperature: 76))
}
