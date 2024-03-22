//
//  BackgroundView.swift
//  Weather-SwiftUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct BackgroundView: View {
    var startColor: Color
    var endColor: Color
    
    var body: some View {
        LinearGradient(colors: [startColor,endColor],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}


#Preview {
    BackgroundView(startColor: .blue, endColor: .white)
}
