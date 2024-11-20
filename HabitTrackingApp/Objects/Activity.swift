//
//  Activity.swift
//  HabitTrackingApp
//
//  Created by Sean Dooley on 20/11/2024.
//

import Foundation

struct Activity: Codable, Identifiable {
    var id = UUID()
    let name: String
    let description: String
}
