//
//  WeatherButtonView.swift
//  Weather-SwiftUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct WeatherButtonView: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
         Text(title)
            .frame(width: 200,height: 50)
            .background(backgroundColor)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .semibold, design: .default))
            .clipShape(.rect(cornerRadius: 8))
    }
}

#Preview {
    WeatherButtonView(title: "Change Day time", textColor: .blue, backgroundColor: .white)
}
