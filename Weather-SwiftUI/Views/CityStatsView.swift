//
//  CityStatsView.swift
//  Weather-SwiftUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct CityStatsView: View {
    var isDarkMode: Bool
    
    var body: some View {
        VStack {
            Image(systemName: isDarkMode ? "moon.stars.fill" : "cloud.sun.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
                .symbolRenderingMode(.multicolor)
            
            Text("76°")
                .foregroundStyle(.white)
                .font(.system(size: 70, weight: .medium))
        }
    }
}

