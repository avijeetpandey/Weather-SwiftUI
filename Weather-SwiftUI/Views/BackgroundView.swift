//
//  BackgroundView.swift
//  Weather-SwiftUI
//
//  Created by Avijeet on 22/03/24.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isDarkMode: Bool
    
    var body: some View {
        LinearGradient(colors: [isDarkMode ? .black : .blue,
                                isDarkMode ? .gray : Color("lightBlue")],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}
