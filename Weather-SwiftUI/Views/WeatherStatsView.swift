//
//  WeatherStatsView.swift
//  Weather-SwiftUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct WeatherStatsView: View {
    var imageName: String
    var temperature: Int
    var dayOfWeek: String
    
    var body: some View {
        VStack(spacing: 10) {
            
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .symbolRenderingMode(.multicolor)
            
            Text("\(temperature)")
                .font(.system(size: 28,weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    WeatherStatsView(imageName: "cloud.fill",temperature: 76,dayOfWeek: "MON")
}
