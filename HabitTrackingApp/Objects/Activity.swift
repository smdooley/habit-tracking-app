//
//  Activity.swift
//  HabitTrackingApp
//
//  Created by Sean Dooley on 20/11/2024.
//

import Foundation

struct Activity: Codable, Identifiable {
    let id: UUID
    let name: String
    let description: String
    let completed: Int
    
    init(name: String, description: String) {
        self.id = UUID()
        self.name = name
        self.description = description
        self.completed = 0
    }
}
