//
//  Day.swift
//  Weather-SwiftUI
//
//  Created by Avijeet on 22/03/24.
//

import Foundation

struct Day: Identifiable {
    let id: String = NSUUID().uuidString
    let name: String
    let imageName: String
    let temperature: Int
}
